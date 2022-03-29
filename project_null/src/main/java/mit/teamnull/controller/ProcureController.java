package mit.teamnull.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import mit.teamnull.domain.StaffVO;
import mit.teamnull.service.StaffService;

@Controller
@Log4j
@RequestMapping("/procure/*")
@AllArgsConstructor
public class ProcureController {

//	@GetMapping("/login") //주소창
//	public String login() {
//		
//		return "/login/loginpage"; //파일경로
//	}
	
	@GetMapping("/home")
	public String loginpage() {

		return "/procurement/procure_home";
	}


}