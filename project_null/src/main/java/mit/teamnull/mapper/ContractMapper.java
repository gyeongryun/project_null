package mit.teamnull.mapper;

import java.util.List;

import mit.teamnull.domain.ContractVO;
import mit.teamnull.domain.ItemVO;
import mit.teamnull.domain.PartnerVO;

public interface ContractMapper {
	
	public void insertPart(PartnerVO vo);
	
	public PartnerVO verificationPart(String part_name);
	
	public List<PartnerVO> searchPart(String part_name);
	
	public void updatePart(PartnerVO vo);
	
	public int checkOverlapPart(PartnerVO vo);
	
	public void insertCont(ContractVO vo);
	
	public int checkOverlapCont(String cont_code);
	
	public ContractVO verificationCont(String cont_code);
	
	/* 오토컴플릿 */
	public List<PartnerVO> autoPart_name(String part_name);
	
	public List<PartnerVO> autoPart_status(String part_status);
	
	public List<ContractVO> autoCont_code(String cont_code);
	
	public List<ContractVO> autoItem_code(String item_code);
	
	public List<ContractVO> autoCpart_name(String part_name);

	public int checkOverlap(String cont_code);
	
}
