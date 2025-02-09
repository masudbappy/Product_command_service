package ecommerce.product.command.events.producers;

import lombok.extern.slf4j.Slf4j;
import org.apache.kafka.clients.producer.ProducerRecord;
import org.apache.kafka.common.header.Header;
import org.apache.kafka.common.header.internals.RecordHeader;
import org.springframework.kafka.core.KafkaTemplate;
import org.springframework.kafka.support.SendResult;

import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.CompletableFuture;
import java.util.function.Consumer;

@Slf4j
public abstract class AbstractProducer<K, V, O> implements EventProducer<K, V, O> {

    private final KafkaTemplate<K, V> kafkaTemplate;

    protected AbstractProducer(KafkaTemplate<K, V> kafkaTemplate) {
        this.kafkaTemplate = kafkaTemplate;
    }

    public CompletableFuture<SendResult<K, V>> send(O object, Consumer<SendResult<K, V>> onSuccess,
                                                    Consumer<Throwable> onFailure) {
        V value = null;
        try {
            value = getValue(object);
        } catch (Exception ignored) {
            log.error("Error processing value conversion!");
        }

        ProducerRecord<K, V> producerRecord = buildProducerRecord(object, value);
        return kafkaTemplate.send(producerRecord).whenComplete((result, exception) -> {
            if (exception != null) {
                onFailure.accept(exception);
            } else {
                onSuccess.accept(result);
            }
        });
    }

    public ProducerRecord<K, V> buildProducerRecord(O object, V value) {
        List<Header> recordHeaders = new ArrayList<>();

        String traceId =  UUID.randomUUID().toString().substring(0, 5);
        String spanId = UUID.randomUUID().toString().substring(0, 5);
        recordHeaders.add(new RecordHeader("trace-id", traceId.getBytes(StandardCharsets.UTF_8)));
        recordHeaders.add(new RecordHeader("span-id", spanId.getBytes(StandardCharsets.UTF_8)));

        String instanceId = UUID.randomUUID().toString().substring(0, 5);
        recordHeaders.add(new RecordHeader("event-source", "product-command-service".getBytes()));
        recordHeaders.add(new RecordHeader("event-source-instance-id", instanceId.getBytes(StandardCharsets.UTF_8)));

        return new ProducerRecord<>(getTopic(), null, getKey(object), value, recordHeaders);
    }

}
