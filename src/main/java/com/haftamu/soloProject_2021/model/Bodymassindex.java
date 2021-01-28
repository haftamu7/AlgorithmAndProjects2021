package com.haftamu.soloProject_2021.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;



@Entity
@Table(name="health")
public class Bodymassindex {

	
	
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	
	@NotBlank
	private String bodymassindex;
	
	@NotBlank
	private String weight;
	
	@Min(1)
	private Long height;
	
	
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="user_id")
	private User customer;

	@ManyToMany(fetch=FetchType.LAZY)
	@JoinTable(
			name="customers",
			joinColumns = @JoinColumn(name="course_id"),
			inverseJoinColumns = @JoinColumn(name="user_id")
	)
	private List<User> customers;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getBodymassindex() {
		return bodymassindex;
	}

	public void setBodymassindex(String bodymassindex) {
		this.bodymassindex = bodymassindex;
	}

	public String getWeight() {
		return weight;
	}

	public void setWeight(String weight) {
		this.weight = weight;
	}

	public Long getHeight() {
		return height;
	}

	public void setHeight(Long height) {
		this.height = height;
	}

	public User getCustomer() {
		return customer;
	}

	public void setCustomer(User customer) {
		this.customer = customer;
	}

	public List<User> getCustomers() {
		return customers;
	}

	public void setCustomers(List<User> customers) {
		this.customers = customers;
	}
	
	
	
}
