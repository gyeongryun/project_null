package mit.teamnull.mapper;

import java.util.List;

import mit.teamnull.domain.ItemVO;

public interface ItemMapper {
	
	public void insert(ItemVO vo);
	
	public ItemVO getItem(String item_code);
	
	public void update(ItemVO vo);
	
	public int checkOverlap(ItemVO vo);
	
	public List<ItemVO> search(String item_code);
}
