package mit.teamnull.controller;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.google.gson.Gson;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import mit.teamnull.domain.ObtainVO;
import mit.teamnull.domain.PurchaseVO;
import mit.teamnull.service.ObtainService;
import mit.teamnull.service.PurchaseService;

@RestController
@RequestMapping("/pursearch")
@Log4j
@AllArgsConstructor
public class PurchaseAutoController {
	
	PurchaseService service;

	@GetMapping(value = "/searchOrder_code", produces="text/plain; charset=UTF-8")
	public String searchOrder_code(String keyword, Model model) {
		List<PurchaseVO> items = service.autoOrder_code(keyword);
		log.info(items);
		Gson gson = new Gson();
		return gson.toJson(items);
	}
	
	
	@GetMapping(value = "/autoOrder_code", produces="text/plain; charset=UTF-8")
	public String autoOrder_code(String keyword, Model model) {
		List<PurchaseVO> items = service.autoOrder_code(keyword);
		log.info(items);
		Gson gson = new Gson();
		return gson.toJson(items);
	}
	
	
	



	
	
	
}
