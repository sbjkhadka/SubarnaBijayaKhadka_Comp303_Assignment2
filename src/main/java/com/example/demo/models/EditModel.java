package com.example.demo.models;

public class EditModel {
	
	private String somethingToEdit;

	public EditModel() {
		super();
		// TODO Auto-generated constructor stub
	}

	public EditModel(String somethingToEdit) {
		super();
		this.somethingToEdit = somethingToEdit;
	}

	public String getSomethingToEdit() {
		return somethingToEdit;
	}

	public void setSomethingToEdit(String somethingToEdit) {
		this.somethingToEdit = somethingToEdit;
	}

	@Override
	public String toString() {
		return "EditModel [somethingToEdit=" + somethingToEdit + "]";
	}
	
	

}
