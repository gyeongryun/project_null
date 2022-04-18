package mit.teamnull.service;

import java.util.List;

import mit.teamnull.domain.ObtainVO;

public interface ObtainService {
	
	public void insert(ObtainVO vo);
	
	public ObtainVO verification(String order_code);
	
	public List<ObtainVO> search(String order_code);
	
	public void update(ObtainVO vo);
	
	public int checkOverlap(ObtainVO vo);
	
	
}
