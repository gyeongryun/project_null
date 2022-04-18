package mit.teamnull.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;
import mit.teamnull.domain.ItemVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ItemMapperTests {

	@Autowired
	ItemMapper mapper;

	@Test
	public void insert() {
		ItemVO vo = new ItemVO();

		vo.setItem_code("TEST01");
		vo.setItem_name("TEST01");
		vo.setItem_material("TEST01");
		vo.setItem_product("TEST01");
		vo.setItem_stand("TEST01");
		vo.setItem_draw("TEST01");

		mapper.insert(vo);
	}

	/*
	 * @Test public void getInsert() { log.info(mapper.getInsert("11"));
	 * mapper.getList().forEach(vo->log.info(vo)); }
	 */

	@Test
	public void getList() {
		List<ItemVO> list = mapper.search("3");
		for (ItemVO vo : list) {
			log.info(vo.getItem_name());
		}
		// log.info(mapper.getList("1"));
		/* mapper.getList().forEach(vo->log.info(vo)); */

	}

}
