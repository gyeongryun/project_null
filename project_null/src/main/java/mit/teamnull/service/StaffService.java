package mit.teamnull.service;

import java.util.List;

import mit.teamnull.domain.StaffVO;

public interface StaffService {

	public List<StaffVO> list();

	public Integer login(String staff_name, String staff_depart);
}
