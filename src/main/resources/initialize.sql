DROP TABLE IF EXISTS variants CASCADE;
DROP TABLE IF EXISTS product_tags CASCADE;
DROP TABLE IF EXISTS customizable_properties CASCADE;
DROP TABLE IF EXISTS products CASCADE;
DROP TABLE IF EXISTS shops CASCADE;
DROP TABLE IF EXISTS sub_categories CASCADE;
DROP TABLE IF EXISTS categories CASCADE;
DROP TABLE IF EXISTS tags CASCADE;
DROP TYPE IF EXISTS product_status;

-- Category table
CREATE TABLE categories (
                            id SERIAL PRIMARY KEY,
                            name VARCHAR(255) NOT NULL UNIQUE CHECK(name = lower(name) AND length(name) >= 3),
                            created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                            updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE INDEX idx_categories_name ON categories(name);

-- Sub category table
CREATE TABLE sub_categories (
                                id SERIAL PRIMARY KEY,
                                name VARCHAR(255) NOT NULL UNIQUE CHECK(name = lower(name) AND length(name) >= 3),
                                created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                                updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    -- Foreign key references
                                category_id INTEGER REFERENCES categories(id) NOT NULL
);
CREATE INDEX idx_sub_categories_name_1 ON sub_categories(name);

-- Shop table
CREATE TABLE shops (
                       id BIGSERIAL PRIMARY KEY,
                       name VARCHAR(255) NOT NULL CHECK(length(name) >= 3),
                       description TEXT CHECK (length(description) <= 2000),
                       image_url VARCHAR(2048) CHECK(image_url LIKE 'http%' OR image_url IS NULL),
                       banner_url VARCHAR(2048) CHECK(banner_url LIKE 'http%' OR banner_url IS NULL),
                       created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                       updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE INDEX idx_shops_id ON shops(id);

CREATE TYPE product_status AS ENUM ('ACTIVE', 'INACTIVE', 'DELETED', 'STOCKOUT', 'DISCONTINUED');

CREATE TABLE products (
                          id BIGSERIAL PRIMARY KEY,
                          name VARCHAR(255) CHECK(length(name) >= 4 AND length(name) <= 255),
                          price DOUBLE PRECISION CHECK(price >= 0),
                          description TEXT CHECK(length(description) >= 10 AND length(description) <= 10000),
                          average_rating DOUBLE PRECISION CHECK(average_rating >= 0),
                          review_count INTEGER DEFAULT 0 CHECK(review_count >= 0),
                          status product_status NOT NULL DEFAULT 'ACTIVE',
                          created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                          updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    -- Foreign key references
                          category_id INTEGER REFERENCES categories(id) NOT NULL,
                          sub_category_id INTEGER REFERENCES sub_categories(id) NOT NULL,
                          shop_id BIGINT REFERENCES shops(id) NOT NULL
);
CREATE INDEX "idx_product_name" ON products(name);
CREATE INDEX "idx_product_price" ON products(price);
CREATE INDEX "idx_product_shop_id" ON products(shop_id);
CREATE INDEX "idx_product_shop_id_and_status" ON products(shop_id, status);

-- Tag table
CREATE TABLE tags (
                      id SERIAL PRIMARY KEY,
                      name VARCHAR(15) CHECK(length(name) >= 2 AND length(name) <= 15 AND name = lower(name)),
                      created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                      updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE INDEX "idx_tags_name" ON tags(name);
CREATE INDEX "idx_tags_id" ON tags(id);

-- Variant table
CREATE TABLE variants(
                         id BIGSERIAL PRIMARY KEY,
                         name VARCHAR(30) CHECK(length(name) >=2),
                         quantity INTEGER DEFAULT 0 CHECK(quantity >= 0),
                         price DOUBLE PRECISION NOT NULL CHECK(price >= 0),
                         created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                         updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    -- Foreign key
                         product_id BIGINT REFERENCES products(id)
);
CREATE INDEX "idx_variant_id" ON variants USING HASH(id);
CREATE INDEX "idx_variant_product_id" ON variants(product_id);

-- Customizable property table
CREATE TABLE customizable_properties(
                                        id BIGSERIAL PRIMARY KEY,
                                        param_name VARCHAR(255) NOT NULL,
                                        param_value VARCHAR(255) NOT NULL,
                                        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                                        updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    -- Foreign key
                                        product_id BIGINT REFERENCES products(id)
);
CREATE INDEX "idx_customizable_properties_product_id" ON customizable_properties USING HASH(product_id);

-- Tag + product table
CREATE TABLE product_tags(
                             id BIGSERIAL PRIMARY KEY,
                             created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                             updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    -- Foreign key
                             product_id BIGINT REFERENCES products(id),
                             tag_id BIGINT REFERENCES tags(id)
);
CREATE INDEX "idx_product_tag_product_id" ON product_tags USING HASH(product_id);

-- xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx TRIGGERS xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

-- Function to update the updated_at column
CREATE OR REPLACE FUNCTION update_updated_at_column()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = CURRENT_TIMESTAMP;
RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Create triggers for each table that requires automatic updated_at updates
CREATE TRIGGER update_categories_updated_at BEFORE UPDATE ON categories
    FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

CREATE TRIGGER update_sub_categories_updated_at BEFORE UPDATE ON sub_categories
    FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

CREATE TRIGGER update_shops_updated_at BEFORE UPDATE ON shops
    FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

CREATE TRIGGER update_products_updated_at BEFORE UPDATE ON products
    FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

CREATE TRIGGER update_tags_updated_at BEFORE UPDATE ON tags
    FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

CREATE TRIGGER update_variants_updated_at BEFORE UPDATE ON variants
    FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

CREATE TRIGGER update_customizable_properties_updated_at BEFORE UPDATE ON customizable_properties
    FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

CREATE TRIGGER update_product_tags_updated_at BEFORE UPDATE ON product_tags
    FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();