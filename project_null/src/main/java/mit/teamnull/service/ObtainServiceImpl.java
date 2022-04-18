package mit.teamnull.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import mit.teamnull.domain.ObtainVO;
import mit.teamnull.mapper.ObtainMapper;


@AllArgsConstructor
@Service
public class ObtainServiceImpl implements ObtainService {
	
	private ObtainMapper mapper;

	@Override
	public void insert(ObtainVO vo) {
		mapper.insert(vo);
		
	}

	@Override
	public ObtainVO verification(String order_code) {
		
		return mapper.verification(order_code);
	}

	@Override
	public List<ObtainVO> search(String order_code) {
		
		return mapper.search(order_code);
	}

	@Override
	public void update(ObtainVO vo) {
		mapper.update(vo);
		
	}

	@Override
	public int checkOverlap(ObtainVO vo) {
		
		return mapper.checkOverlap(vo);
	}








}



