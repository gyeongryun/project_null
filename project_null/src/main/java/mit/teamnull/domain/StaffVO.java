package mit.teamnull.domain;

import lombok.Data;

@Data
/* 로그인용 직원VO */
public class StaffVO {
	private String staff_name;
	private String staff_depart;
	private String staff_title;
	private String staff_tel;
}
