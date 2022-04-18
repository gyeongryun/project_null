package mit.teamnull.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import mit.teamnull.domain.PurchaseVO;
import mit.teamnull.service.PurchaseService;

@Controller
@Log4j
@RequestMapping("/purchase/*")
@AllArgsConstructor
/* 구매발주서 발행전용 */
public class PurchaseController {

	PurchaseService service;

	@GetMapping("/home")
	public String purchaseHome() {
		return "/procure/purchase/purchase_home";
	}

	@PostMapping("/insert")
	public String insert(PurchaseVO vo, Model model) {
		log.info(vo);

		if (vo.getItem_due() == null && vo.getOrder_date() == null) {
		} else {
			service.update(vo);
		}

		PurchaseVO load = service.verification(vo.getOrder_code());
		model.addAttribute("load", load);
		PurchaseVO item = service.verification(vo.getOrder_code());
		model.addAttribute("item", item);

		return "/procure/purchase/purchase_home";
	}

	@PostMapping("/search")
	public String search(PurchaseVO vo, Model model) {
		log.info("검색한 코드는" + vo);
		List<PurchaseVO> resultList = service.search(vo.getOrder_code());
		model.addAttribute("result", resultList);

		return "/procure/purchase/purchase_search";
	}

	@GetMapping("/print")
	public String print(PurchaseVO vo, Model model) {
		PurchaseVO resultList = service.pullInfo(vo.getOrder_code());
		model.addAttribute("print", resultList);

		return "/procure/purchase/purchase_print";
	}

	@GetMapping("/goprint")
	public String goPrint() {
		return "/procure/purchase/purchase_print";
	}
	
	@GetMapping("/pprint")
	public String printEx(PurchaseVO vo, Model model) {
		PurchaseVO resultList = service.pullInfo("d");
		model.addAttribute("print", resultList);
		return "/procure/purchase/purchase_print";
	}
	
}
