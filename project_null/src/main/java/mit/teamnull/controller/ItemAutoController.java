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
import mit.teamnull.domain.ItemVO;
import mit.teamnull.service.ItemService;

@RestController
@RequestMapping("/itemsearch")
@Log4j
@AllArgsConstructor
public class ItemAutoController {

	ItemService service;

	@GetMapping(value = "/viewItem_code", produces="text/plain; charset=UTF-8")
	public String viewItem_code(String keyWord, Model model) {
		List<ItemVO> items = service.autoItem_code(keyWord);
		log.info(items);
		Gson gson = new Gson();
		return gson.toJson(items);
	}
	
	@GetMapping(value = "/loadItem", produces="text/plain; charset=UTF-8")
	public String getItem(String item_code, Model model) {
		ItemVO items = service.getItem(item_code);
		log.info(items);
		Gson gson = new Gson();
		return gson.toJson(items);
	}


	
	
	@GetMapping(value = "/autoItem_code", produces="text/plain; charset=UTF-8")
	public String getItem_code(String keyWord, Model model) {
		List<ItemVO> items = service.autoItem_code(keyWord);
		log.info(items);
		Gson gson = new Gson();
		return gson.toJson(items);
	}
	@GetMapping(value = "/autoItem_name", produces="text/plain; charset=UTF-8")
	public String getItem_name(String keyWord, Model model) {
		List<ItemVO> items = service.autoItem_name(keyWord);
		log.info(items);
		Gson gson = new Gson();
		return gson.toJson(items);
	}
	@GetMapping(value = "/autoItem_material", produces="text/plain; charset=UTF-8")
	public String getItem_material(String keyWord, Model model) {
		List<ItemVO> items = service.autoItem_material(keyWord);
		log.info(items);
		Gson gson = new Gson();
		return gson.toJson(items);
	}
	@GetMapping(value = "/autoItem_stand", produces="text/plain; charset=UTF-8")
	public String getItem_stand(String keyWord, Model model) {
		List<ItemVO> items = service.autoItem_stand(keyWord);
		log.info(items);
		Gson gson = new Gson();
		return gson.toJson(items);
	}
	@GetMapping(value = "/autoItem_product", produces="text/plain; charset=UTF-8")
	public String getItem_product(String keyWord, Model model) {
		List<ItemVO> items = service.autoItem_product(keyWord);
		log.info(items);
		Gson gson = new Gson();
		return gson.toJson(items);
	}

	
	
	
}
