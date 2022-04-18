package mit.teamnull.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;
import mit.teamnull.domain.PartnerVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ContractMapperTests {

	@Autowired
	ContractMapper mapper;

	/*
	 * @Test public void insert() { PartnerVO vo = new PartnerVO();
	 * 
	 * vo.setPart_name("TEST01"); vo.setPart_number("TEST01");
	 * vo.setPart_status("TEST01"); vo.setPart_address("TEST01");
	 * vo.setPart_contact("TEST01"); vo.setPart_rep("TEST01");
	 * vo.setPart_manager("TEST01");
	 * 
	 * mapper.insert(vo); }
	 */

	/*
	 * @Test public void getInsert() { log.info(mapper.getInsert("11"));
	 * mapper.getList().forEach(vo->log.info(vo)); }
	 */

	/*
	 * @Test public void getList() { List<PartnerVO> list = mapper.search("3"); for
	 * (PartnerVO vo : list) { log.info(vo.getPart_name()); } //
	 * log.info(mapper.getList("1")); mapper.getList().forEach(vo->log.info(vo));
	 * 
	 * }
	 */

}
