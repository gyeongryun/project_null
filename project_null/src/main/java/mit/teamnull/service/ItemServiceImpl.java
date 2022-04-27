package mit.teamnull.service;

import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import mit.teamnull.domain.ItemVO;
import mit.teamnull.mapper.ItemMapper;

@AllArgsConstructor
@Service
public class ItemServiceImpl implements ItemService {

	private ItemMapper mapper;

	@Override
	public void insert(ItemVO vo) {

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
		
		while (mapper.checkOverlap("ITEM-" + bf)==1) {
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
		
		vo.setItem_code("ITEM-" + bf);
		mapper.insert(vo);
	}

	@Override
	public ItemVO getItem(String item_code) {
		return mapper.getItem(item_code);
	}

	@Override
	public void update(ItemVO vo) {
		mapper.update(vo);
	}

	/*
	 * @Override public int checkOverlap(ItemVO vo) { return
	 * mapper.checkOverlap(vo); }
	 */
	
	@Override
	public int countName(String item_name) {
		
		return mapper.countName(item_name);
	}

	@Override
	public List<ItemVO> search(String item_code) {
		return mapper.search(item_code);
	}

	@Override
	public List<ItemVO> autoItem_code(String item_code) {

		return mapper.autoItem_code(item_code);
	}

	@Override
	public List<ItemVO> autoItem_name(String item_name) {

		return mapper.autoItem_name(item_name);
	}

	@Override
	public List<ItemVO> autoItem_material(String item_material) {

		return mapper.autoItem_material(item_material);
	}

	@Override
	public List<ItemVO> autoItem_stand(String item_stand) {

		return mapper.autoItem_stand(item_stand);
	}

	@Override
	public List<ItemVO> autoItem_product(String item_product) {

		return mapper.autoItem_product(item_product);
	}



}
