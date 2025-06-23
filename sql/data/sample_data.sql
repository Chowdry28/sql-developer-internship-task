USE online_store;

INSERT INTO users (username, email) VALUES
  ('alice', 'alice@example.com'),
  ('bob', 'bob@example.com');

INSERT INTO categories (category_name) VALUES
  ('Books'), ('Electronics'), ('Clothing');

INSERT INTO products (name, description, price, stock_quantity) VALUES
  ('Learn SQL', 'Introductory SQL book', 29.99, 100),
  ('Wireless Mouse', 'Bluetooth mouse', 19.99, 50);

INSERT INTO product_categories (product_id, category_id) VALUES
  (1, 1), (2, 2);

INSERT INTO orders (user_id, total_amount) VALUES
  (1, 49.98);

INSERT INTO order_items (order_id, product_id, quantity, unit_price) VALUES
  (1, 1, 1, 29.99),
  (1, 2, 1, 19.99);
