package com.haftamu.soloProject_2021.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.haftamu.soloProject_2021.model.User;



@Repository
public interface UserRepositories extends CrudRepository<User, Long>{
	
	List<User> findAll();
	boolean existsByEmail(String email);
	User findByEmail(String email);
	

}