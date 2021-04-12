package springmvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import springmvc.model.User;
import springmvc.service.UserService;

@Controller
public class ContactController {

	@Autowired
	private UserService userService;

	@RequestMapping("/contact")
	public String showForm(Model m) {
		m.addAttribute("headline", "Registration form");
		return "contact";
	}

	@RequestMapping(path = "/processform", method = RequestMethod.POST)
	public String handleForm(@ModelAttribute User user, Model model) {
		if (user.getUsername().isBlank() || user.getEmail().isBlank() || user.getPassword().isBlank()) {
			return "redirect:/contact";
		} else {
			int createdUser = this.userService.createUser(user);
			model.addAttribute("successHeadline", "form filled successfully");
			model.addAttribute("msg", "created user with id " + createdUser);
			System.out.println(user);
			return "success";
		}
	}

//	this is old way to fetch values from view to controller
//	@RequestMapping(path = "/processform", method = RequestMethod.POST)
//	public String handleForm(HttpServletRequest request) {
//		String name = request.getParameter("username");
//		String email = request.getParameter("email");
//		String password = request.getParameter("password");
//		System.out.println("ur name is " + name.toUpperCase() + " and ur email is " + email.toUpperCase()
//				+ " with password " + password);
//
//		return "success";
//
//	}

	/*
	 * // ////// @RequestParam annotation
	 * 
	 * @RequestMapping(path = "/processform", method = RequestMethod.POST) public
	 * String handleForm(@RequestParam(name = "username", required = true) String
	 * userName,
	 * 
	 * @RequestParam(name = "email", required = true) String userEmail,
	 * 
	 * @RequestParam(name = "password", required = true) String userPassword, Model
	 * model) {
	 * 
	 * User user = new User(); user.setEmail(userEmail); user.setName(userName);
	 * user.setPassword(userPassword);
	 * 
	 * System.out.println(user); // model.addAttribute("name", userName); //
	 * model.addAttribute("email", userEmail); // model.addAttribute("password",
	 * userPassword);
	 * 
	 * model.addAttribute("user",user);
	 * 
	 * // System.out // .println("ur name is " + userName + " and ur email is " +
	 * userEmail + " with password " + userPassword);
	 * 
	 * return "success"; }
	 */

}
