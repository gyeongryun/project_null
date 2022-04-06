package mit.teamnull.service;

import java.util.List;

import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import mit.teamnull.domain.StaffVO;
import mit.teamnull.mapper.StaffMapper;


@Service
@AllArgsConstructor
public class StaffServiceImpl implements StaffService {
	
	private StaffMapper mapper;
	
	@Override
	public List<StaffVO> list() {
		return mapper.list();
	}

	@Override
	public Integer login(String staff_name, String staff_depart) {
		  int cnt = mapper.login(staff_name, staff_depart);
	      return cnt; 
	}




}