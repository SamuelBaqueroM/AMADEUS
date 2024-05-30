import { Component, OnInit, Input, Output, EventEmitter } from '@angular/core';
import { Product } from '../models/product';
import { ProductService } from '../product.service';
import { HttpClientModule } from '@angular/common/http'; 
import { FormsModule } from '@angular/forms';


@Component({
  selector: 'app-product-form',
  templateUrl: './product-form.component.html',
  standalone: true,
  imports: [ HttpClientModule, FormsModule],
  styleUrls: ['./product-form.component.css']
})
export class ProductFormComponent implements OnInit {
  @Input() product?: Product;
  @Output() formSubmitted = new EventEmitter<void>();

  constructor(private productService: ProductService) {}

  ngOnInit(): void {}

  onSubmit(): void {
    if (this.product) {
      if (this.product.productId) {
        this.productService.updateProduct(this.product.productId, this.product).subscribe(() => {
          this.formSubmitted.emit();
        });
      } else {
        this.productService.addProduct(this.product).subscribe(() => {
          this.formSubmitted.emit();
        });
      }
    }
  }
}