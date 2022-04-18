package mit.teamnull.domain;

import lombok.Data;

@Data
/* 품목등록 */
public class ItemVO {
	private String item_code;
	private String item_name;
	private String item_material;
	private String item_stand;
	private String item_product;
	private String item_draw;
}
/* item_code, item_name, item_material, item_stand, item_product, item_draw */