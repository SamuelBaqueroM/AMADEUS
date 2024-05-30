public class Product {
    public string ProductId { get; set; }
    public required string ProductName { get; set; }
    public string? ProductDescription { get; set; }
    public required decimal Price { get; set; }
    public required int QuantityInStock { get; set; }
    public string? Category { get; set; }
    public string? SupplierName { get; set; }
    public DateTime DateAdded { get; set; }
    public DateTime ExpirationDate { get; set; }
}