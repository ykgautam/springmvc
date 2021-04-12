package springmvc.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

	@RequestMapping("/home")
	public String home(Model model) {
		System.out.println("this is home url");
		model.addAttribute("name", "yash Gautam");

		List<String> friends = new ArrayList<String>();
		friends.add("yash");
		friends.add("mohit");
		friends.add("sumit");
		friends.add("peter");
		model.addAttribute("f", friends);
		return "index";
	}

	@RequestMapping("/about")
	public String about() {
		System.out.println("this is about url");
		return "about";
	}

	@RequestMapping("/help")
	public ModelAndView help() {

		System.out.println("help controller");

		// creating model and view obj
		ModelAndView view = new ModelAndView();

//		setting the data
		view.addObject("name", "gaurav");
		view.addObject("id", 21);

		List<Integer> marks = new ArrayList<Integer>();
		marks.add(77);
		marks.add(63);
		marks.add(80);
		marks.add(65);
		view.addObject("marks", marks);

//		setting the view name
		view.setViewName("help");

		return view;
	}
}
