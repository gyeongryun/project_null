package mit.teamnull.mapper;

import java.util.List;

import mit.teamnull.domain.PurchaseVO;


public interface PurchaseMapper {
	
	public void insert(PurchaseVO vo);
	
	public PurchaseVO verification(String order_code);
	
	public List<PurchaseVO> search(String order_code);
	
	public void update(PurchaseVO vo);
	
	public int checkOverlap(PurchaseVO vo);
	
	public PurchaseVO pullInfo(String order_code);
	
	public PurchaseVO purchaseOrder(String order_code);
	
	public List<PurchaseVO> autoOrder_code(String order_code);
	

	
}