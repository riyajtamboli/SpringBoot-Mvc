package com.rt.model;

public class Reservation {
	
	String firstName;
	String lastName;
	
	public Reservation(String firstName, String lastName) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	@Override
	public String toString() {
		return "Reservation [firstName=" + firstName + ", lastName=" + lastName + "]";
	}

	public Reservation() {
		super();
	}
	
	
}
