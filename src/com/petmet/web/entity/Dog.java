package com.petmet.web.entity;

import java.util.Date;

public class Dog {
	 private int id;
	 private String name;
	 private String kind;
	 private String gender;
	 private String neut;
	 private String birth;
	 private String weight;
	 private String content;
	 private String character;
	 private String files;
	 private String master_id;
	 private Date reg_date;

	 public Dog() {
		 this(0,null,null,null,null,null,null,null,null,null,null,null);
	 }

	public Dog(int id, String name, String kind, String gender, String neut, String birth, String weight,
			String content, String character, String files, String master_id, Date reg_date) {
		
		this.id = id;
		this.name = name;
		this.kind = kind;
		this.gender = gender;
		this.neut = neut;
		this.birth = birth;
		this.weight = weight;
		this.content = content;
		this.character = character;
		this.files = files;
		this.master_id = master_id;
		this.reg_date = reg_date;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getKind() {
		return kind;
	}

	public void setKind(String kind) {
		this.kind = kind;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getNeut() {
		return neut;
	}

	public void setNeut(String neut) {
		this.neut = neut;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getWeight() {
		return weight;
	}

	public void setWeight(String weight) {
		this.weight = weight;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getCharacter() {
		return character;
	}

	public void setCharacter(String character) {
		this.character = character;
	}

	public String getFiles() {
		return files;
	}

	public void setFiles(String files) {
		this.files = files;
	}

	public String getMaster_id() {
		return master_id;
	}

	public void setMaster_id(String master_id) {
		this.master_id = master_id;
	}

	public Date getReg_date() {
		return reg_date;
	}

	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}

	@Override
	public String toString() {
		return "Dog [id=" + id + ", name=" + name + ", kind=" + kind + ", gender=" + gender + ", neut=" + neut
				+ ", birth=" + birth + ", weight=" + weight + ", content=" + content + ", character=" + character
				+ ", files=" + files + ", master_id=" + master_id + ", reg_date=" + reg_date + "]";
	}
	 
	 
}