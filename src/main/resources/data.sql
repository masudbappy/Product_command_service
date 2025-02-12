
-- categories table data
INSERT INTO categories (name, created_at, updated_at) VALUES ('electronics', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO categories (name, created_at, updated_at) VALUES ('furniture', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO categories (name, created_at, updated_at) VALUES ('clothing', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO categories (name, created_at, updated_at) VALUES ('books', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO categories (name, created_at, updated_at) VALUES ('toys', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO categories (name, created_at, updated_at) VALUES ('beauty', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO categories (name, created_at, updated_at) VALUES ('groceries', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO categories (name, created_at, updated_at) VALUES ('sports', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO categories (name, created_at, updated_at) VALUES ('automotive', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO categories (name, created_at, updated_at) VALUES ('gardening', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- Subcategories for 'electronics'
INSERT INTO sub_categories (name, category_id, created_at, updated_at) VALUES ('smartphones', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO sub_categories (name, category_id, created_at, updated_at) VALUES ('laptops', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO sub_categories (name, category_id, created_at, updated_at) VALUES ('cameras', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
-- Subcategories for 'furniture'
INSERT INTO sub_categories (name, category_id, created_at, updated_at) VALUES ('sofas', 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO sub_categories (name, category_id, created_at, updated_at) VALUES ('tables', 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO sub_categories (name, category_id, created_at, updated_at) VALUES ('chairs', 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
-- Subcategories for 'clothing'
INSERT INTO sub_categories (name, category_id, created_at, updated_at) VALUES ('men', 3, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO sub_categories (name, category_id, created_at, updated_at) VALUES ('women', 3, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO sub_categories (name, category_id, created_at, updated_at) VALUES ('kids', 3, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
-- Subcategories for 'books'
INSERT INTO sub_categories (name, category_id, created_at, updated_at) VALUES ('fiction', 4, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO sub_categories (name, category_id, created_at, updated_at) VALUES ('non-fiction', 4, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO sub_categories (name, category_id, created_at, updated_at) VALUES ('comics', 4, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
-- Subcategories for 'toys'
INSERT INTO sub_categories (name, category_id, created_at, updated_at) VALUES ('action figures', 5, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO sub_categories (name, category_id, created_at, updated_at) VALUES ('board games', 5, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO sub_categories (name, category_id, created_at, updated_at) VALUES ('building sets', 5, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
-- Subcategories for 'beauty'
INSERT INTO sub_categories (name, category_id, created_at, updated_at) VALUES ('skincare', 6, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO sub_categories (name, category_id, created_at, updated_at) VALUES ('makeup', 6, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO sub_categories (name, category_id, created_at, updated_at) VALUES ('fragrances', 6, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
-- Subcategories for 'groceries'
INSERT INTO sub_categories (name, category_id, created_at, updated_at) VALUES ('vegetables', 7, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO sub_categories (name, category_id, created_at, updated_at) VALUES ('fruits', 7, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO sub_categories (name, category_id, created_at, updated_at) VALUES ('beverages', 7, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
-- Subcategories for 'sports'
INSERT INTO sub_categories (name, category_id, created_at, updated_at) VALUES ('fitness', 8, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO sub_categories (name, category_id, created_at, updated_at) VALUES ('outdoor', 8, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO sub_categories (name, category_id, created_at, updated_at) VALUES ('team sports', 8, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
-- Subcategories for 'automotive'
INSERT INTO sub_categories (name, category_id, created_at, updated_at) VALUES ('car accessories', 9, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO sub_categories (name, category_id, created_at, updated_at) VALUES ('motorcycles', 9, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO sub_categories (name, category_id, created_at, updated_at) VALUES ('tools equipment', 9, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
-- Subcategories for 'gardening'
INSERT INTO sub_categories (name, category_id, created_at, updated_at) VALUES ('plants', 10, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO sub_categories (name, category_id, created_at, updated_at) VALUES ('tools', 10, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO sub_categories (name, category_id, created_at, updated_at) VALUES ('seeds', 10, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- Shop data
INSERT INTO shops (name, description, image_url, banner_url, created_at, updated_at) VALUES
    ('Tech Store', 'A leading shop for all your technology needs', 'http://example.com/tech_store.jpg', 'http://example.com/tech_store_banner.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO shops (name, description, image_url, banner_url, created_at, updated_at) VALUES
    ('Home Furniture', 'Quality furniture for your living space', 'http://example.com/home_furniture.jpg', 'http://example.com/home_furniture_banner.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO shops (name, description, image_url, banner_url, created_at, updated_at) VALUES
    ('Fashion World', 'Trendy clothes for every occasion', 'http://example.com/fashion_world.jpg', 'http://example.com/fashion_world_banner.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO shops (name, description, image_url, banner_url, created_at, updated_at) VALUES
    ('Book Haven', 'A paradise for book lovers', 'http://example.com/book_haven.jpg', 'http://example.com/book_haven_banner.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO shops (name, description, image_url, banner_url, created_at, updated_at) VALUES
    ('Toy Galaxy', 'The best toys from around the universe!', 'http://example.com/toy_galaxy.jpg', 'http://example.com/toy_galaxy_banner.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO shops (name, description, image_url, banner_url, created_at, updated_at) VALUES
    ('Beauty Bay', 'Everything you need to look and feel beautiful', 'http://example.com/beauty_bay.jpg', 'http://example.com/beauty_bay_banner.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO shops (name, description, image_url, banner_url, created_at, updated_at) VALUES
    ('Green Grocer', 'Fresh produce and grocery staples', 'http://example.com/green_grocer.jpg', 'http://example.com/green_grocer_banner.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO shops (name, description, image_url, banner_url, created_at, updated_at) VALUES
    ('Sports Zone', 'Your destination for sports gear and equipment', 'http://example.com/sports_zone.jpg', 'http://example.com/sports_zone_banner.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO shops (name, description, image_url, banner_url, created_at, updated_at) VALUES
    ('Auto Parts Plus', 'Quality parts and tools for your vehicle', 'http://example.com/auto_parts_plus.jpg', 'http://example.com/auto_parts_plus_banner.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO shops (name, description, image_url, banner_url, created_at, updated_at) VALUES
    ('Garden Goods', 'Everything for your garden - seeds, tools, and more', 'http://example.com/garden_goods.jpg', 'http://example.com/garden_goods_banner.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- Tags
INSERT INTO tags (name, created_at, updated_at) VALUES
    ('electronics', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('home appls', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('furniture', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('footwear', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('books', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('toys', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('cosmetics', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('groceries', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('sports equip', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('automotive', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('gardening', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('clothing', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('office sup', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('health prod', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('pet supplies', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('jewelry', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('kitchenware', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('toys & games', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('art supplies', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('cameras', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('instruments', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('outdoor equip', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('travel accs', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('baby products', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('luggage & bags', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('mobile accs', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('home decor', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('stationery', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('video games', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('fitness equip', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- Product 1
INSERT INTO products (name, price, description, average_rating, review_count, status, category_id, sub_category_id, shop_id, created_at, updated_at) VALUES ('Ultra HD TV', 1299.99, 'A stunning Ultra HD TV with crystal clear display and vibrant colors', 4.7, 250, 'ACTIVE', 1, 1, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO customizable_properties (param_name, param_value, product_id, created_at, updated_at) VALUES ('Screen Size', '65 inch', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO variants (name, quantity, price, description, product_id, created_at, updated_at) VALUES ('65 inch - Black', 10, 1299.99, 'Model with black frame', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), ('65 inch - Silver', 5, 1349.99, 'Model with silver frame', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO product_tags (product_id, tag_id, created_at, updated_at) VALUES (1, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), (1, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
-- Product 2
INSERT INTO products (name, price, description, average_rating, review_count, status, category_id, sub_category_id, shop_id, created_at, updated_at) VALUES ('Leather Sofa', 799.99, 'Luxury leather sofa with modern design and superior comfort', 4.8, 150, 'ACTIVE', 2, 6, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO customizable_properties (param_name, param_value, product_id, created_at, updated_at) VALUES ('Color', 'Brown', 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO variants (name, quantity, price, description, product_id, created_at, updated_at) VALUES ('3 seater', 15, 799.99, 'Three-seater sofa', 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), ('2-seater', 10, 699.99, 'Two-seater sofa', 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO product_tags (product_id, tag_id, created_at, updated_at) VALUES (2, 3, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
-- Product 3
INSERT INTO products (name, price, description, average_rating, review_count, status, category_id, sub_category_id, shop_id, created_at, updated_at) VALUES ('Formal Shirt', 49.99, 'Cotton formal shirt with a slim fit design', 4.4, 85, 'ACTIVE', 3, 11, 3, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO customizable_properties (param_name, param_value, product_id, created_at, updated_at) VALUES ('Size', 'Medium', 3, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO variants (name, quantity, price, description, product_id, created_at, updated_at) VALUES ('White - Slim Fit', 20, 49.99, 'Slim fit white shirt', 3, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), ('Blue - Regular Fit', 25, 44.99, 'Regular fit blue shirt', 3, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO product_tags (product_id, tag_id, created_at, updated_at) VALUES (3, 4, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), (3, 5, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
-- Product 4
INSERT INTO products (name, price, description, average_rating, review_count, status, category_id, sub_category_id, shop_id, created_at, updated_at) VALUES ('Mystery Novel', 14.99, 'An exciting mystery novel full of suspense and intrigue', 4.9, 200, 'ACTIVE', 4, 16, 4, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO customizable_properties (param_name, param_value, product_id, created_at, updated_at) VALUES ('Edition', 'Hardcover', 4, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO variants (name, quantity, price, description, product_id, created_at, updated_at) VALUES ('Hardcover', 100, 14.99, 'Hardcover edition', 4, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), ('Paperback', 120, 9.99, 'Paperback edition', 4, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO product_tags (product_id, tag_id, created_at, updated_at) VALUES (4, 6, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
-- Product 5
INSERT INTO products (name, price, description, average_rating, review_count, status, category_id, sub_category_id, shop_id, created_at, updated_at) VALUES ('Building Blocks', 29.99, 'Colorful building blocks to spark creativity', 4.6, 180, 'ACTIVE', 5, 23, 5, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO customizable_properties (param_name, param_value, product_id, created_at, updated_at) VALUES ('Block Size', 'Standard', 5, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO variants (name, quantity, price, description, product_id, created_at, updated_at) VALUES ('100 Piece Set', 50, 29.99, '100 piece set of blocks', 5, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), ('200 Piece Set', 30, 49.99, '200 piece set of blocks', 5, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO product_tags (product_id, tag_id, created_at, updated_at) VALUES (5, 7, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
-- Product 6
INSERT INTO products (name, price, description, average_rating, review_count, status, category_id, sub_category_id, shop_id, created_at, updated_at) VALUES ('Skincare Serum', 59.99, 'Revitalizing skincare serum for a radiant complexion', 4.5, 90, 'ACTIVE', 6, 26, 6, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO customizable_properties (param_name, param_value, product_id, created_at, updated_at) VALUES ('Volume', '30 ml', 6, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO variants (name, quantity, price, description, product_id, created_at, updated_at) VALUES ('30 ml', 40, 59.99, 'Standard bottle size', 6, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), ('50 ml', 20, 79.99, 'Larger bottle size', 6, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO product_tags (product_id, tag_id, created_at, updated_at) VALUES (6, 8, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
-- Product 7
INSERT INTO products (name, price, description, average_rating, review_count, status, category_id, sub_category_id, shop_id, created_at, updated_at) VALUES ('Noise Cancelling Headphones', 199.99, 'Top-of-the-line noise cancelling headphones for immersive audio', 4.8, 160, 'ACTIVE', 7, 25, 7, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO customizable_properties (param_name, param_value, product_id, created_at, updated_at) VALUES ('Color', 'Black', 7, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO variants (name, quantity, price, description, product_id, created_at, updated_at) VALUES ('Black', 30, 199.99, 'Black color model', 7, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), ('White', 15, 199.99, 'White color model', 7, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO product_tags (product_id, tag_id, created_at, updated_at) VALUES (7, 9, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
-- Product 8
INSERT INTO products (name, price, description, average_rating, review_count, status, category_id, sub_category_id, shop_id, created_at, updated_at) VALUES ('Yoga Mat', 35.99, 'Eco-friendly yoga mat with superior grip', 4.7, 110, 'ACTIVE', 8, 21, 8, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO customizable_properties (param_name, param_value, product_id, created_at, updated_at) VALUES ('Thickness', '6mm', 8, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO variants (name, quantity, price, description, product_id, created_at, updated_at) VALUES ('Eco Green', 40, 35.99, 'Eco green color', 8, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), ('Deep Blue', 20, 35.99, 'Deep blue color', 8, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO product_tags (product_id, tag_id, created_at, updated_at) VALUES (8, 10, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
-- Product 9
INSERT INTO products (name, price, description, average_rating, review_count, status, category_id, sub_category_id, shop_id, created_at, updated_at) VALUES ('Smartphone', 999.99, 'Latest generation smartphone with cutting-edge features', 4.9, 300, 'ACTIVE', 9, 27, 9, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO customizable_properties (param_name, param_value, product_id, created_at, updated_at) VALUES ('Storage', '128GB', 9, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO variants (name, quantity, price, description, product_id, created_at, updated_at) VALUES ('128GB - Black', 20, 999.99, 'Black color', 9, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), ('256GB - Black', 10, 1099.99, '256GB storage', 9, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO product_tags (product_id, tag_id, created_at, updated_at) VALUES (9, 11, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), (9, 12, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
-- Product 10
INSERT INTO products (name, price, description, average_rating, review_count, status, category_id, sub_category_id, shop_id, created_at, updated_at) VALUES ('Electric Kettle', 49.99, 'Fast boiling electric kettle with auto shut-off feature', 4.5, 95, 'ACTIVE', 10, 29, 10, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO customizable_properties (param_name, param_value, product_id, created_at, updated_at) VALUES ('Capacity', '1.7L', 10, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO variants (name, quantity, price, description, product_id, created_at, updated_at) VALUES ('Stainless Steel', 30, 49.99, 'Durable stainless steel body', 10, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), ('Glass Body', 20, 54.99, 'Elegant glass design', 10, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO product_tags (product_id, tag_id, created_at, updated_at) VALUES (10, 13, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), (10, 14, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
-- Product 11
INSERT INTO products (name, price, description, average_rating, review_count, status, category_id, sub_category_id, shop_id, created_at, updated_at) VALUES ('Wireless Mouse', 25.99, 'Ergonomic wireless mouse with long battery life', 4.7, 88, 'ACTIVE', 1, 25, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO customizable_properties (param_name, param_value, product_id, created_at, updated_at) VALUES ('Color', 'Silver', 11, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO variants (name, quantity, price, description, product_id, created_at, updated_at) VALUES ('Silver', 50, 25.99, 'Ergonomic design', 11, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), ('Black', 45, 27.99, 'Classic black', 11, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO product_tags (product_id, tag_id, created_at, updated_at) VALUES (11, 15, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
-- Product 12
INSERT INTO products (name, price, description, average_rating, review_count, status, category_id, sub_category_id, shop_id, created_at, updated_at) VALUES ('Bluetooth Speaker', 59.99, 'Portable Bluetooth speaker with excellent sound quality', 4.8, 150, 'ACTIVE', 2, 20, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO customizable_properties (param_name, param_value, product_id, created_at, updated_at) VALUES ('Battery Life', '12 hours', 12, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO variants (name, quantity, price, description, product_id, created_at, updated_at) VALUES ('Black', 60, 59.99, 'Compact design', 12, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), ('Blue', 60, 59.99, 'Water-resistant', 12, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO product_tags (product_id, tag_id, created_at, updated_at) VALUES (12, 16, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
-- Product 13
INSERT INTO products (name, price, description, average_rating, review_count, status, category_id, sub_category_id, shop_id, created_at, updated_at) VALUES ('Electric Toothbrush', 99.99, 'Smart electric toothbrush with pressure sensor', 4.9, 95, 'ACTIVE', 3, 28, 3, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO customizable_properties (param_name, param_value, product_id, created_at, updated_at) VALUES ('Modes', '3 Modes', 13, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO variants (name, quantity, price, description, product_id, created_at, updated_at) VALUES ('Standard', 25, 99.99, 'Standard model', 13, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), ('Advanced', 15, 129.99, 'With extra features', 13, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO product_tags (product_id, tag_id, created_at, updated_at) VALUES (13, 17, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
-- Product 14
INSERT INTO products (name, price, description, average_rating, review_count, status, category_id, sub_category_id, shop_id, created_at, updated_at) VALUES ('Gaming Keyboard', 79.99, 'Mechanical gaming keyboard with RGB lighting', 4.5, 200, 'ACTIVE', 4, 11, 4, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO customizable_properties (param_name, param_value, product_id, created_at, updated_at) VALUES ('Switch Type', 'Mechanical', 14, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO variants (name, quantity, price, description, product_id, created_at, updated_at) VALUES ('RGB', 35, 79.99, 'RGB lighting', 14, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), ('Red Switch', 40, 89.99, 'Red switch type', 14, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO product_tags (product_id, tag_id, created_at, updated_at) VALUES (14, 18, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
-- Product 15
INSERT INTO products (name, price, description, average_rating, review_count, status, category_id, sub_category_id, shop_id, created_at, updated_at) VALUES ('Hiking Backpack', 120.00, 'Durable hiking backpack with ample storage space', 4.6, 60, 'ACTIVE', 5, 19, 5, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO customizable_properties (param_name, param_value, product_id, created_at, updated_at) VALUES ('Capacity', '50L', 15, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO variants (name, quantity, price, description, product_id, created_at, updated_at) VALUES ('Black', 50, 120.00, 'Waterproof material', 15, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), ('Green', 30, 125.00, 'Eco-friendly fabric', 15, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO product_tags (product_id, tag_id, created_at, updated_at) VALUES (15, 19, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
-- Product 16
INSERT INTO products (name, price, description, average_rating, review_count, status, category_id, sub_category_id, shop_id, created_at, updated_at) VALUES ('Blender', 89.99, 'High-performance blender for all your blending needs', 4.7, 78, 'ACTIVE', 6, 15, 6, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO customizable_properties (param_name, param_value, product_id, created_at, updated_at) VALUES ('Power', '1000W', 16, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO variants (name, quantity, price, description, product_id, created_at, updated_at) VALUES ('Basic', 40, 89.99, 'Basic version', 16, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), ('Deluxe', 25, 109.99, 'Includes extra cups', 16, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO product_tags (product_id, tag_id, created_at, updated_at) VALUES (16, 20, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
-- Product 17
INSERT INTO products (name, price, description, average_rating, review_count, status, category_id, sub_category_id, shop_id, created_at, updated_at) VALUES ('Desk Lamp', 39.99, 'LED desk lamp with adjustable brightness', 4.5, 44, 'ACTIVE', 7, 26, 7, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO customizable_properties (param_name, param_value, product_id, created_at, updated_at) VALUES ('Light Type', 'LED', 17, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO variants (name, quantity, price, description, product_id, created_at, updated_at) VALUES ('Black', 60, 39.99, 'Touch-sensitive control', 17, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), ('White', 45, 39.99, 'White color version', 17, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO product_tags (product_id, tag_id, created_at, updated_at) VALUES (17, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
-- Product 18
INSERT INTO products (name, price, description, average_rating, review_count, status, category_id, sub_category_id, shop_id, created_at, updated_at) VALUES ('Running Shoes', 69.99, 'Lightweight running shoes for all terrains', 4.6, 180, 'ACTIVE', 8, 14, 8, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO customizable_properties (param_name, param_value, product_id, created_at, updated_at) VALUES ('Size', '10 US', 18, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO variants (name, quantity, price, description, product_id, created_at, updated_at) VALUES ('Black/White', 55, 69.99, 'Two-tone style', 18, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), ('Blue/Red', 33, 69.99, 'Bold colors', 18, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO product_tags (product_id, tag_id, created_at, updated_at) VALUES (18, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
-- Product 19
INSERT INTO products (name, price, description, average_rating, review_count, status, category_id, sub_category_id, shop_id, created_at, updated_at) VALUES ('Cookware Set', 149.99, 'Non-stick cookware set with all essential pieces', 4.8, 112, 'ACTIVE', 9, 12, 9, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO customizable_properties (param_name, param_value, product_id, created_at, updated_at) VALUES ('Material', 'Aluminium', 19, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO variants (name, quantity, price, description, product_id, created_at, updated_at) VALUES ('8-Piece Set', 40, 149.99, 'Standard set', 19, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), ('12-Piece Gourmet Set', 20, 199.99, 'Gourmet set with extras', 19, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO product_tags (product_id, tag_id, created_at, updated_at) VALUES (19, 3, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
-- Product 20
INSERT INTO products (name, price, description, average_rating, review_count, status, category_id, sub_category_id, shop_id, created_at, updated_at) VALUES ('Digital Camera', 299.99, 'Compact digital camera with 20MP sensor', 4.9, 79, 'ACTIVE', 10, 30, 10, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO customizable_properties (param_name, param_value, product_id, created_at, updated_at) VALUES ('Resolution', '20MP', 20, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO variants (name, quantity, price, description, product_id, created_at, updated_at) VALUES ('Standard Zoom', 15, 299.99, 'Standard zoom lens', 20, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), ('Wide Angle Lens', 10, 349.99, 'Includes wide angle lens', 20, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO product_tags (product_id, tag_id, created_at, updated_at) VALUES (20, 4, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
-- Product 21
INSERT INTO products (name, price, description, average_rating, review_count, status, category_id, sub_category_id, shop_id, created_at, updated_at) VALUES ('E-reader', 129.99, 'E-reader with adjustable front light', 4.8, 190, 'ACTIVE', 1, 22, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO customizable_properties (param_name, param_value, product_id, created_at, updated_at) VALUES ('Storage', '8GB', 21, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO variants (name, quantity, price, description, product_id, created_at, updated_at) VALUES ('Black', 25, 129.99, 'Basic black', 21, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), ('Twilight Blue', 20, 139.99, 'Twilight blue color', 21, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO product_tags (product_id, tag_id, created_at, updated_at) VALUES (21, 5, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
-- Product 22
INSERT INTO products (name, price, description, average_rating, review_count, status, category_id, sub_category_id, shop_id, created_at, updated_at) VALUES ('Laptop Stand', 49.99, 'Adjustable laptop stand for improved posture', 4.5, 55, 'ACTIVE', 2, 13, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO customizable_properties (param_name, param_value, product_id, created_at, updated_at) VALUES ('Material', 'Aluminum', 22, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO variants (name, quantity, price, description, product_id, created_at, updated_at) VALUES ('Silver', 40, 49.99, 'Durable aluminum', 22, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), ('Black', 20, 54.99, 'Matte black finish', 22, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO product_tags (product_id, tag_id, created_at, updated_at) VALUES (22, 6, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
-- Product 23
INSERT INTO products (name, price, description, average_rating, review_count, status, category_id, sub_category_id, shop_id, created_at, updated_at) VALUES ('Smart Thermostat', 199.99, 'Smart thermostat for efficient heating and cooling', 4.8, 130, 'ACTIVE', 3, 17, 3, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO customizable_properties (param_name, param_value, product_id, created_at, updated_at) VALUES ('Connectivity', 'WiFi', 23, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO variants (name, quantity, price, description, product_id, created_at, updated_at) VALUES ('White', 30, 199.99, 'Standard model', 23, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), ('Black', 15, 209.99, 'Black edition', 23, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO product_tags (product_id, tag_id, created_at, updated_at) VALUES (23, 7, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
-- Product 24
INSERT INTO products (name, price, description, average_rating, review_count, status, category_id, sub_category_id, shop_id, created_at, updated_at) VALUES ('Action Camera', 250.00, 'Rugged action camera with waterproof casing', 4.9, 100, 'ACTIVE', 4, 29, 4, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO customizable_properties (param_name, param_value, product_id, created_at, updated_at) VALUES ('Resolution', '4K', 24, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO variants (name, quantity, price, description, product_id, created_at, updated_at) VALUES ('Standard', 10, 250.00, '4K recording', 24, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), ('With Accessories', 8, 299.99, 'Includes mounting kit', 24, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO product_tags (product_id, tag_id, created_at, updated_at) VALUES (24, 8, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
-- Product 25
INSERT INTO products (name, price, description, average_rating, review_count, status, category_id, sub_category_id, shop_id, created_at, updated_at) VALUES ('Organic Face Cream', 24.99, 'Natural and organic moisturizing face cream', 4.5, 72, 'ACTIVE', 5, 20, 5, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO customizable_properties (param_name, param_value, product_id, created_at, updated_at) VALUES ('Volume', '50ml', 25, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO variants (name, quantity, price, description, product_id, created_at, updated_at) VALUES ('50ml Jar', 40, 24.99, 'Standard jar', 25, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), ('100ml Jar', 20, 45.00, 'Larger size', 25, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO product_tags (product_id, tag_id, created_at, updated_at) VALUES (25, 9, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
-- Product 26
INSERT INTO products (name, price, description, average_rating, review_count, status, category_id, sub_category_id, shop_id, created_at, updated_at) VALUES ('Wireless Charger', 29.99, 'Fast wireless charger compatible with most devices', 4.8, 150, 'ACTIVE', 6, 13, 6, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO customizable_properties (param_name, param_value, product_id, created_at, updated_at) VALUES ('Power', '10W', 26, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO variants (name, quantity, price, description, product_id, created_at, updated_at) VALUES ('White', 70, 29.99, 'Compact design', 26, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), ('Black', 60, 29.99, 'Matte black', 26, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO product_tags (product_id, tag_id, created_at, updated_at) VALUES (26, 10, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
-- Product 27
INSERT INTO products (name, price, description, average_rating, review_count, status, category_id, sub_category_id, shop_id, created_at, updated_at) VALUES ('Portable Power Bank', 49.99, 'High capacity portable power bank with dual USB ports', 4.9, 210, 'ACTIVE', 7, 16, 7, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO customizable_properties (param_name, param_value, product_id, created_at, updated_at) VALUES ('Capacity', '20000mAh', 27, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO variants (name, quantity, price, description, product_id, created_at, updated_at) VALUES ('Black', 70, 49.99, 'High capacity', 27, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), ('White', 50, 49.99, 'Dual port', 27, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO product_tags (product_id, tag_id, created_at, updated_at) VALUES (27, 11, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
-- Product 28
INSERT INTO products (name, price, description, average_rating, review_count, status, category_id, sub_category_id, shop_id, created_at, updated_at) VALUES ('Smart Bluetooth Speaker', 129.99, 'Smart speaker with virtual assistant integration', 4.6, 95, 'ACTIVE', 8, 23, 8, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO customizable_properties (param_name, param_value, product_id, created_at, updated_at) VALUES ('Integration', 'Alexa', 28, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO variants (name, quantity, price, description, product_id, created_at, updated_at) VALUES ('Standard', 30, 129.99, 'With Alexa', 28, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), ('Google Assistant', 20, 129.99, 'With Google Assistant', 28, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO product_tags (product_id, tag_id, created_at, updated_at) VALUES (28, 12, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
-- Product 29
INSERT INTO products (name, price, description, average_rating, review_count, status, category_id, sub_category_id, shop_id, created_at, updated_at) VALUES ('Laptop Sleeve', 29.99, 'Protective laptop sleeve with water-resistant fabric', 4.5, 80, 'ACTIVE', 9, 12, 9, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO customizable_properties (param_name, param_value, product_id, created_at, updated_at) VALUES ('Size', '15 inch', 29, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO variants (name, quantity, price, description, product_id, created_at, updated_at) VALUES ('Blue', 55, 29.99, '15 inch size', 29, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), ('Gray', 50, 29.99, '15 inch size', 29, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO product_tags (product_id, tag_id, created_at, updated_at) VALUES (29, 13, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
-- Product 30
INSERT INTO products (name, price, description, average_rating, review_count, status, category_id, sub_category_id, shop_id, created_at, updated_at) VALUES ('Smart Watch', 229.99, 'Stylish smart watch with comprehensive health tracking', 4.8, 220, 'ACTIVE', 10, 30, 10, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO customizable_properties (param_name, param_value, product_id, created_at, updated_at) VALUES ('Connectivity', 'Bluetooth', 30, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO variants (name, quantity, price, description, product_id, created_at, updated_at) VALUES ('Black Strap', 40, 229.99, 'Black strap version', 30, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), ('Metal Band', 20, 279.99, 'With metal band', 30, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO product_tags (product_id, tag_id, created_at, updated_at) VALUES (30, 14, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);