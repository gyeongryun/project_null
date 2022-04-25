package mit.teamnull.service;

import java.util.List;
import java.util.Random;

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
		
		Random rd = new Random();

		StringBuffer bf = new StringBuffer();

		for (int i = 0; i < 6; i++) {
			if (rd.nextBoolean()) {
				bf.append((char) ((int) (rd.nextInt(26)) + 65));
			} else {
				bf.append((rd.nextInt(10)));
			}
		}
		
		System.out.println("---------------------------");
		System.out.println("현재 랜덤값:"+bf);
		System.out.println("---------------------------");
		
		while (mapper.checkOverlapCont("CONT-" + bf)==1) {
			System.out.println("중복이다.");
			bf.delete(0, bf.length());
			System.out.println("지운 랜덤값:"+bf);
			for (int i = 0; i < 6; i++) {
				if (rd.nextBoolean()) {
					bf.append((char) ((int) (rd.nextInt(26)) + 65));
				} else {
					bf.append((rd.nextInt(10)));
				}
			}
			System.out.println("새로만들어진 랜덤값:"+bf);
		}
		
		vo.setCont_code("CONT-" + bf);

		mapper.insertCont(vo);
	}

//	@Override
//	public int checkOverlapCont(ContractVO vo) {
//		return mapper.checkOverlapCont(vo);
//	}

	@Override
	public ContractVO verificationCont(String cont_code) {
		
		return mapper.verificationCont(cont_code);
	}

	@Override
	public List<PartnerVO> autoPart_name(String part_name) {
		
		return mapper.autoPart_name(part_name);
	}

	@Override
	public List<PartnerVO> autoPart_status(String part_status) {
		
		return mapper.autoPart_status(part_status);
	}

	@Override
	public List<ContractVO> autoCont_code(String cont_code) {
		
		return mapper.autoCont_code(cont_code);
	}

	@Override
	public List<ContractVO> autoItem_code(String item_code) {
		
		return mapper.autoItem_code(item_code);
	}

	@Override
	public List<ContractVO> autoCpart_name(String part_name) {
		
		return mapper.autoCpart_name(part_name);
	}

	



}



