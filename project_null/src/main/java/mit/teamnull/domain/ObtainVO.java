package mit.teamnull.domain;

import lombok.Data;

@Data
/* 조달계획등록 */
public class ObtainVO {
	private String order_code;
	private String cont_code;
	private String item_code;
	private String item_mrp;
	private String item_prodate;
	private int item_require;
	private String item_due;
	private String item_name;
	
	
	     
	
}
