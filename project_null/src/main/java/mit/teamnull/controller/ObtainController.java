package mit.teamnull.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import mit.teamnull.domain.ObtainVO;
import mit.teamnull.service.ObtainService;

@Controller
@Log4j
@RequestMapping("/obtain/*")
@AllArgsConstructor
/* 조달 계획 등록 컨트롤러 */
public class ObtainController {
	
	ObtainService service;

	@GetMapping("/home")
	public String obtainHome() {
		
		return "/procure/obtain_home";
	}
	
	@GetMapping("/procure")
	public String obtainItem() {
		
		return "/procure/obtain_home";
	}
	
	@PostMapping("/insert")
	public String insert(ObtainVO vo,Model model){
		
//		log.info("수집된 Obtain"+vo);
//		int cnt = service.checkOverlap(vo);
//		if(cnt==0) {
			service.insert(vo);
//		}else {
//			service.update(vo);
//		}
		
		ObtainVO onelist =service.verification(vo.getOrder_code());
		model.addAttribute("onelist", onelist);
		
		return "/procure/obtain_home";
	}
	
	
	@PostMapping("/search")
	public String search(ObtainVO vo, Model model) {
		log.info("검색한 코드는" + vo);
		List<ObtainVO> resultList = service.search(vo.getOrder_code());
		model.addAttribute("result", resultList);

		return "/procure/obtain_search";
	}
	
}
