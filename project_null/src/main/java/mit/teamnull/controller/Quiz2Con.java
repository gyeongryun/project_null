package mit.teamnull.controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Quiz2Con {

	@GetMapping("/test1")
	public int test1(int a, Model md) {
		
	
		
		return a;
	}
}
