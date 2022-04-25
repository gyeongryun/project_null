package mit.teamnull.mapper;

import java.util.List;
import java.util.Map;

import mit.teamnull.domain.ItemVO;

public interface ItemMapper {
	
	public void insert(ItemVO vo);
	
	public ItemVO getItem(String item_code);
	
	public void update(ItemVO vo);
	
	public int checkOverlap(String item_code);
	
	public List<ItemVO> search(String item_code);
	
	public List<ItemVO> autoItem_code(String item_code);
	
	public List<ItemVO> autoItem_name(String item_name);
	
	public List<ItemVO> autoItem_material(String item_material);
	
	public List<ItemVO> autoItem_stand(String item_stand);
	
	public List<ItemVO> autoItem_product(String item_product);
	
}
