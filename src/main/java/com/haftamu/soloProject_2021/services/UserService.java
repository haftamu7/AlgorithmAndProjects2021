package com.haftamu.soloProject_2021.services;

import java.util.List;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.haftamu.soloProject_2021.model.User;
import com.haftamu.soloProject_2021.repository.UserRepositories;



@Service
public class UserService {
	@Autowired
	private UserRepositories uRepo;
	
	public User findUser(Long id) {
		User user = this.uRepo.findById(id).orElse(null);
		return user;
	}
	
	public List<User> allUsers(){
		return this.uRepo.findAll();
	}
	
	public User registerUser(User newUser) {
		String hash = BCrypt.hashpw(newUser.getPassword(), BCrypt.gensalt());
		newUser.setPassword(hash);
		return this.uRepo.save(newUser);
	}
	
    public boolean authenicateUser(String email, String password) {
			User user = this.uRepo.findByEmail(email);
			
			if(user == null) {
				return false;
			}
			return BCrypt.checkpw(password, user.getPassword());
		}
		
		public User getByEmail(String email) {
			return this.uRepo.findByEmail(email);
		}

		public void deleteUser(User user) {
			this.uRepo.delete(user);
		}
}
