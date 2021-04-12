package springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class RedirectController {

//	@RequestMapping("/one")
//	public String one() {
//		System.out.println("this is handler one");
//
//		return "redirect:/two"; // redirect from handler one to two relative url
//	}

	@RequestMapping("/one")
	public RedirectView one() {
		System.out.println("this is handler one");
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl("two");
//		redirectView.setUrl("https:\\www.google.com");

		return redirectView; // redirect from handler one to two
	}

	@RequestMapping("/two")
	public String two() {
		System.out.println("this is handler two");
		return "contact";
	}

}
