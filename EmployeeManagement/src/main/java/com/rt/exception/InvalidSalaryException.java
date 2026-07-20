package com.rt.exception;

public class InvalidSalaryException extends RuntimeException{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public InvalidSalaryException(String str) {
		super(str);
	}

}
