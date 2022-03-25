package mit.teamnull.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import mit.teamnull.domain.StaffVO;
import mit.teamnull.service.StaffService;

@Log4j
@RequestMapping("/Staff/*")
@AllArgsConstructor
@Controller
public class StaffController {

	public StaffService service;

	@GetMapping("/stafflist")
	public String registerMainGet(StaffVO vo, Model md) {
		log.info("페이지 접속");
		List<StaffVO> aa = service.list();
		for (StaffVO temp : aa) {
			log.info("가져오긴함:" + aa);
		}
		md.addAttribute("list", service.list());
		return "/login/stafflist";
	}
}
