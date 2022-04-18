package mit.teamnull.domain;

import lombok.Data;

@Data
/* 계약등록 : 협력사 정보 */
public class PartnerVO {
	private String part_name;
	private String part_number;
	private String part_status;
	private String part_address;
	private String part_contact;
	private String part_rep;
	private String part_manager;
}
