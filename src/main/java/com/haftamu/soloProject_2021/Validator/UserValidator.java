package com.haftamu.soloProject_2021.Validator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;

import com.haftamu.soloProject_2021.model.User;
import com.haftamu.soloProject_2021.repository.UserRepositories;


@Component
public class UserValidator {

	@Autowired
	private UserRepositories uRepo;
	
	public boolean supports(Class<?> clazz) {
		return User.class.equals(clazz);
	}
	
	public void validate(Object target, Errors errors) {
		User user = (User) target;
		
		// Make Sure Password and Confirm Password match
		if(!user.getPassword().equals(user.getConfirmPassword())) {
			errors.rejectValue("password", "Match", "Passwords do not match!!!!!!!!!!!!!!!!!!!!!!!!!!");
		}
	
		//Make Sure Email is Unique in the Database
		if(this.uRepo.existsByEmail(user.getEmail())) {
			errors.rejectValue("email", "Unique", "Hey, Email is already taken!!!!!!!!!!!!!!!!!");
		}
	}
		
			
}
