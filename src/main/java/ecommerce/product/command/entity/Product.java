package ecommerce.product.command.entity;

import jakarta.persistence.*;
import lombok.*;

@Entity @Table(name = "products")
@NoArgsConstructor @AllArgsConstructor
@Getter @Setter @Builder
@ToString(includeFieldNames = true)
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private String name;
    private int categoryId;
    private int subCategoryId;
    private String description;
}
