package com.Entities;

import java.sql.Date;

public class User {
    private String namef;
    private String namel;
    private String fatherNamef;
    private String fatherNamel;
    private Date dateOfBirth;
    private String gender;
    private String meritalStatus;
    private String cast;
    private String address;
    private String village;
    private String city;
    private String state;
    private int zipCode;
    private String country;
    private String email;
    private int phone;
    private String education;
    private String applicantPhoto;
    private String applyFor;
    private String experience;
    private String experienceDetails;
    
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public User(String namef, String namel, String fatherNamef, String fatherNamel, Date dateOfBirth, String gender,
			String meritalStatus, String cast, String address, String village, String city, String state, int zipCode,
			String country, String email, int phone, String education, String applicantPhoto, String applyFor,
			String experience, String experienceDetails) {
		super();
		this.namef = namef;
		this.namel = namel;
		this.fatherNamef = fatherNamef;
		this.fatherNamel = fatherNamel;
		this.dateOfBirth = dateOfBirth;
		this.gender = gender;
		this.meritalStatus = meritalStatus;
		this.cast = cast;
		this.address = address;
		this.village = village;
		this.city = city;
		this.state = state;
		this.zipCode = zipCode;
		this.country = country;
		this.email = email;
		this.phone = phone;
		this.education = education;
		this.applicantPhoto = applicantPhoto;
		this.applyFor = applyFor;
		this.experience = experience;
		this.experienceDetails = experienceDetails;
	}

	public User(String namef, String namel, String fatherNamef, String fatherNamel, String gender, String meritalStatus,
			String cast, String address, String village, String city, String state, String country, String email,
			String education, String applicantPhoto, String applyFor, String experience, String experienceDetails) {
		super();
		this.namef = namef;
		this.namel = namel;
		this.fatherNamef = fatherNamef;
		this.fatherNamel = fatherNamel;
		this.gender = gender;
		this.meritalStatus = meritalStatus;
		this.cast = cast;
		this.address = address;
		this.village = village;
		this.city = city;
		this.state = state;
		this.country = country;
		this.email = email;
		this.education = education;
		this.applicantPhoto = applicantPhoto;
		this.applyFor = applyFor;
		this.experience = experience;
		this.experienceDetails = experienceDetails;
	}

	public String getNamef() {
		return namef;
	}

	public void setNamef(String namef) {
		this.namef = namef;
	}

	public String getNamel() {
		return namel;
	}

	public void setNamel(String namel) {
		this.namel = namel;
	}

	public String getFatherNamef() {
		return fatherNamef;
	}

	public void setFatherNamef(String fatherNamef) {
		this.fatherNamef = fatherNamef;
	}

	public String getFatherNamel() {
		return fatherNamel;
	}

	public void setFatherNamel(String fatherNamel) {
		this.fatherNamel = fatherNamel;
	}

	public Date getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getMeritalStatus() {
		return meritalStatus;
	}

	public void setMeritalStatus(String meritalStatus) {
		this.meritalStatus = meritalStatus;
	}

	public String getCast() {
		return cast;
	}

	public void setCast(String cast) {
		this.cast = cast;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getVillage() {
		return village;
	}

	public void setVillage(String village) {
		this.village = village;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public int getZipCode() {
		return zipCode;
	}

	public void setZipCode(int zipCode) {
		this.zipCode = zipCode;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getPhone() {
		return phone;
	}

	public void setPhone(int phone) {
		this.phone = phone;
	}

	public String getEducation() {
		return education;
	}

	public void setEducation(String education) {
		this.education = education;
	}

	public String getApplicantPhoto() {
		return applicantPhoto;
	}

	public void setApplicantPhoto(String applicantPhoto) {
		this.applicantPhoto = applicantPhoto;
	}

	public String getApplyFor() {
		return applyFor;
	}

	public void setApplyFor(String applyFor) {
		this.applyFor = applyFor;
	}

	public String getExperience() {
		return experience;
	}

	public void setExperience(String experience) {
		this.experience = experience;
	}

	public String getExperienceDetails() {
		return experienceDetails;
	}

	public void setExperienceDetails(String experienceDetails) {
		this.experienceDetails = experienceDetails;
	}

	@Override
	public String toString() {
		return "User [namef=" + namef + ", namel=" + namel + ", fatherNamef=" + fatherNamef + ", fatherNamel="
				+ fatherNamel + ", dateOfBirth=" + dateOfBirth + ", gender=" + gender + ", meritalStatus="
				+ meritalStatus + ", cast=" + cast + ", address=" + address + ", village=" + village + ", city=" + city
				+ ", state=" + state + ", zipCode=" + zipCode + ", country=" + country + ", email=" + email + ", phone="
				+ phone + ", education=" + education + ", applicantPhoto=" + applicantPhoto + ", applyFor=" + applyFor
				+ ", experience=" + experience + ", experienceDetails=" + experienceDetails + "]";
	}
}
