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

/**
 package ecommerce.product.command.entity;

 import jakarta.persistence.*;
 import jakarta.validation.constraints.*;
 import lombok.*;
 import java.util.List;

 @Entity @Getter @Setter
 @NoArgsConstructor @AllArgsConstructor @Builder
 @Table(
 name = "products",
 indexes = {
 @Index(name = "idx_product_id", columnList = "id"),
 @Index(name = "idx_product_category_subcategory", columnList = "category_id, sub_category_id"),
 @Index(name = "idx_product_shop", columnList = "shop_id")
 }
 )
 public class Product extends BaseEntity{
 @NotNull
 @ManyToOne
 @JoinColumn(name = "category_id")
 private Category category;

 @NotNull
 @ManyToOne
 @JoinColumn(name = "sub_category_id")
 private SubCategory subCategory;

 @NotBlank
 @Size(max = 255)
 private String name;

 @ManyToMany(cascade = {CascadeType.MERGE, CascadeType.PERSIST})
 @JoinTable(
 name = "product_tags",
 joinColumns = @JoinColumn(name = "product_id"),
 inverseJoinColumns = @JoinColumn(name = "tag_id")
 )
 private List<Tag> tags;

 @OneToMany(mappedBy = "product", cascade = CascadeType.ALL)
 private List<Variant> variants;

 @ManyToOne
 @JoinColumn(name = "shop_id")
 private Shop shop;

 @Lob
 private String description;

 @OneToMany(mappedBy = "product", cascade = CascadeType.ALL)
 private List<CustomizableProperty> customizableProperties;

 @Min(0)
 @Max(5)
 private Double averageRating;

 @Min(0)
 private Integer reviewCount;
 }
 */
