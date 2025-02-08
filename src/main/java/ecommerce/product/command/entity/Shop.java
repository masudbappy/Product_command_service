package ecommerce.product.command.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Index;
import jakarta.persistence.Lob;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import lombok.*;

@Entity @Getter @Setter
@NoArgsConstructor @AllArgsConstructor @Builder
@Table(indexes = @Index(name = "idx_shop_id", columnList = "id"))
public class Shop extends BaseEntity{
    @NotBlank
    @Size(max = 255)
    private String name;

    @Lob
    private String description;

    @Size(max = 255)
    private String imageUrl;

    @Size(max = 255)
    private String bannerUrl;
}