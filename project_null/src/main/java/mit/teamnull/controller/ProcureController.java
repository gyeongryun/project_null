package mit.teamnull.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import mit.teamnull.domain.PartnerVO;
import mit.teamnull.service.PartnerService;

@Controller
@Log4j
@RequestMapping("/procure/*")
@AllArgsConstructor
public class ProcureController {
	
	public PartnerService service;
//	@GetMapping("/login") //주소창
//	public String login() {
//		
//		return "/login/loginpage"; //파일경로
//	}
	
	// 사실상 홈페이지
	@GetMapping("/home")
	public String loginpage() {
		
		return "/procure_home";
	}
	
	//협력사 목록 페이지
	@GetMapping("/partner")
	public String partner(PartnerVO vo, Model md) {
		
		md.addAttribute("list", service.getList());
		return "/procure/procure_partner";
	}
	
	//수정 페이지
	@GetMapping("/modify")
	public String modify(PartnerVO vo, Model md) {
		
		service.modify(vo);
		return "/procure/procure_partner_modify";
	}
	
	//글등록 화면 열기
	@GetMapping("/register")
	public String register() {
		log.info("글 등록 화면 요청");
		// -> board/register.jsp
		return "/procure/procure_partner_register";
	}

	@PostMapping("/register")
	public String register(PartnerVO vo, RedirectAttributes rttr) {
		log.info("register 요청");
		//글등록
		service.register(vo);
		log.info("등록된 회사 이름은"+ vo.getPart_name());
		//rttr.addAttribute("bno", board.getBno());
		rttr.addFlashAttribute("result", vo.getPart_name());
		//글목록 보기 보여주기
		return "redirect:/procure/procure_partner_register";
	
	}
	
	@GetMapping("/iteminfo")
	public String iteminfo() {

		return "/procure/item/iteminfo";
	}
	

}