package mit.teamnull.service;

import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import mit.teamnull.domain.ObtainVO;
import mit.teamnull.mapper.ObtainMapper;


@AllArgsConstructor
@Service
public class ObtainServiceImpl implements ObtainService {
	
	private ObtainMapper mapper;

	@Override
	public void insert(ObtainVO vo) {
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
		
		while (mapper.checkOverlap("ORDR-" + bf)==1) {
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
			System.out.println("새로만들어진 랜덤값:" + bf);
		}
		
		vo.setOrder_code("ORDR-" + bf);
		mapper.insert(vo);
		
	}

	@Override
	public ObtainVO verification(String order_code) {
		
		return mapper.verification(order_code);
	}

	@Override
	public List<ObtainVO> search(String order_code) {
		
		return mapper.search(order_code);
	}

	@Override
	public void update(ObtainVO vo) {
		mapper.update(vo);
		
	}

	@Override
	public int checkOverlap(ObtainVO vo) {
		
		return mapper.checkOverlap(vo);
	}

	@Override
	public List<ObtainVO> autoOrder_code(String order_code) {
		
		return mapper.autoOrder_code(order_code);
	}

	@Override
	public List<ObtainVO> autoCont_code(String cont_code) {
		
		return mapper.autoCont_code(cont_code);
	}

	@Override
	public List<ObtainVO> autoItem_code(String item_code) {
		
		return mapper.autoItem_code(item_code);
	}








}



