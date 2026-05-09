/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;
import java.io.Serializable;
/**
 *
 * @author HP
 */
public class CVModel implements Serializable {
    private String name;
    private String email;
    private String address;
    private String phNo;
    private String eduLevel;
    private String experience;
    private String skills;
    private String profileSummary;
    
    public CVModel(){}
    
    public String getName(){ return name; }
    public void setName(String name){ this.name = name; }
    
    public String getEmail(){ return email; }
    public void setEmail(String email){ this.email = email; }
    
    public String getAddress(){ return address; }
    public void setAddress(String address){ this.address = address; }
    
    public String getPhNo(){ return phNo; }
    public void setPhNo(String phNo){ this.phNo = phNo; }
    
    public String getEduLevel(){ return eduLevel; }
    public void setEduLevel(String eduLevel){ this.eduLevel = eduLevel; }
    
    public String getExperience(){ return experience; }
    public void setExperience(String experience){ this.experience = experience; }
    
    public String getSkills(){ return skills; }
    public void setSkills(String skills){ this.skills = skills; }

    public String getProfileSummary() { return profileSummary; }
    public void setProfileSummary(String profileSummary) { this.profileSummary = profileSummary; }
}
//