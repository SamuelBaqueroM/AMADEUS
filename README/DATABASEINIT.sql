
CREATE LOGIN ProductManagementApp WITH PASSWORD = 'y2fy5FgPL95c1k';
CREATE USER ProductManagementUser FOR LOGIN PoductManagementApp;

USE [ProductManagementDB]
DROP TABLE [dbo].[Products]
CREATE TABLE [dbo].[Products] (
    ProductId VARCHAR(50) PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    ProductDescription TEXT,
    Price DECIMAL(10, 2) NOT NULL,
    QuantityInStock INT NOT NULL,
    Category VARCHAR(50),
    SupplierName VARCHAR(100),
    DateAdded DATE,
    ExpirationDate DATE
);

INSERT INTO [dbo].[Products] (ProductId, ProductName, ProductDescription, Price, QuantityInStock, Category, SupplierName, DateAdded, ExpirationDate) VALUES
('P00001', 'Wireless Mouse', 'Ergonomic wireless mouse with 2.4 GHz connectivity.', 29.99, 150, 'Electronics', 'Tech Supplies Inc.', '2024-05-01', '2026-05-01'),
('P00002', 'Mechanical Keyboard', 'High-quality mechanical keyboard with customizable RGB lighting.', 79.99, 100, 'Electronics', 'Keyboards R Us', '2024-04-15', '2026-04-15'),
('P00003', 'USB-C Hub', 'Multiport USB-C hub with 4 USB 3.0 ports.', 24.99, 200, 'Accessories', 'Tech Gear', '2024-03-20', '2026-03-20'),
('P00004', 'Bluetooth Speaker', 'Portable Bluetooth speaker with excellent sound quality.', 49.99, 120, 'Audio', 'Sound Solutions', '2024-02-10', '2026-02-10'),
('P00005', 'External Hard Drive', '1TB external hard drive with USB 3.0 connectivity.', 59.99, 80, 'Storage', 'Storage Masters', '2024-01-05', '2026-01-05'),
('P00006', 'Smartphone Stand', 'Adjustable smartphone stand for desk use.', 15.99, 300, 'Accessories', 'Gadget World', '2024-05-10', '2026-05-10'),
('P00007', 'Laptop Sleeve', 'Protective laptop sleeve for 15-inch laptops.', 19.99, 250, 'Accessories', 'Laptop Accessories Co.', '2024-05-12', '2026-05-12'),
('P00008', 'Wireless Charger', 'Fast wireless charger compatible with most smartphones.', 29.99, 180, 'Accessories', 'Charging Solutions', '2024-04-25', '2026-04-25'),
('P00009', 'Noise-Canceling Headphones', 'Over-ear noise-canceling headphones with Bluetooth connectivity.', 99.99, 90, 'Audio', 'Headphone Experts', '2024-03-05', '2026-03-05'),
('P00010', 'Smartwatch', 'Feature-rich smartwatch with fitness tracking and notifications.', 199.99, 75, 'Wearables', 'Smart Devices Inc.', '2024-01-20', '2026-01-20'),
('P00011', 'Gaming Mouse', 'High-precision gaming mouse with customizable buttons.', 49.99, 110, 'Gaming', 'Game Gear', '2024-04-01', '2026-04-01'),
('P00012', '4K Monitor', '27-inch 4K monitor with HDR support.', 349.99, 60, 'Displays', 'Monitor World', '2024-02-25', '2026-02-25'),
('P00013', 'Portable SSD', '500GB portable SSD with high-speed data transfer.', 99.99, 130, 'Storage', 'Data Solutions', '2024-03-15', '2026-03-15'),
('P00014', 'Webcam', '1080p webcam with built-in microphone.', 39.99, 140, 'Accessories', 'Cam Tech', '2024-02-05', '2026-02-05'),
('P00015', 'Graphics Tablet', 'Drawing tablet with pressure-sensitive pen.', 89.99, 85, 'Creative', 'Art Supplies Inc.', '2024-01-10', '2026-01-10'),
('P00016', 'VR Headset', 'Virtual reality headset with immersive experience.', 299.99, 50, 'Gaming', 'Virtual Worlds', '2024-05-05', '2026-05-05'),
('P00017', 'Fitness Tracker', 'Fitness tracker with heart rate monitor and sleep tracking.', 79.99, 120, 'Wearables', 'Health Tech', '2024-04-20', '2026-04-20'),
('P00018', 'Tablet Stand', 'Adjustable stand for tablets and e-readers.', 21.99, 200, 'Accessories', 'Tablet Gear', '2024-03-10', '2026-03-10'),
('P00019', 'Smart Light Bulb', 'Wi-Fi enabled smart light bulb with color changing.', 14.99, 300, 'Smart Home', 'Lighting Solutions', '2024-01-25', '2026-01-25'),
('P00020', 'E-Reader', 'Compact e-reader with high-resolution display.', 129.99, 90, 'Reading', 'Read Tech', '2024-02-15', '2026-02-15'),
('P00021', 'Home Security Camera', '1080p security camera with night vision.', 59.99, 150, 'Smart Home', 'Secure Home', '2024-03-05', '2026-03-05'),
('P00022', 'Electric Kettle', 'Electric kettle with temperature control.', 39.99, 180, 'Kitchen', 'Appliance World', '2024-04-10', '2026-04-10'),
('P00023', 'Air Purifier', 'Air purifier with HEPA filter for clean air.', 129.99, 100, 'Home', 'Clean Air Co.', '2024-05-15', '2026-05-15'),
('P00024', 'Smart Thermostat', 'Wi-Fi enabled smart thermostat with energy-saving features.', 199.99, 70, 'Smart Home', 'Climate Control Inc.', '2024-02-20', '2026-02-20'),
('P00025', 'Bluetooth Headset', 'In-ear Bluetooth headset with noise reduction.', 49.99, 140, 'Audio', 'Headset Pros', '2024-01-05', '2026-01-05'),
('P00026', 'Robot Vacuum', 'Automated robot vacuum with smart mapping.', 299.99, 65, 'Home', 'Vacuum Solutions', '2024-04-25', '2026-04-25'),
('P00027', 'Wireless Earbuds', 'True wireless earbuds with charging case.', 79.99, 130, 'Audio', 'Earbuds Inc.', '2024-03-10', '2026-03-10'),
('P00028', 'Gaming Chair', 'Ergonomic gaming chair with adjustable armrests.', 179.99, 40, 'Gaming', 'Gamer Gear', '2024-01-20', '2026-01-20'),
('P00029', 'Action Camera', '4K action camera with waterproof casing.', 99.99, 90, 'Cameras', 'Adventure Tech', '2024-02-10', '2026-02-10'),
('P00030', 'Wireless Keyboard', 'Compact wireless keyboard with rechargeable battery.', 49.99, 110, 'Electronics', 'Keyboard World', '2024-03-30', '2026-03-30'),
('P00031', 'Portable Projector', 'Mini portable projector with HDMI input.', 249.99, 70, 'Displays', 'Projection Solutions', '2024-04-05', '2026-04-05'),
('P00032', 'Smart Doorbell', 'Wi-Fi enabled smart doorbell with video recording.', 149.99, 60, 'Smart Home', 'Home Security Co.', '2024-05-20', '2026-05-20'),
('P00033', 'Digital Photo Frame', 'Wi-Fi digital photo frame with cloud storage.', 99.99, 85, 'Home', 'Photo Tech', '2024-03-25', '2026-03-25'),
('P00034', 'Electric Toothbrush', 'Rechargeable electric toothbrush with multiple modes.', 49.99, 150, 'Personal Care', 'Oral Tech', '2024-01-15', '2026-01-15'),
('P00035', 'Standing Desk', 'Height-adjustable standing desk with motorized lift.', 299.99, 45, 'Furniture', 'Office Solutions', '2024-02-05', '2026-02-05'),
('P00036', 'Smart Plug', 'Wi-Fi smart plug with voice control compatibility.', 24.99, 180, 'Smart Home', 'Smart Living', '2024-03-15', '2026-03-15'),
('P00037', 'Fitness Smart Scale', 'Bluetooth smart scale with body composition analysis.', 59.99, 90, 'Health', 'Fitness Tech', '2024-04-30', '2026-04-30'),
('P00038', 'Portable Power Bank', '10000mAh portable power bank with fast charging.', 29.99, 170, 'Accessories', 'Power Solutions', '2024-05-05', '2026-05-05')

SELECT * FROM [dbo].[Products]
