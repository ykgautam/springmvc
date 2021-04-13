package springmvcsearch.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class SearchController {

	@RequestMapping(path = "/home")
	public String home() {
		System.out.println("home handler");
		return "home";
	}

	@RequestMapping(path = "/search")
	public RedirectView search(@RequestParam("querybox") String query) {

		RedirectView redirectView = new RedirectView();

		String url = "https://www.google.com/search?q=" + query;

		redirectView.setUrl(url);
		return redirectView;

	}

}
