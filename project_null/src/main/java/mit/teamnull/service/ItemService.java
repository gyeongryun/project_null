package mit.teamnull.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import mit.teamnull.domain.ItemVO;

public interface ItemService {

	public void insert(ItemVO vo);
	
	public ItemVO getItem(String item_code);
	
	public void update(ItemVO vo);
	
	public int checkOverlap(ItemVO vo);
	
	public List<ItemVO> search(String item_code);
}
