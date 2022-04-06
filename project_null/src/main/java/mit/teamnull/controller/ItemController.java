package mit.teamnull.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import mit.teamnull.domain.PartnerVO;
import mit.teamnull.service.ItemService;

@Controller
@Log4j
@AllArgsConstructor
public class ItemController {
	
	ItemService service;

	@GetMapping("/item")
	public String itemHome() {
		
		return "/procure/item/item_info";
	}
	

	
//	@PostMapping("/quiz/insert")
//	public String numQuiz3(int num1, int num2) {
//		log.info(num1+" "+num2);
//		
//		service.grAdd(num1, num2);
//		
//		return "/includes/numquiz2";
//	}
//	
//	@GetMapping("/quiz/look")
//	public String look(Model model) {
//		model.addAttribute("num1", 3);
//		model.addAttribute("num2", 7);
//		
//		return "/includes/numquiz2";
//	}
//	
//	@GetMapping("/quiz/numlist")
//	public String numList(PartnerVO vo, Model md) {
//			
//			md.addAttribute("list", service.list());
//		
//		return "/includes/numlist";
//	}
	
	
}
