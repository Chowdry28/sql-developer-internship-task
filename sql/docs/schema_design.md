# Schema Design Documentation

## Purpose
This schema models a simple online store, capturing users, products, orders, and categories.

## Entities & Relationships
- **users**: Customer information (1‑many → orders).
- **products**: Items available for sale.
- **orders**: Transactions referencing a user.
- **order_items**: Line‑items in each order (serves a many‑to‑many role between orders and products).
- **categories**: Product categories (e.g., Books, Electronics).
- **product_categories**: Many‑to‑many linking table between products and categories.

## Keys
- Primary keys: `id` fields, except composite PK in `product_categories`.
- Foreign keys:
  - `orders.user_id → users.id`
  - `order_items.order_id → orders.id`
  - `order_items.product_id → products.id`
  - `product_categories.product_id → products.id`
  - `product_categories.category_id → categories.id`

## Design Justifications
- Separate `order_items` for flexible order detail storage.
- Many-to-many `product_categories` enables multiple categorizations per product.
