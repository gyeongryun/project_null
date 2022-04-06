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
@RequestMapping("/partner/*")
@AllArgsConstructor
public class PartnerController {
	
	public PartnerService service;
//	@GetMapping("/login") //주소창
//	public String login() {
//		
//		return "/login/loginpage"; //파일경로
//	}
	
	
	@GetMapping("/partner")
	public String partner(PartnerVO vo, Model md) {
		
		md.addAttribute("list", service.getList());
		return "/procure/procure_partner";
	}
	
	@GetMapping("/modify")
	public String modify(PartnerVO vo, Model md) {
		
		service.modify(vo);
		return "/procure/procure_partner_modify";
	}
	

    @GetMapping("/list")
    // => @RequestMapping(value="list", method=RequestMethod.GET)
    public void boardListGET() {
        
        log.info("게시판 목록 페이지 진입");
        
    }
    
	//글등록 화면 열기
	@GetMapping("/register")
	public String register() {
		log.info("글 등록 화면 요청");
		// -> board/register.jsp
		return "/procurement/procure_partner_register";
	}
	
	@PostMapping("/register")
	public String register(PartnerVO vo, RedirectAttributes rttr) {
		log.info("register 요청");
		//글등록
		service.register(vo);
		log.info("등록된 글번호는"+ vo.getPart_name());
		//rttr.addAttribute("bno", board.getBno());
		rttr.addFlashAttribute("result", vo.getPart_name());
		return "redirect:/procure/procure_partner_register";
	
        
    }

}