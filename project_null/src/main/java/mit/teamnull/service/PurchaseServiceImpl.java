package mit.teamnull.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import mit.teamnull.domain.PurchaseVO;
import mit.teamnull.mapper.PurchaseMapper;


@AllArgsConstructor
@Service
public class PurchaseServiceImpl implements PurchaseService {
	
	private PurchaseMapper mapper;
	
	@Override
	public void insert(PurchaseVO vo) {
		mapper.insert(vo);
		
	}

	@Override
	public PurchaseVO verification(String order_code) {
		
		return mapper.verification(order_code);
	}

	@Override
	public List<PurchaseVO> search(String order_code) {
		
		return mapper.search(order_code);
	}

	@Override
	public void update(PurchaseVO vo) {
		mapper.update(vo);
		
	}

	@Override
	public int checkOverlap(PurchaseVO vo) {
		
		return mapper.checkOverlap(vo);
	}

	@Override
	public PurchaseVO pullInfo(String order_code) {

		return mapper.pullInfo(order_code);
	}








}



