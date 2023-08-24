package com.example.jspdemo.model;

import javax.persistence.*;

@Entity
@Table(name="AccompanyingPersonDetails")
public class AccompanyingPerson {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column
    private String name;

    @Column
    private String doB;

    @Column
    private String address;

    @Column
    private String idproof;

    @Column
    private Integer contactNumber;

    @Column
    private Integer emergencyContact;

    @Column
    private String primaryIllness;

    @Column
    private String symptoms;

    @Column
    private String healthInsurance;

    @Column
    private String PreferredDoctor;

    @Column
    private String gender;
    
    @ManyToOne
    @JoinColumn(name = "patient_id")
    private Patient patient;
      // Getters
      public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getDoB(){
        return doB;
    }

    public String getAddress(){
        return address;
    }

    public String getIdproof(){
        return idproof;
    }

    public Integer getContactNumber(){
        return contactNumber;
    }

    public Integer getEmergencyContact(){
        return emergencyContact;
    }

    public String getPrimaryIllness(){
        return primaryIllness;
    }

    public String getSymptoms(){
        return symptoms;
    }

    public String getHealthInsurance(){
        return healthInsurance;
    }

    public String getPreferredDoctor(){
        return PreferredDoctor;
    }

    public String getGender(){
        return gender;
    }

    // Add getters for other attributes (Contact number, ID proof, etc.)

    public Patient getPatient() {
        return patient;
    }

    // Setters
    public void setId(Long id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setDoB(String doB){
        this.doB = doB;
    }

    public void getAddress(String address){
        this.address = address;
    }

    public void getIdproof(String idproof){
        this.idproof = idproof;
    }

    public void getContactNumber(Integer contactNumber){
        this.contactNumber = contactNumber;
    }

    public void getEmergencyContact(Integer emergencyContact){
        this.emergencyContact = emergencyContact;
    }

    public void getPrimaryIllness(String primaryIllness){
        this.primaryIllness = primaryIllness;
    }

    public void getSymptoms(String symptoms){
        this.symptoms = symptoms;
    }

    public void getHealthInsurance(String healthInsurance){
        this.healthInsurance = healthInsurance;
    }

    public void getPreferredDoctor(String preferredDoctor){
        this.PreferredDoctor= preferredDoctor;
    }

    public void getGender(String gender){
        this.gender = gender;
    }

    // Add setters for other attributes (Contact number, ID proof, etc.)

    public void setPatient(Patient patient) {
        this.patient = patient;
    }
}
