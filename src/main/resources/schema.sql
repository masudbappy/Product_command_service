DROP TABLE IF EXISTS variants CASCADE;
DROP TABLE IF EXISTS customizable_properties CASCADE;
DROP TABLE IF EXISTS products CASCADE;
DROP TABLE IF EXISTS tags CASCADE;
DROP TABLE IF EXISTS product_tags CASCADE;
DROP TABLE IF EXISTS shops CASCADE;
DROP TABLE IF EXISTS sub_categories CASCADE;
DROP TABLE IF EXISTS categories CASCADE;
DROP TYPE IF EXISTS product_status;

-- category table
CREATE TABLE categories (
                            id BIGSERIAL PRIMARY KEY,
                            created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                            updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                            name VARCHAR(255) UNIQUE NOT NULL check(name = lower(name) AND length(name)>=3)
);
CREATE INDEX idx_category_name ON categories (name);

-- subcategories table
CREATE TABLE sub_categories (
                                id BIGSERIAL PRIMARY KEY,
                                created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                                updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                                name VARCHAR(255) UNIQUE NOT NULL check(name = lower(name) AND length(name) >= 3),
                                category_id BIGINT REFERENCES categories(id)
);
CREATE INDEX idx_sub_categories_name ON sub_categories (name);

-- shop table
CREATE TABLE shops(
                      id BIGSERIAL PRIMARY KEY,
                      created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                      updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                      name VARCHAR(255) UNIQUE NOT NULL check(length(name) >=3),
                      description TEXT check(length(name) <=2000),
                      image_url VARCHAR(2048) check(image_url ~ '^(https?|ftp):\/\/[^\s\/$.?#].[^\s]*$'),
	banner_url VARCHAR(2048) check(image_url ~ '^(https?|ftp):\/\/[^\s\/$.?#].[^\s]*$')
);
CREATE INDEX idx_shops_id on shops (id);

-- Product table
CREATE TYPE product_status as ENUM ('ACTIVE', 'INACTIVE', 'DELETED', 'STOCKOUT', 'DISCONTINUED');

CREATE TABLE products(
                         id BIGSERIAL PRIMARY KEY,
                         created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                         updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                         name VARCHAR(255) NOT NULL check(length(name)>=3),
                         price DOUBLE PRECISION DEFAULT 0 check(price>=0),
                         description TEXT check(length(description)>=10 AND length(description) <=10000),
                         average_rating DOUBLE PRECISION check(average_rating>=0),
                         review_count INTEGER DEFAULT 0 check(review_count>=0),
                         status product_status NOT NULL,
                         category_id BIGINT REFERENCES categories(id),
                         sub_category_id BIGINT REFERENCES sub_categories(id),
                         shop_id BIGINT REFERENCES shops(id)
);
CREATE INDEX idx_product_name on products(name);
CREATE INDEX idx_product_price on products(price);
CREATE INDEX idx_product_shop_id on products(shop_id);
CREATE INDEX idx_product_shop_id_status on products(shop_id, status);

-- Tag table
CREATE TABLE tags (
                      id BIGSERIAL PRIMARY KEY,
                      created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                      updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                      name VARCHAR(15) UNIQUE NOT NULL check(length(name)>=2 AND length(name) <=15)
);
CREATE INDEX idx_tags_name on tags (name);

-- products_tag table
CREATE TABLE product_tags (
                              id BIGSERIAL PRIMARY KEY,
                              created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                              updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                              product_id BIGINT REFERENCES products(id),
                              tag_id BIGINT REFERENCES tags(id)
);

-- CREATE variant table
CREATE TABLE variants (
                          id BIGSERIAL PRIMARY KEY,
                          created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                          updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                          product_id BIGINT REFERENCES products(id),
                          name VARCHAR(30) check(length(name)>=2),
                          description TEXT,
                          quantity INTEGER DEFAULT 0,
                          price DOUBLE PRECISION NOT NULL check(price>=0)
);
CREATE INDEX idx_variant_product on variants(product_id);

-- customizableProperty
CREATE TABLE customizable_properties (
                                         id BIGSERIAL PRIMARY KEY,
                                         created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                                         updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                                         product_id BIGINT REFERENCES products(id),
                                         param_name VARCHAR(255) NOT NULL,
                                         param_value VARCHAR(255) NOT NULL
);
CREATE INDEX idx_customizable_properties_product_id on customizable_properties(product_id);