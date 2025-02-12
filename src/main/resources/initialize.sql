DROP TABLE IF EXISTS variants CASCADE;
DROP TABLE IF EXISTS product_tags CASCADE;
DROP TABLE IF EXISTS customizable_property CASCADE;
DROP TABLE IF EXISTS products CASCADE;
DROP TABLE IF EXISTS shop CASCADE;
DROP TABLE IF EXISTS sub_category CASCADE;
DROP TABLE IF EXISTS category CASCADE;
DROP TABLE IF EXISTS tags CASCADE;
DROP TYPE IF EXISTS product_status;

-----------------------------------------------------------------
-- Category table
CREATE TABLE category (
                          id SERIAL PRIMARY KEY,
                          name VARCHAR(255) NOT NULL UNIQUE CHECK(name = lower(name) AND length(name) >= 3),
                          created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                          updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE INDEX idx_category_name ON category(id);
CREATE INDEX idx_category_name2 ON category(id);
CREATE INDEX idx_category_name3 ON category(id);
CREATE INDEX idx_category_name4 ON category(id);

INSERT INTO category(name) VALUES ('test');

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
CREATE INDEX idx_sub_category_name_1 ON sub_category(name);

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
CREATE TABLE variants(
                         id BIGSERIAL PRIMARY KEY,
                         name VARCHAR(30) CHECK(length(name) >=2),
                         quantity INTEGER DEFAULT 0 CHECK(quantity >= 0),
                         price DOUBLE PRECISION NOT NULL CHECK(price >= 0),

    -- Foreign key
                         product_id BIGINT REFERENCES products(id)
);
CREATE INDEX "idx_variant_id" ON variants USING HASH(id);
CREATE INDEX "idx_variant_product_id" ON variants(product_id);

-----------------------------------------------------------------
-- Customizable property table
CREATE TABLE customizable_property(
                                      id BIGSERIAL PRIMARY KEY,
                                      param_name VARCHAR(255) NOT NULL,
                                      param_value VARCHAR(255) NOT NULL,

    -- Foreign key
                                      product_id BIGINT REFERENCES products(id)
);
CREATE INDEX "idx_customizable_property_product_id" ON customizable_property USING HASH(product_id);

-----------------------------------------------------------------
-- Tag + product table
CREATE TABLE product_tag(
                            id BIGSERIAL PRIMARY KEY,

    -- Foreign key
                            product_id BIGINT REFERENCES products(id),
                            tag_id BIGINT REFERENCES tags(id)
);
CREATE INDEX "idx_product_tag_product_id" ON product_tag USING HASH(product_id);
