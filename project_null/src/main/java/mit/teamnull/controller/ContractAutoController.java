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
import mit.teamnull.domain.ContractVO;
import mit.teamnull.domain.PartnerVO;
import mit.teamnull.service.ContractService;

@RestController
@RequestMapping("/contsearch")
@Log4j
@AllArgsConstructor
public class ContractAutoController {
	
	ContractService service;

	@GetMapping(value = "/searchPart_name", produces="text/plain; charset=UTF-8")
	public String searchPart_name(String keyword, Model model) {
		List<PartnerVO> items = service.autoPart_name(keyword);
		log.info(items);
		Gson gson = new Gson();
		return gson.toJson(items);
	}
	
	
	@GetMapping(value = "/autoPart_name", produces="text/plain; charset=UTF-8")
	public String getPart_name(String keyword, Model model) {
		List<PartnerVO> items = service.autoPart_name(keyword);
		log.info(items);
		Gson gson = new Gson();
		return gson.toJson(items);
	}

	@GetMapping(value = "/autoPart_status", produces="text/plain; charset=UTF-8")
	public String getPart_status(String keyword, Model model) {
		List<PartnerVO> items = service.autoPart_status(keyword);
		log.info(items);
		Gson gson = new Gson();
		return gson.toJson(items);
	}
	
	
	
	@GetMapping(value = "/searchCont_code", produces="text/plain; charset=UTF-8")
	public String searchCont_code(String keyword, Model model) {
		List<ContractVO> items = service.autoCont_code(keyword);
		log.info(items);
		Gson gson = new Gson();
		return gson.toJson(items);
	}
	
	@GetMapping(value = "/autoCont_code", produces="text/plain; charset=UTF-8")
	public String getCont_code(String keyword, Model model) {
		List<ContractVO> items = service.autoCont_code(keyword);
		log.info(items);
		Gson gson = new Gson();
		return gson.toJson(items);
	}
	@GetMapping(value = "/autoItem_code", produces="text/plain; charset=UTF-8")
	public String getCont_co3de(String keyword, Model model) {
		List<ContractVO> items = service.autoItem_code(keyword);
		log.info(items);
		Gson gson = new Gson();
		return gson.toJson(items);
	}
	@GetMapping(value = "/autoCpart_name", produces="text/plain; charset=UTF-8")
	public String getCont_cod2e(String keyword, Model model) {
		List<ContractVO> items = service.autoCpart_name(keyword);
		log.info(items);
		Gson gson = new Gson();
		return gson.toJson(items);
	}



	
	
	
}
