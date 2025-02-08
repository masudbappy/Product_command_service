package ecommerce.product.command.events.producers;

import com.fasterxml.jackson.databind.ObjectMapper;
import ecommerce.product.command.dto.ProductEvent;
import ecommerce.product.command.entity.Product;
import ecommerce.product.command.enums.EventType;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.kafka.core.KafkaTemplate;
import org.springframework.stereotype.Component;

@Slf4j
@Component
public class ProductUpdateEventProducer extends AbstractProducer<String, Object, Product> {
    private final ObjectMapper objectMapper;

    @Value("${spring.kafka.topics.product}")
    private String topic;

    protected ProductUpdateEventProducer(KafkaTemplate<String, Object> kafkaTemplate, ObjectMapper objectMapper) {
        super(kafkaTemplate);
        this.objectMapper = objectMapper;
    }

    @Override
    public String getKey(Product product) {
        return "PRODUCT-UPD-" + product.getId();
    }

    @Override
    public Object getValue(Product product) throws Exception {
        return objectMapper.writeValueAsString(new ProductEvent(EventType.UPDATE_PRODUCT, product));
    }

    @Override
    public String getTopic() {
        return topic;
    }
}
