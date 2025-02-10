package ecommerce.product.command.entity;

import ecommerce.product.command.enums.ProductStatus;
import jakarta.persistence.*;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.*;

import java.util.List;

@Entity
@Table(indexes = {@Index(name = "idx_product_id", columnList = "id"),
        @Index(name = "idx_name", columnList = "name"),
        @Index(name = "idx_price", columnList = "price"),
        @Index(name = "idx_Product_shop_id", columnList = "shop_id"),
        @Index(name = "idx_shop_id_status", columnList = "shop_id, status")},
        name = "products")
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Builder
public class Product extends BaseEntity {

    @Size(max = 255, min = 4)
    @NotBlank
    private String name;

    @NotNull
    @ManyToOne
    @JoinColumn(name = "category_id")
    private Category category;

    @Min(0)
    private double price;

    @ManyToOne
    @JoinColumn(name = "sub_category_id")
    private SubCategory subCategory;

    @Lob
    @Column(columnDefinition = "TEXT")
    @Size(max = 10000, min = 10)
    @NotBlank
    private String description;

    @ManyToOne
    @JoinColumn(name = "shop_id")
    private Shop shop;

    @OneToMany(mappedBy = "product", cascade = CascadeType.ALL)
    private List<Variant> variants;

    @ManyToMany
    @JoinTable(name = "product_tags",
            joinColumns = @JoinColumn(name = "product_id"),
            inverseJoinColumns = @JoinColumn(name = "tag_id"))
    private List<Tag> tags;

    @OneToMany(mappedBy = "product", cascade = CascadeType.ALL)
    private List<CustomizableProperty> customizableProperties;

    private double averageRating;

    private int reviewCount;

    @Enumerated(EnumType.STRING)
    private ProductStatus status;
}
