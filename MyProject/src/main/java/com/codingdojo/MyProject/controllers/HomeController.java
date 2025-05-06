package com.codingdojo.MyProject.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.codingdojo.MyProject.models.LoginUser;
import com.codingdojo.MyProject.models.Marine;
import com.codingdojo.MyProject.models.User;
import com.codingdojo.MyProject.services.MarineService;
import com.codingdojo.MyProject.services.UserService;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class HomeController {
	
	// Add once service is implemented:
	  @Autowired
	  private UserService userService;
	  
	  @Autowired
	  private MarineService marineService;
	  
//	  public HomeController( UserService userService) {
//			this.marineService = marineService;
//			this.userService = userService;
//		}
	  
	  

	  // the main page, rendering the form with the basic things.
	  // i did something wrong here most likely

	  @RequestMapping("/")
	  public String showForm(@ModelAttribute("newUser") User user, Model model) {
	    // Bind empty User and LoginUser objects to the JSP
	    // to capture the form input
	    model.addAttribute("newUser", new User());
	    model.addAttribute("newLogin", new LoginUser());
	    return "index.jsp";
	  }

	  // Post operation for Registration handling
	  @PostMapping("/register")
	  public String register(@Valid @ModelAttribute("newUser") User newUser,
	      BindingResult result, Model model, HttpSession session) {

	    // placed the user into a variable
	    User registeredUser = userService.register(newUser, result);

	    session.setAttribute("newUser", registeredUser);
	    if (result.hasErrors()) {
	      // this is needed at all times to capture the incorrect user values
	      model.addAttribute("newLogin", new LoginUser());
	      return "index.jsp";
	    }

	    // Store the registered user's ID in session or perform any necessary login
	    // operations
	    session.setAttribute("newUser", registeredUser.getId());
	    return "redirect:/dashboard";
	  }

	  @PostMapping("/login")
	  public String login(@Valid @ModelAttribute("newLogin") LoginUser newLogin,
	      BindingResult result, Model model, HttpSession session) {

	    User user = userService.login(newLogin, result);

	    if (result.hasErrors()) {
	      // to capture the form inputs
	      model.addAttribute("newUser", new User());
	      return "index.jsp";
	    }

	    // Store the logged-in user's ID in session or perform any necessary login
	    // operations
	    session.setAttribute("user_id", user.getId());
	    return "redirect:/dashboard";
	  }

	  // On the success page, have a logout button or link. When a user logs out,
	  // their session should be cleared. If the user attempts to access the success
	  // page
	  @GetMapping("/dashboard")
	  public String homePage(Model model, HttpSession session) {
	    Long newUserId = (Long) session.getAttribute("user_id");

	    if (newUserId == null) {
	      return "redirect:/";
	    }

	    User thisUser = userService.findById(newUserId);

	    if (thisUser == null) {
	      return "redirect:/";
	    }

	    model.addAttribute("thisUser", thisUser);
	    //add to populate dashboard
	    model.addAttribute("allMarines", marineService.allMarines());
	    return "dashboard.jsp";
	  }

	  // logout
	  @GetMapping("/logout")
	  public String logout(HttpSession session) {
	    session.invalidate();
	    return "redirect:/";
	  }
	  
	//---------------------------Marines--------------------------------------------------------------------//
	  
	  @GetMapping("/add/marine")
		public String addMarine(Model model, HttpSession session, @ModelAttribute("marine") Marine marine) {
			if(session.getAttribute("user_id") != null ) {
				Long loggedID = (Long) session.getAttribute("user_id");
				model.addAttribute("logged",loggedID);
				return "addMarine.jsp";
			}else {
				return "redirect:/dashboard";
			}
		}
		
		@PostMapping("add/marine")
		public String addMarineForm(Model model, @Valid @ModelAttribute("marine") Marine marine, BindingResult result) {
			if(result.hasErrors()) {
				return "addMarine.jsp";
			}
			else {			
				marineService.createMarine(marine);
				return "redirect:/dashboard";
			}
		}
		
		
		//Show
		@GetMapping("/marine/{id}")
		public String showMarine(Model model, HttpSession session, @PathVariable("id")Long id) {
			Marine marine = marineService.singleMarine(id);
			Long loggedID = (Long) session.getAttribute("user_id");
			model.addAttribute("logged",loggedID);
			model.addAttribute("marine",marine);
			return "Marine.jsp";
		}
	
		
		//Update-edit
		 @RequestMapping("/marine/{id}/edit")
		 public String edit(@PathVariable("id") Long id, Model model) {
			 Marine marine = marineService.singleMarine(id);
		     model.addAttribute("marine", marine);
		     return "editMarine.jsp";
		 }

		  
		 @RequestMapping(value = "/marine/{id}", method = RequestMethod.POST)
		 public String update(@Valid @ModelAttribute("marine") Marine marine, BindingResult result, Model model) {
			 if (result.hasErrors()) {
		     model.addAttribute("marine", marine);
		     return "editMarine.jsp";
		    } 
		    else {
		    	marineService.updateMarine(marine);
		    	return "redirect:/dashboard";
		    }
		  }
		
		
		//Delete
		 @GetMapping("/marine/{id}/delete")
		 public String delete(@PathVariable("id") Long id) {
			 marineService.deleteMarine(id);
			 return "redirect:/dashboard";
				
		}
		 
		  
		
		
		
		 
	
		
	 
}
