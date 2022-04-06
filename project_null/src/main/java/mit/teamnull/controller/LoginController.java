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
@RequestMapping("/login/*")
@AllArgsConstructor
public class LoginController {

	public StaffService service;

//	@GetMapping("/login") //주소창
//	public String login() {
//		
//		return "/login/loginpage"; //파일경로
//	}
	@GetMapping("/loginpage")
	public String loginpage() {

		return "/login/loginpage";
	}

	@PostMapping("/login")
	public String login(StaffVO vo, Model model) {
		int cnt = service.login(vo.getStaff_name(), vo.getStaff_depart());
		if (cnt == 1) {
			log.info("로그인성공할까나?");
			return "redirect:/staff/stafflist";
		} else
			model.addAttribute("msg", "이름과 부서가 일치하지 않습니다. 인사과에 문의하세요.");
		model.addAttribute("url", "/login/loginpage");
		return "/login/alert";
	}

	@GetMapping("/loginsimple")
	public String loginsimple() {

		return "/login/loginsimple";
	}

	@GetMapping("/regist")
	public String regist() {

		return "/login/regist";
	}

}
