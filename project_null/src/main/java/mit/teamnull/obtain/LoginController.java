package mit.teamnull.obtain;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;


@Controller
@Log4j
@RequestMapping("/login/*")
@AllArgsConstructor
public class  LoginController {

	@GetMapping("/login") //주소창
	public String login() {
		
		return "/login/loginpage"; //파일경로
	}
	@GetMapping("/loginpage") //주소창
	public String loginpage() {
		
		return "/login/loginpage"; //파일경로
	}
	
	
	
	@GetMapping("/loginsimple")
	public String loginsimple() {
		
		return "/login/loginsimple";
	}
	@GetMapping("/loginsample")
	public String loginsample() {
		
		return "/login/loginsimple";
	}

}
