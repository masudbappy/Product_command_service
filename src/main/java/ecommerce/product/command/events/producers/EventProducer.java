package ecommerce.product.command.events.producers;

import org.springframework.kafka.support.SendResult;

import java.util.concurrent.CompletableFuture;
import java.util.function.Consumer;

public interface EventProducer <K, V, O> {
    CompletableFuture<SendResult<K, V>> send(O object, Consumer<SendResult<K, V>> onSuccess, Consumer<Throwable> onFailure);
    K getKey(O object);
    V getValue(O object) throws Exception;
    String getTopic();
}
