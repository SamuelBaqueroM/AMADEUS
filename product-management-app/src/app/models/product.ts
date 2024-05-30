export class Product {
    productId: string;
    productName: string;
    productDescription: string;
    price: number;
    quantityInStock: number;
    category: string;
    supplierName: string;
    dateAdded: Date;
    expirationDate: Date;
  
    constructor(
      productId: string,
      productName: string,
      productDescription: string,
      price: number,
      quantityInStock: number,
      category: string,
      supplierName: string,
      dateAdded: Date,
      expirationDate: Date
    ) {
      this.productId = productId;
      this.productName = productName;
      this.productDescription = productDescription;
      this.price = price;
      this.quantityInStock = quantityInStock;
      this.category = category;
      this.supplierName = supplierName;
      this.dateAdded = dateAdded;
      this.expirationDate = expirationDate;
    }
  }