package mit.teamnull.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
/* 루트컨트롤러로 사용하겠음 */
public class ProcureController {

	// 사실상 홈페이지
	@GetMapping("/home")
	public String homepage() {
		return "/procure/procure_home";
	}
	
	@GetMapping("/procure/home")
	public String procureHome() {
		return "/procure/procure_home";
	}



}