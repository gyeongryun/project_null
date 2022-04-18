package mit.teamnull.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import mit.teamnull.domain.ContractVO;
import mit.teamnull.domain.PartnerVO;
import mit.teamnull.domain.PurchaseVO;
import mit.teamnull.service.ContractService;

@Controller
@Log4j
@RequestMapping("/contract/*")
@AllArgsConstructor
/* 계약등록-협력사 및 계약서전용 */
public class ContractController {
	/* 협력사 only */
	ContractService service;

	@GetMapping("/home")
	public String contractHome() {

		return "/procure/contract/contract_part";

	}
	
	@PostMapping("/part")
	public String contractPart() {
		
		return "/procure/contract/contract_part";
		
	}

	@PostMapping("/insert")
	public String insert(PartnerVO vo, Model model) {
		log.info("1차는 오케이" + vo);
		int cnt = service.checkOverlapPart(vo);
		if (cnt == 0) {
			service.insertPart(vo);
			log.info("삽입은 오케이" + vo);
		} else {
			service.updatePart(vo);
			log.info("수정은 오케이" + vo);
		}

		PartnerVO item = service.verificationPart(vo.getPart_name());
		model.addAttribute("item", item);

		return "/procure/contract/contract_part";

	}
	
	@PostMapping("/search")
	public String search(PartnerVO vo, Model model) {
		log.info("검색어는 " + vo + "였습니다!");
		List<PartnerVO> resultList = service.searchPart(vo.getPart_name());
		model.addAttribute("result", resultList);

		return "/procure/contract/contract_partSearch";
	}

	
	
	
	/*---------------------------part cont 분리선-------------------------------------*/
	
	@GetMapping("/conthome")
	public String showCont() {
		return "/procure/contract/contract_cont";
	}
	
	@GetMapping("/cont")
	public String contractCont(PartnerVO vo, Model model) {
		log.info("검색어는 " + vo + "였습니다!");
		List<PartnerVO> resultList = service.searchPart(vo.getPart_name());
		model.addAttribute("result", resultList);

		return "/procure/contract/contract_cont";
	}
	
	@PostMapping("/insertcont")
	public String insertCont(ContractVO vo, Model model) {
		log.info("1차는 오케이" + vo);
		int cnt = service.checkOverlapCont(vo);
		if (cnt == 0) {
			service.insertCont(vo);
			log.info("cnt제로" + vo);
		} else {
			service.insertCont(vo);
			log.info("cnt원" + vo);
		}

		ContractVO item = service.verificationCont(vo.getCont_code());
		model.addAttribute("item", item);

		return "/procure/contract/contract_cont";

	}
	
	@GetMapping("/print")
	public String print(PartnerVO pvo, ContractVO cvo, Model model) {
		PartnerVO resultList = service.verificationPart(pvo.getPart_name());
		model.addAttribute("print", resultList);
		ContractVO resultList2 = service.verificationCont(cvo.getCont_code());
		model.addAttribute("cprint", resultList2);

		return "/procure/contract/contract_print";
	}
	
	@GetMapping("/prints")
	public String printsam() {
	return "/procure/contract/contract_print";
	}
}