package mit.teamnull.controller;

import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
			
		int cnt = service.countName(vo.getItem_name());
		if(cnt==0) { 
			service.insert(vo);
			ItemVO item = service.getItem(vo.getItem_code());
			model.addAttribute("item", item);
		}else {
			model.addAttribute("msg", "중복되는 품목명이 "+cnt+"개 있습니다. 등록하시겠습니까?");
		}


		return "/procure/item/item_home";
	}
	
	@PostMapping("/insertDirect")
	public String insertDirect(ItemVO vo, Model model) {
		log.info(vo);
		
		service.insert(vo);
		ItemVO item = service.getItem(vo.getItem_code());
		model.addAttribute("item", item);
		
		return "/procure/item/item_home";
	}
	
	@PostMapping("/modify")
	public String modify(ItemVO vo, Model model) {
		log.info(vo);
		
		service.update(vo);

		ItemVO item = service.getItem(vo.getItem_code());
		model.addAttribute("item", item);

		return "/procure/item/item_home";
	}

	@PostMapping("/search")
	public String search(ItemVO vo, Model model, String flag) {
		log.info("어디서 이페이지를?" + flag);
		log.info("검색한 코드는" + vo);
		List<ItemVO> resultList = service.search(vo.getItem_code());
		model.addAttribute("result", resultList);
		if(flag !=null) {
			if(flag.equals("new")) {
				model.addAttribute("itemVO", resultList.get(0));
			}
		}
		return "/procure/item/item_search";
	}
	
	//수정용 클릭
	@GetMapping("/moClick")
	public String moClick(ItemVO vo, Model model) {
		log.info("클릭한 코드는" + vo);
		ItemVO resultList = service.getItem(vo.getItem_code());
		model.addAttribute("searchResult", resultList);

		
		return "/procure/item/item_search";
	}
	
	
	
	
//	@GetMapping("/searchClick")
//	public String searchClick(ItemVO vo, Model model) {
//		log.info("검색한 코드는" + vo);
//		List<ItemVO> resultList = service.search(vo.getItem_code());
//		model.addAttribute("result", resultList);
//		ItemVO resultList2 = service.getItem(vo.getItem_code());
//		model.addAttribute("itemVO", resultList2);
//		
//		return "/procure/item/search";
//	}

	/* j쿼리테스트 */
	@GetMapping("/auto")
	public String auto() {
		return "/procure/item/item_AutoComp";
	}



}
