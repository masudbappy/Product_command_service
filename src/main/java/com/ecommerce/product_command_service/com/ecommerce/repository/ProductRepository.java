package com.ecommerce.product_command_service.com.ecommerce.repository;

import com.ecommerce.product_command_service.com.ecommerce.entity.Product;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductRepository extends JpaRepository<Product, Long> {

}
