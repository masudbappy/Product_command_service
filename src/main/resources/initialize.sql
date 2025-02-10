DROP TABLE IF EXISTS variant;
DROP TABLE IF EXISTS customizable_property;
DROP TABLE IF EXISTS product_tags;
DROP TABLE IF EXISTS tags;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS shop;
DROP TABLE IF EXISTS sub_category;
DROP TABLE IF EXISTS category;
DROP TYPE product_status;

-----------------------------------------------------------------
-- Category table
CREATE TABLE category (
                          id SERIAL PRIMARY KEY,
                          name VARCHAR(255) NOT NULL UNIQUE CHECK(name = lower(name) AND length(name) >= 3),
                          created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                          updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE INDEX idx_category_name ON category(id);

-----------------------------------------------------------------
-- Sub category table
CREATE TABLE sub_category (
                              id SERIAL PRIMARY KEY,
                              name VARCHAR(255) NOT NULL UNIQUE CHECK(name = lower(name) AND length(name) >= 3),
                              created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                              updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    -- Foreign key references
                              category_id INTEGER REFERENCES category(id) NOT NULL
);
CREATE INDEX idx_sub_category_name ON sub_category(name);

-----------------------------------------------------------------
-- Shop table
CREATE TABLE shop (
                      id BIGSERIAL PRIMARY KEY,
                      name VARCHAR(255) NOT NULL CHECK(length(name) >= 3),
                      description TEXT CHECK (length(description) <= 2000),
                      image_url VARCHAR(2048) CHECK(image_url LIKE 'http%' OR image_url IS NULL),
                      banner_url VARCHAR(2048) CHECK(image_url LIKE 'http%' OR image_url IS NULL),
                      created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                      updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE INDEX idx_shop_id ON shop(id);

-----------------------------------------------------------------
-- Product table
CREATE TYPE product_status AS ENUM ('ACTIVE', 'INACTIVE', 'DELETED', 'STOCKOUT', 'DISCONTINUED');
CREATE TABLE products (
                          id BIGSERIAL PRIMARY KEY,
                          name VARCHAR(255) CHECK(length(name) >= 4 AND length(name) <= 255),
                          price DOUBLE PRECISION CHECK(price >= 0),
                          description TEXT CHECK(length(description) >= 10 AND length(description) <= 10000),
                          average_rating DOUBLE PRECISION CHECK(average_rating >= 0),
                          review_count INTEGER DEFAULT 0 CHECK(review_count >= 0),
                          status product_status NOT NULL DEFAULT 'ACTIVE',

    -- Foreign key references
                          category_id INTEGER REFERENCES category(id) NOT NULL,
                          sub_category_id INTEGER REFERENCES sub_category(id) NOT NULL,
                          shop_id BIGINT REFERENCES shop(id) NOT NULL
);
CREATE INDEX "idx_product_name" ON products(name);
CREATE INDEX "idx_product_price" ON products(price);
CREATE INDEX "idx_product_shop_id" ON products(shop_id);
CREATE INDEX "idx_product_shop_id_and_status" ON products(shop_id, status);

-----------------------------------------------------------------
-- Tag table
CREATE TABLE tags (
                      id SERIAL PRIMARY KEY,
                      name VARCHAR(15) CHECK(length(name) >= 2 AND length(name) <= 15 AND name = lower(name))
);
CREATE INDEX "idx_tags_name" ON tags(name);
CREATE INDEX "idx_tags_id" ON tags(id);

-----------------------------------------------------------------
-- Variant table

-----------------------------------------------------------------
-- Customizable property table

-----------------------------------------------------------------
-- Variant + product table

-----------------------------------------------------------------
-- Tag + product table

-----------------------------------------------------------------
-- Customizable property + product table


