package mit.teamnull.mapper;

import java.util.List;

import mit.teamnull.domain.PartnerVO;

public interface ContractMapper {
	
	public void insertPart(PartnerVO vo);
	
	public PartnerVO verificationPart(String part_name);
	
	public List<PartnerVO> searchPart(String part_name);
	
	public void updatePart(PartnerVO vo);
	
	public int checkOverlapPart(PartnerVO vo);
	
}
