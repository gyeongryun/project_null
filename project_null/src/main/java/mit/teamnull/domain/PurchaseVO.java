package mit.teamnull.domain;

import lombok.Data;

@Data
/* 발주서전용 */
public class PurchaseVO {
	private String order_code;
	private String cont_code;
	private String part_name /* from cont_code */;
	private String item_code;
	private String item_name /* from item_code */;
	private String item_mrp;
	private int item_require;
	private String item_prodate;
	private String item_due;
	private String order_date;
	
	
	
	/* patner 테이블 */
//	private String part_name /* from cont_code */;
	private String part_number;
	private String part_status;
	private String part_address;
	private String part_contact;
	private String part_rep;
	private String part_manager;
	
	/* item 테이블 */
//	private String item_name;
//	private String item_code;
	private String item_material;
	private String item_stand;

	/* order_info 테이블 */
//	private String item_require;
//	private String item_due;
	
	/* contract 테이블 */
	private String supply_price;
	private String item_qntty;
}
