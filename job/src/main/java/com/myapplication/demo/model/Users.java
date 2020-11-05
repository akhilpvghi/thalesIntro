package com.myapplication.demo.model;

import com.sun.istack.NotNull;

import javax.persistence.*;
import javax.persistence.criteria.CriteriaBuilder;
import java.util.Set;

@Entity
@Table(name="users")
public class Users
{


    @Column(name="First_Name")
    private String First_Name;


    @Column(name="Middle_Name")
    private String Middle_Name;


    @Column(name="Last_Name")
    private String Last_Name;

    @Id
    @Column(name="Email_Id")
    private String Email_Id;



    @Column(name="Password")
    private String Password;

    @Column(name="Contact_Number")
    private Long Contact_Number;


    @Column(name="Company_Name")
    private String Company_Name;

    @Column(name="Started_In")
    private Integer Started_In;

    @Column(name="Type_of_Company")
    private String Type_of_Company;

    @Column(name="Industry")
    private String Industry;

    @Column(name="Generate_Code",length = 8)
    private String Generate_Code;

    @Column(name="Referred_Coupon",length = 8)
    private String Referred_Coupon;

    @Column(name="Balance",precision = 2)
    private Double Balance;

    @Column(name="Type_of_Business")
    private String Type_of_Business;

    @OneToOne(mappedBy = "users")
    private Billing billing;

    @OneToMany(mappedBy="users")
    private Set<Wallet> wallet;

    @OneToMany(mappedBy="users")
    private Set<Appointment> appointment;

    public Users()
    {

    }

    public Users(String first_Name, String middle_Name, String last_Name, String email_Id, String password, Long contact_Number, String company_Name, Integer started_In, String type_of_Company, String industry, String generate_Code, String referred_Coupon, Double balance, String type_of_Business) {
        First_Name = first_Name;
        Middle_Name = middle_Name;
        Last_Name = last_Name;
        Email_Id = email_Id;
        Password = password;
        Contact_Number = contact_Number;
        Company_Name = company_Name;
        Started_In = started_In;
        Type_of_Company = type_of_Company;
        Industry = industry;
        Generate_Code = generate_Code;
        Referred_Coupon = referred_Coupon;
        Balance = balance;
        Type_of_Business = type_of_Business;
    }

    public String getFirst_Name() {
        return First_Name;
    }

    public void setFirst_Name(String first_Name) {
        First_Name = first_Name;
    }

    public String getMiddle_Name() {
        return Middle_Name;
    }

    public void setMiddle_Name(String middle_Name) {
        Middle_Name = middle_Name;
    }

    public String getLast_Name() {
        return Last_Name;
    }

    public void setLast_Name(String last_Name) {
        Last_Name = last_Name;
    }

    public String getEmail_Id() {
        return Email_Id;
    }

    public void setEmail_Id(String email_Id) {
        Email_Id = email_Id;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String password) {
        Password = password;
    }

    public Long getContact_Number() {
        return Contact_Number;
    }

    public void setContact_Number(Long contact_Number) {
        Contact_Number = contact_Number;
    }

    public String getCompany_Name() {
        return Company_Name;
    }

    public void setCompany_Name(String company_Name) {
        Company_Name = company_Name;
    }

    public Integer getStarted_In() {
        return Started_In;
    }

    public void setStarted_In(Integer started_In) {
        Started_In = started_In;
    }

    public String getType_of_Company() {
        return Type_of_Company;
    }

    public void setType_of_Company(String type_of_Company) {
        Type_of_Company = type_of_Company;
    }

    public String getIndustry() {
        return Industry;
    }

    public void setIndustry(String industry) {
        Industry = industry;
    }

    public String getGenerate_Code() {
        return Generate_Code;
    }

    public void setGenerate_Code(String generate_Code) {
        Generate_Code = generate_Code;
    }

    public String getReferred_Coupon() {
        return Referred_Coupon;
    }

    public void setReferred_Coupon(String referred_Coupon) {
        Referred_Coupon = referred_Coupon;
    }

    public Double getBalance() {
        return Balance;
    }

    public void setBalance(Double balance) {
        Balance = balance;
    }

    public String getType_of_Business() {
        return Type_of_Business;
    }

    public void setType_of_Business(String type_of_Business) {
        Type_of_Business = type_of_Business;
    }

    @Override
    public String toString() {
        return "Users{" +
                "First_Name='" + First_Name + '\'' +
                ", Middle_Name='" + Middle_Name + '\'' +
                ", Last_Name='" + Last_Name + '\'' +
                ", Email_Id='" + Email_Id + '\'' +
                ", Password='" + Password + '\'' +
                ", Contact_Number=" + Contact_Number +
                ", Company_Name='" + Company_Name + '\'' +
                ", Started_In=" + Started_In +
                ", Type_of_Company='" + Type_of_Company + '\'' +
                ", Industry='" + Industry + '\'' +
                ", Generate_Code='" + Generate_Code + '\'' +
                ", Referred_Coupon='" + Referred_Coupon + '\'' +
                ", Balance=" + Balance +
                ", Type_of_Business='" + Type_of_Business + '\'' +
                '}';
    }
}
