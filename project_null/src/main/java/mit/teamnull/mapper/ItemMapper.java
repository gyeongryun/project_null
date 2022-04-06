package mit.teamnull.mapper;

import java.util.List;

import mit.teamnull.domain.ItemVO;

public interface ItemMapper {
	
	public void insert(ItemVO vo);
	
	public ItemVO getInsert(String item_code);
	
	public List<ItemVO> getList(String item_code);
	
}
