package com.DatabaseAccessObject;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.Entities.User;

public class UserDAO {
	private Connection con;

    public UserDAO(Connection con) {
        this.con = con;
    }

    //method to insert user to data base:
    public boolean saveUser(User user) {
        boolean f = false;
        try {
            //user -->database

            String query = "insert into user(namef,namel,fatherNamef,fatherNamel,dateOfBirth,gender,meritalStatus,cast,address,village,city,state,zipCode,country,email,phone,education,applicantPhoto,applyFor,experience,experienceDetails) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement pstmt = this.con.prepareStatement(query);
            pstmt.setString(1, user.getNamef());
            pstmt.setString(2, user.getNamel());
            pstmt.setString(3, user.getFatherNamef());
            pstmt.setString(4, user.getFatherNamel());
            pstmt.setDate(5, user.getDateOfBirth());
            pstmt.setString(6, user.getGender());
            pstmt.setString(7, user.getMeritalStatus());
            pstmt.setString(8, user.getCast());
            pstmt.setString(9, user.getAddress());
            pstmt.setString(10, user.getVillage());
            pstmt.setString(11, user.getCity());
            pstmt.setString(12, user.getState());
            pstmt.setInt(13, user.getZipCode());
            pstmt.setString(14, user.getCountry());
            pstmt.setString(15, user.getEmail());
            pstmt.setInt(16, user.getPhone());
            pstmt.setString(17, user.getEducation());
            pstmt.setString(18, user.getApplicantPhoto());
            pstmt.setString(19, user.getApplyFor());
            pstmt.setString(20, user.getExperience());
            pstmt.setString(21, user.getExperienceDetails());

            pstmt.executeUpdate();
            f = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return f;
    }
    
    
    
    
    // Get user email and password
    public User getUserByEmail(String email) {
    	User user = null;
    	
    	try {
    		String Query = "SELECT * FROM user WHERE email = ?";
    		PreparedStatement pstmt = con.prepareStatement(Query);
    		pstmt.setString(1, email);
    		
    		// fire the query
    		 ResultSet rs = pstmt.executeQuery();
    		 if(rs.next()) {
    			 user = new User();
    			 
    			 // get data from database
    			 String namef = rs.getString("namef");
    			 // set to user object
    			 user.setNamef(namef);
    			 
    			 String namel = rs.getString("namel");
    			 user.setNamel(namel);
    			 
    			 user.setFatherNamef(rs.getString("fatherNamef"));
    			 user.setFatherNamel(rs.getString("fatherNamel"));
    			 user.setDateOfBirth(rs.getDate("dateOfBirth"));
    			 user.setGender(rs.getString("gender"));
    			 user.setMeritalStatus(rs.getString("meritalStatus"));
    			 user.setCast(rs.getString("cast"));
    			 user.setAddress(rs.getString("address"));
    			 user.setVillage(rs.getString("village"));
    			 user.setCity(rs.getString("city"));
    			 user.setState(rs.getString("state"));
    			 user.setZipCode(rs.getInt("zipCode"));
    			 user.setCountry(rs.getString("country"));
    			 user.setEmail(rs.getString("email"));
    			 user.setPhone(rs.getInt("phone"));
    			 user.setEducation(rs.getString("education"));
    			 user.setApplicantPhoto(rs.getString("applicantPhoto"));
    			 user.setApplyFor(rs.getString("applyFor"));
    			 user.setExperience(rs.getString("experience"));
    			 user.setExperienceDetails(rs.getString("experienceDetails"));
    		 }
    	} catch (Exception e) {
    		e.printStackTrace();
    	}
    	
    	return user;
    }
    
    // Edit(Update) Profile
    public boolean updateUser(User user) {
    	boolean isQueryRun = false;
    	try {
    		String Query = "UPDATE user SET namef=?,namel=?,fatherNamef=?,fatherNamel=?,dateOfBirth=?,gender=?,meritalStatus=?,cast=?,address=?,village=?,city=?,state=?,zipCode=?,country=?,email=?,education=?,applicantPhoto=?,applyFor=?,experience=?,experienceDetails=? WHERE phone=?";
    		PreparedStatement pstmt = con.prepareStatement(Query);
    		pstmt.setString(1, user.getNamef());
            pstmt.setString(2, user.getNamel());
            pstmt.setString(3, user.getFatherNamef());
            pstmt.setString(4, user.getFatherNamel());
            pstmt.setDate(5, user.getDateOfBirth());
            pstmt.setString(6, user.getGender());
            pstmt.setString(7, user.getMeritalStatus());
            pstmt.setString(8, user.getCast());
            pstmt.setString(9, user.getAddress());
            pstmt.setString(10, user.getVillage());
            pstmt.setString(11, user.getCity());
            pstmt.setString(12, user.getState());
            pstmt.setInt(13, user.getZipCode());
            pstmt.setString(14, user.getCountry());
            pstmt.setString(15, user.getEmail());
            pstmt.setInt(16, user.getPhone());
            pstmt.setString(17, user.getEducation());
            pstmt.setString(18, user.getApplicantPhoto());
            pstmt.setString(19, user.getApplyFor());
            pstmt.setString(20, user.getExperience());
            pstmt.setString(21, user.getExperienceDetails());
    		
    		pstmt.executeUpdate();
    		isQueryRun = true;
    		
    	} catch (Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isQueryRun;
    }
    
    public User getUserByUserPhone(int userPhone) {
    	User user = null;
    	try {
    		String Query = "SELECT * FROM user WHERE phone=?";
    		PreparedStatement pstmt = this.con.prepareStatement(Query);
    		pstmt.setInt(1, userPhone);
    		
    		// fire the query
	   		 ResultSet rs = pstmt.executeQuery();
	   		 if(rs.next()) {
	   			 user = new User();
	   			 
	   			 // get data from database
	   			 String namef = rs.getString("namef");
	   			 // set to user object
	   			 user.setNamef(namef);
	   			 
	   			 String namel = rs.getString("namel");
	   			 user.setNamel(namel);
	   			 
	   			 user.setFatherNamef(rs.getString("fatherNamef"));
	   			 user.setFatherNamel(rs.getString("fatherNamel"));
	   			 user.setDateOfBirth(rs.getDate("dateOfBirth"));
	   			 user.setGender(rs.getString("gender"));
	   			 user.setMeritalStatus(rs.getString("meritalStatus"));
	   			 user.setCast(rs.getString("cast"));
	   			 user.setAddress(rs.getString("address"));
	   			 user.setVillage(rs.getString("village"));
	   			 user.setCity(rs.getString("city"));
	   			 user.setState(rs.getString("state"));
	   			 user.setZipCode(rs.getInt("zipCode"));
	   			 user.setCountry(rs.getString("country"));
	   			 user.setEmail(rs.getString("email"));
	   			 user.setPhone(rs.getInt("phone"));
	   			 user.setEducation(rs.getString("education"));
	   			 user.setApplicantPhoto(rs.getString("applicantPhoto"));
	   			 user.setApplyFor(rs.getString("applyFor"));
	   			 user.setExperience(rs.getString("experience"));
	   			 user.setExperienceDetails(rs.getString("experienceDetails"));
	   		 }
    		
    	} catch (Exception e) {
    		e.printStackTrace();
    	}
    	
		return user;
    }
}
