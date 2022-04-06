package mit.teamnull.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import mit.teamnull.domain.PartnerVO;
import mit.teamnull.mapper.PartnerMapper;

@AllArgsConstructor
@Service
public class PartnerServiceImpl implements PartnerService {
	
	private PartnerMapper mapper;
	
	@Override
	public void register(PartnerVO vo) {
		
		mapper.insert(vo);
		
	}

	@Override
	public PartnerVO get(String part_name) {
		
		return mapper.read(part_name);
	}

	@Override
	public String modify(PartnerVO vo) {
		
		return mapper.update(vo);
	}

	@Override
	public String remove(String part_name) {
		
		return mapper.delete(part_name);
	}

	@Override
	public List<PartnerVO> getList() {
		
		return mapper.getList();
	}
	


}



