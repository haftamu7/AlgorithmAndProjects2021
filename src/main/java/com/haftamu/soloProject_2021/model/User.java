package com.haftamu.soloProject_2021.model;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;


@Entity
@Table(name="users")
public class User {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	
	@NotEmpty
	@Size(max=15)
	private String firstName;
	
	@NotEmpty
	@Size(max=15)
	private String lastName;
	
	@Email(message = "Please enter a valid e-mail address")
	@NotBlank
	private String email;
	
	@Column(nullable = false, length = 64)
	@NotBlank
	private String password;
	
	@Transient
	@NotBlank
	private String confirmPassword;
	
	
	
	
	@OneToMany(mappedBy="customer", cascade=CascadeType.ALL, fetch=FetchType.LAZY)
	private List<Bodymassindex> coursesList;
	
	
	@ManyToMany(fetch=FetchType.LAZY)
	@JoinTable(
			name="customers",
			joinColumns = @JoinColumn(name="user_id"),
			inverseJoinColumns= @JoinColumn(name="course_id")
			)
	private List<Bodymassindex> attendees;
	
	
	
	public User() {
		
	}


	public Long getId() {
		return id;
	}


	public void setId(Long id) {
		this.id = id;
	}




	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getConfirmPassword() {
		return confirmPassword;
	}


	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}


	public String getLastName() {
		return lastName;
	}


	public void setLastName(String lastName) {
		this.lastName = lastName;
	}


	public String getFirstName() {
		return firstName;
	}


	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}





	

}

