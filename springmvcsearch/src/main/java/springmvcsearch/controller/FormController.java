package springmvcsearch.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import springmvcsearch.model.Student;

@Controller
public class FormController {

	@RequestMapping(path = "/complex")
	public String complexForm() {
		System.out.println("complex_form handler");
		return "complex_form";
	}

	@RequestMapping(path = "/handleForm")
	public String formHandler(@ModelAttribute("student") Student student, BindingResult result) {
		System.out.println("handleForm handler");
		if (result.hasErrors())
			return "complex_form";
		System.out.println(student);
		return "success";
	}

//	@RequestMapping(path = "/handleForm")
//	public String formHandler(@RequestParam("name") String name, @RequestParam("id") Long id, Model model) {
//		System.out.println("handleForm handler");
//		System.out.println(name);
//		System.out.println(id);
//		model.addAttribute("name", name);
//		model.addAttribute("id", id);
//		return "success";
//	}

}
