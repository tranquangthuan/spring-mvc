package thuan.spring.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class StaticPageController {

	@RequestMapping(value = "/redirectFinal", method = RequestMethod.GET)
	public String redicrect() {
		return "redirect:/pages/final.htm";
	}
	
	@RequestMapping(value = "/redirectFinal2", method = RequestMethod.GET)
	public String redicrect2() {
		return "redirect:staticfinal2";
	}
	
	@RequestMapping(value = "/staticfinal2", method = RequestMethod.GET)
	public String staticfinal2() {

		return "/group1/final";
	}
}
