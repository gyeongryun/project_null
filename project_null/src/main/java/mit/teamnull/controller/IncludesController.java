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
@RequestMapping("/includes/*")
@AllArgsConstructor

public class IncludesController {
	@GetMapping("/header")
	public String iheader() {

		return "/includes/header";
	}
	
	@GetMapping("/sidebar")
	public String isidebar() {
		
		return "/includes/sidebar";
	}
	@GetMapping("/sidebar2")
	public String isidebar2() {
		
		return "/includes/sidebar2";
	}
	
	@GetMapping("/footer")
	public String ifooter() {
		
		return "/includes/footer";
	}
}
