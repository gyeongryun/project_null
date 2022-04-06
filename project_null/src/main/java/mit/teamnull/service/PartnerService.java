package mit.teamnull.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import mit.teamnull.domain.PartnerVO;

public interface PartnerService {
	
	
	public void register(PartnerVO vo);
	
	
	PartnerVO get(String part_name);
	
	
	public String modify(PartnerVO vo);
	
	
	public String remove(String part_name);
	
	
	List<PartnerVO> getList();
	
	
}
