package mit.teamnull.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import mit.teamnull.domain.ItemVO;

public interface ItemService {

	public void insert(ItemVO vo);
	
	public ItemVO getInsert(String item_code);
	
	public List<ItemVO> getList(String item_code);
	
}
