package mit.teamnull.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import mit.teamnull.domain.ItemVO;
import mit.teamnull.service.ItemService;

@Controller
@Log4j
@RequestMapping("/item/*")
@AllArgsConstructor
/* 품목등록정보 */
public class ItemController {

	ItemService service;

	@GetMapping("/home")
	public String itemHome() {

		return "/procure/item/item_home";
	}

	@GetMapping("/item")
	public String itemItem() {

		return "/procure/item/item_home";
	}

	@PostMapping("/insert")
	public String insert(ItemVO vo, Model model) {
		log.info(vo);
		int cnt = service.checkOverlap(vo);
		if (cnt == 0) {
			service.insert(vo);
		} else {
			service.update(vo);
		}

		ItemVO item = service.getItem(vo.getItem_code());
		model.addAttribute("item", item);

		return "/procure/item/item_home";
	}

	@PostMapping("/search")
	public String search(ItemVO vo, Model model) {
		log.info("검색한 코드는" + vo);
		List<ItemVO> resultList = service.search(vo.getItem_code());
		model.addAttribute("result", resultList);

		return "/procure/item/item_search";
	}

}
