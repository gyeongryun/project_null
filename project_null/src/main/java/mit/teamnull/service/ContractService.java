package mit.teamnull.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import mit.teamnull.domain.ContractVO;
import mit.teamnull.domain.PartnerVO;

public interface ContractService {

	public void insertPart(PartnerVO vo);
	
	public PartnerVO verificationPart(String part_name);
	
	public List<PartnerVO> searchPart(String part_name);
	
	public void updatePart(PartnerVO vo);
	
	public int checkOverlapPart(PartnerVO vo);
	
	public void insertCont(ContractVO vo);
	
//	public int checkOverlapCont(ContractVO vo);
	
	public ContractVO verificationCont(String cont_code);
	
	/* 오토컴플릿 */
	public List<PartnerVO> autoPart_name(String part_name);
	
	public List<PartnerVO> autoPart_status(String part_status);
	
	public List<ContractVO> autoCont_code(String cont_code);
	
	public List<ContractVO> autoItem_code(String item_code);
	
	public List<ContractVO> autoCpart_name(String part_name);
	
}
