package mit.teamnull.domain;

import lombok.Data;

@Data
/* 계약등록 : 계약서 */
public class ContractVO {
	private String cont_code;
	private String item_code;
	private String part_name;
	private String supply_price;
	private String item_qntty;
	private String supply_lt;
	private String cont_advance;
	private String cont_middle;
	private String cont_balance;
	private String cont_flaw;
	private String cont_breach;
	private String cont_pay;
	private String cont_detail;
}
