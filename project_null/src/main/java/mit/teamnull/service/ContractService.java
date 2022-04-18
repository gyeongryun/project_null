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
	
	public int checkOverlapCont(ContractVO vo);
	
	public ContractVO verificationCont(String cont_code);
}
