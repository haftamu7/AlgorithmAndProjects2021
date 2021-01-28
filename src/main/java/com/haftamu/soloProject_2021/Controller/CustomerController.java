package com.haftamu.soloProject_2021.Controller;

import java.util.ArrayList;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.haftamu.soloProject_2021.Validator.UserValidator;
import com.haftamu.soloProject_2021.model.User;
import com.haftamu.soloProject_2021.repository.UserRepositories;
import com.haftamu.soloProject_2021.services.UserService;

@Controller
public class CustomerController {
	@Autowired
	private UserService uService;
	@Autowired
	private UserValidator validator;
	
	@Autowired
	private UserRepositories repo;
	
	@Autowired
	private JavaMailSender mailSenderObj;
	
	@GetMapping("/home")
	private String index() {
		return "home.jsp";
	}
	
	
	@GetMapping("/register")
	private String register(Model model) {
		
		User user = new User();
		model.addAttribute("user", user);
		return "register.jsp";
	}
	
	

	@GetMapping("/login")
	private String login() {
		return "login.jsp";
	}
	
	
	
	
	
	@PostMapping("/register")
	public String processRegistration(@Valid @ModelAttribute("user") User user, BindingResult result, RedirectAttributes redirectAttrs,HttpSession session) {
		if(result.hasErrors()) {
			return "register.jsp";
		} else if(user.getEmail().equals(repo.findByEmail("haftamu7@gmail.com"))) {
			return "Email Already Register";
			
		}
		   sendmail(user);
            uService.registerUser(user);
			return "success.jsp";	
}
	
	
	
	private void sendmail(User user) {
		final String emailToRecipient = user.getEmail();
		final String emailSubject = "Successfully Registered To our services";
		final String emailMessage = "Dear" + " " +  user.getFirstName() + ","  + " " + "Congratulations, you have register to our service successfully.";
		
		mailSenderObj.send( new MimeMessagePreparator() {

			@Override
			public void prepare(MimeMessage mimeMessage) throws Exception {
				// TODO Auto-generated method stub
				MimeMessageHelper mimeMessageHelperObj = new MimeMessageHelper(mimeMessage, true, "UTF-8");
				mimeMessageHelperObj.setTo(emailToRecipient);
				mimeMessageHelperObj.setText(emailMessage);
				mimeMessageHelperObj.setSubject(emailSubject);
				
				
			}
		
	});
	}


	@PostMapping("/login")
	public String signin(HttpSession session, @RequestParam("email") String email, @RequestParam("password") String password, RedirectAttributes redirectAttrs) {
		if(!this.uService.authenicateUser(email, password)) {
			redirectAttrs.addFlashAttribute("loginError", "Invalid Credentials please try again.");
			return "redirect:/login";
		}
		User user = this.uService.getByEmail(email);
		session.setAttribute("user_id", user.getId());
		return "redirect:/bmi";
	}
	
	
	@GetMapping("/bmi")
	private String bodymassindex(HttpSession session, Model model) {
		if(session.getAttribute("index")==null) {
			session.setAttribute("index", 0);
		}
		model.addAttribute("bodyindex",session.getAttribute("index"));
		 session.invalidate();
		return "bmi.jsp";
	}
	
	
//	Below 18.5	Underweight
//	18.5 – 24.9	Normal
//	25.0 – 29.9	Overweight
//	>=	 30.0 Obese
//	BMI = (	Weight in Pounds / (Height in inches) x (Height in inches)	) x 703
	
	@PostMapping("/bmi")
	public String bmi(@RequestParam("weight") double weight, @RequestParam("height") double height, @RequestParam("bodymass") double bodymass, HttpSession session) {
		bodymass = weight / (height*height*144) *703;
		 session.setAttribute("index", bodymass);
		
		return "redirect:/bmi";
}

	
	@GetMapping("/foodselection")
	public String foodcoice() {

		return "recommondedFoods.jsp";
}
	
	
	@GetMapping("/feedback")
	public String feedBack() {

		return "feedback.jsp";
}
	@PostMapping("/feedback")
	public String feedBackCustomer() {

		
		return "redirect:/feedback";
}
	@GetMapping("/aboutus")
	public String aboutUs() {

		return "aboutus.jsp";
}
	@PostMapping("/aboutus")
	public String about() {

		
		return "redirect:/aboutus";
}
	
	
	
	@GetMapping("/logout")
	private String logOut(HttpSession session) {
		session.invalidate();
		return "redirect:/home";
		
	}
	
	
	
	@GetMapping("/delete/{id}")
	public String deleteCourse(@PathVariable("id") Long id) {
		User deleteUser = this.uService.findUser(id);
		this.uService.deleteUser(deleteUser);
		
		return "redirect:/register";
	}
	
	
	
}