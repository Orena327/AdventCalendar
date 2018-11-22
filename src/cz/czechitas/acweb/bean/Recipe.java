package cz.czechitas.acweb.bean;

import java.util.ArrayList;

public class Recipe {
	private String name;
	private ArrayList<String>suroviny=new ArrayList<String>();
	private ArrayList<String>postup=new ArrayList<String>();
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public ArrayList<String> getSuroviny() {
		return suroviny;
	}
	public void setSuroviny(ArrayList<String> suroviny) {
		this.suroviny = suroviny;
	}
	public ArrayList<String> getPostup() {
		return postup;
	}
	public void setPostup(ArrayList<String> postup) {
		this.postup = postup;
	}
	

}
