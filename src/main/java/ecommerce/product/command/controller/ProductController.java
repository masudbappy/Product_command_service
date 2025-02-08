package ecommerce.product.command.controller;

import ecommerce.product.command.entity.Product;
import ecommerce.product.command.service.ProductCommandService;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/product")
public class ProductController {
    private final ProductCommandService productCommandService;

    public ProductController(ProductCommandService productCommandService) {
        this.productCommandService = productCommandService;
    }

    @PostMapping
    public Product createProduct(@RequestBody Product product) {
        return productCommandService.createProduct(product);
    }

    @PutMapping("/{id}")
    public Product updateProduct(@PathVariable long id, @RequestBody Product product) {
        return productCommandService.updateProduct(id, product);
    }
}
