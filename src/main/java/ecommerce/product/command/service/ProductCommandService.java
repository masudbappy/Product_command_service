package ecommerce.product.command.service;

import ecommerce.product.command.entity.Product;
import ecommerce.product.command.events.producers.EventProducer;
import ecommerce.product.command.events.producers.ProductCreateEventProducer;
import ecommerce.product.command.events.producers.ProductUpdateEventProducer;
import ecommerce.product.command.repository.ProductRepository;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

@Slf4j
@Service
public class ProductCommandService {
    private final ProductRepository productRepository;
    private final EventProducer<String, Object, Product> productCreateProducer;
    private final EventProducer<String, Object, Product> productUpdateProducer;

    public ProductCommandService(ProductRepository productRepository,
                                 ProductCreateEventProducer productCreateEventProducer,
                                 ProductUpdateEventProducer productUpdateEventProducer) {
        this.productRepository = productRepository;
        this.productCreateProducer = productCreateEventProducer;
        this.productUpdateProducer = productUpdateEventProducer;
    }

    public Product createProduct(Product product) {
        Product productEntity = productRepository.save(product);
        productCreateProducer.send(productEntity, successResult -> {
            log.info("Product create event sent successfully. Result: {}", successResult);
        }, exception -> {
            log.error("Error sending event to Kafka topic!", exception);
        }) ;
        return productEntity;
    }

    public Product updateProduct(long id, Product product) {
        Product existingProduct = productRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Product not found"));
        product.setId(existingProduct.getId());
        Product productEntity = productRepository.save(product);
        productUpdateProducer.send(productEntity, successResult -> {
            log.info("Product update event sent successfully. Result: {}", successResult);
        }, exception -> {
            log.error("Error sending event to Kafka topic!", exception);
        });
        return productEntity;
    }
}
