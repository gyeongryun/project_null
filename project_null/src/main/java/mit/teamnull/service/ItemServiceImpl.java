package mit.teamnull.service;

import java.util.List;

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
		mapper.insert(vo);
	}

	@Override
	public ItemVO getInsert(String item_code) {
		return mapper.getInsert(item_code);
	}

	@Override
	public List<ItemVO> getList(String item_code) {
		return mapper.getList(item_code);
	}


}



