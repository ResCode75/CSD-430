//Rachel Shaw - 4.2 assignment - 6/14/2025

package beanpackage;

import java.io.Serializable;

import java.util.Arrays;

public class FormBean implements Serializable{
	private static final long serialVersionUID = 1L;
	private String date;
	private String time;
	private String satisfaction;
	private String[] reasons;
	private String comments;
	
	public FormBean(){
		this.date = null;
		this.time = null;
		this.reasons = null;
		this.satisfaction = null;
		this.comments = null;
	}
	
	public void setDate(String date){
		this.date = date;
	}
	
	public String getDate() {
		return this.date;
	}
	
	public void setTime(String time) {
		this.time = time;
	}
	
	public String getTime() {
		return this.time;
	}
	
	public void setSatisfaction(String satisfaction) {
		this.satisfaction = satisfaction;
	}
	
	public String getSatisfaction() {
		return this.satisfaction;
	}
	
	public void setReasons(String[] reason) {
		this.reasons = reason;
	}
		
	
	
	public String getReasons() {
		String stringReasons = Arrays.toString(this.reasons);
		return stringReasons;
	}
	
	public void setComments(String comments) {
		this.comments = comments;
	}
	
	public String getComments() {
		return this.comments;
	}
}


