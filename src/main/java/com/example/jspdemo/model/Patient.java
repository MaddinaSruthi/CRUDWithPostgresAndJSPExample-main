package com.example.jspdemo.model;
import java.util.List;
import javax.persistence.*;

@Entity
public class Patient {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    @Column
    private String name;
    @Column
    private String aname;
    @Column
    private String bname;
    @Column
    private String doB;
    @Column
    private String address;
	@Column
    private String idproof;
    @Column
    private String aidproof;
    @Column
    private String bidproof;
    @Column
    private String contactNumber;
    @Column
    private String acontactNumber;
    @Column
    private String bcontactNumber;
    @Column
    private String emergencyContact;
    @Column
    private String primaryIllness;
    @Column
    private String symptoms;
    @Column
    private String healthInsurance;
    @Column
    private String preferredDoctor;
    @Column
    private String gender;

    @OneToMany(mappedBy = "patient")
    private List<AccompanyingPerson> accompanyingPersons;

    public List<AccompanyingPerson> getAccompanyingPersons() {
        return accompanyingPersons;
    }
    
    public void setAccompanyingPersons(List<AccompanyingPerson> accompanyingPersons) {
        this.accompanyingPersons = accompanyingPersons;
    }
    
    public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAname() {
		return aname;
	}

	public void setAname(String aname) {
		this.aname = aname;
	}

	public String getBname() {
		return bname;
	}

	public void setBname(String bname) {
		this.bname = bname;
	}

	public String getDoB() {
		return doB;
	}

	public void setDoB(String doB) {
		this.doB = doB;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getIdproof() {
		return idproof;
	}

	public void setIdproof(String idproof) {
		this.idproof = idproof;
	}

	public String getAidproof() {
		return aidproof;
	}

	public void setAidproof(String aidproof) {
		this.aidproof = aidproof;
	}

	public String getBidproof() {
		return bidproof;
	}

	public void setBidproof(String bidproof) {
		this.bidproof = bidproof;
	}

	public String getContactNumber() {
		return contactNumber;
	}

	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}

	public String getAcontactNumber() {
		return acontactNumber;
	}

	public void setAcontactNumber(String acontactNumber) {
		this.acontactNumber = acontactNumber;
	}

	public String getBcontactNumber() {
		return bcontactNumber;
	}

	public void setBcontactNumber(String bcontactNumber) {
		this.bcontactNumber = bcontactNumber;
	}

	public String getEmergencyContact() {
		return emergencyContact;
	}

	public void setEmergencyContact(String emergencyContact) {
		this.emergencyContact = emergencyContact;
	}

	public String getPrimaryIllness() {
		return primaryIllness;
	}

	public void setPrimaryIllness(String primaryIllness) {
		this.primaryIllness = primaryIllness;
	}

	public String getSymptoms() {
		return symptoms;
	}

	public void setSymptoms(String symptoms) {
		this.symptoms = symptoms;
	}

	public String getHealthInsurance() {
		return healthInsurance;
	}

	public void setHealthInsurance(String healthInsurance) {
		this.healthInsurance = healthInsurance;
	}

	public String getPreferredDoctor() {
		return preferredDoctor;
	}

	public void setPreferredDoctor(String preferredDoctor) {
		this.preferredDoctor = preferredDoctor;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}
}
