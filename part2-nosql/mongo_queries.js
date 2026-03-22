// OP1:
db.products.insertMany([
  {
    name: "Samsung Galaxy S23",
    category: "Electronics",
    price: 75000,
    brand: "Samsung",
    specs: { ram: "8GB", storage: "256GB", battery: "3900mAh" },
    warranty_years: 1
  },
  {
    name: "Running Shoes",
    category: "Clothing",
    price: 3000,
    brand: "Adidas",
    sizes: [7,8,9,10],
    material: "Mesh",
    colors: ["Black","White"]
  },
  {
    name: "Organic Eggs",
    category: "Groceries",
    price: 120,
    brand: "Farm Fresh",
    expiry_date: new Date("2024-12-15"),
    quantity: "12 pieces",
    is_organic: true
  }
]);

// OP2:
db.products.find({ category: "Electronics", price: { $gt: 20000 } });

// OP3:
db.products.find({
  category: "Groceries",
  expiry_date: { $lt: new Date("2025-01-01") }
});

// OP4:
db.products.updateOne(
  { name: "Samsung Galaxy S23" },
  { $set: { discount_percent: 15 } }
);

// OP5:
db.products.createIndex({ category: 1 });

// This index improves query performance by allowing faster search on category field
