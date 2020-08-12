package com.pojo;

public class Teacher {
	private int id;
	private String name;
	public synchronized final int getId() {
		return id;
	}
	public synchronized final void setId(int id) {
		this.id = id;
	}
	public synchronized final String getName() {
		return name;
	}
	public synchronized final void setName(String name) {
		this.name = name;
	}
	@Override
	public String toString() {
		return "Teaher [id=" + id + ", name=" + name + "]";
	}
}
