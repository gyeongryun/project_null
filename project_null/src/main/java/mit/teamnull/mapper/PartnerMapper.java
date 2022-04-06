package mit.teamnull.mapper;

import java.util.List;
import mit.teamnull.domain.PartnerVO;

public interface PartnerMapper {
	
	public List<PartnerVO> getList();
	
	public void insert(PartnerVO partner);
	
	/* public void insertSelectKey(PartnerVO partner); */
	
	PartnerVO read(String part_name);
	
	String delete(String part_name);
	
	String update(PartnerVO vo);
	
}
