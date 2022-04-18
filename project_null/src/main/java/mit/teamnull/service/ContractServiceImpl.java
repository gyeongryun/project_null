package mit.teamnull.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import mit.teamnull.domain.ContractVO;
import mit.teamnull.domain.PartnerVO;
import mit.teamnull.mapper.ContractMapper;

@AllArgsConstructor
@Service
public class ContractServiceImpl implements ContractService {
	
	private ContractMapper mapper;

	@Override
	public void insertPart(PartnerVO vo) {
		mapper.insertPart(vo);
	}

	@Override
	public PartnerVO verificationPart(String part_name) {
		return mapper.verificationPart(part_name);
	}

	@Override
	public List<PartnerVO> searchPart(String part_name) {
		return mapper.searchPart(part_name);
	}

	@Override
	public void updatePart(PartnerVO vo) {
		mapper.updatePart(vo);
		
	}

	@Override
	public int checkOverlapPart(PartnerVO vo) {
		return mapper.checkOverlapPart(vo);
	}

	@Override
	public void insertCont(ContractVO vo) {
		mapper.insertCont(vo);
	}

	@Override
	public int checkOverlapCont(ContractVO vo) {
		return mapper.checkOverlapCont(vo);
	}

	@Override
	public ContractVO verificationCont(String cont_code) {
		
		return mapper.verificationCont(cont_code);
	}

	



}



