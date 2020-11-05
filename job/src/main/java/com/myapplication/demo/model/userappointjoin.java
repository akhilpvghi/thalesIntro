package com.myapplication.demo.model;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;

public class userappointjoin
{
    //users data
    private String First_Name;
    private String Middle_Name;
    private String Last_Name;
    private String Email_Id;
    private String Password;
    private Long Contact_Number;
    private String Company_Name;
    private Integer Started_In;
    private String Type_of_Company;
    private String Industry;
    private String Generate_Code;
    private String Referred_Coupon;
    private Double Balance;
    private String Type_of_Business;

    //appointment detail
    private Long Appoint_Id;
    private String Problem;
    private String date;
    private String time;
    private String Expert_Name;
    private String InfoAsked;
    private String InfoReceived;
    private String Mode;
    private String Status;
    private String Action;

    public userappointjoin() {
    }

    public userappointjoin(String first_Name, String middle_Name, String last_Name, String email_Id, String password, Long contact_Number, String company_Name, Integer started_In, String type_of_Company, String industry, String generate_Code, String referred_Coupon, Double balance, String type_of_Business, Long appoint_Id, String problem, String date, String time, String expert_Name, String infoAsked, String infoReceived, String mode, String status, String action) {
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
        Appoint_Id = appoint_Id;
        Problem = problem;
        this.date = date;
        this.time = time;
        Expert_Name = expert_Name;
        InfoAsked = infoAsked;
        InfoReceived = infoReceived;
        Mode = mode;
        Status = status;
        Action = action;
    }

    public userappointjoin(String first_Name, String email_Id, String status, String date) {
        First_Name = first_Name;
        Email_Id = email_Id;
        this.date = date;
        Status = status;
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

    public Long getAppoint_Id() {
        return Appoint_Id;
    }

    public void setAppoint_Id(Long appoint_Id) {
        Appoint_Id = appoint_Id;
    }

    public String getProblem() {
        return Problem;
    }

    public void setProblem(String problem) {
        Problem = problem;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getExpert_Name() {
        return Expert_Name;
    }

    public void setExpert_Name(String expert_Name) {
        Expert_Name = expert_Name;
    }

    public String getInfoAsked() {
        return InfoAsked;
    }

    public void setInfoAsked(String infoAsked) {
        InfoAsked = infoAsked;
    }

    public String getInfoReceived() {
        return InfoReceived;
    }

    public void setInfoReceived(String infoReceived) {
        InfoReceived = infoReceived;
    }

    public String getMode() {
        return Mode;
    }

    public void setMode(String mode) {
        Mode = mode;
    }

    public String getStatus() {
        return Status;
    }

    public void setStatus(String status) {
        Status = status;
    }

    public String getAction() {
        return Action;
    }

    public void setAction(String action) {
        Action = action;
    }

    @Override
    public String toString() {
        return "userappointjoin{" +
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
                ", Appoint_Id=" + Appoint_Id +
                ", Problem='" + Problem + '\'' +
                ", date='" + date + '\'' +
                ", time='" + time + '\'' +
                ", Expert_Name='" + Expert_Name + '\'' +
                ", InfoAsked='" + InfoAsked + '\'' +
                ", InfoReceived='" + InfoReceived + '\'' +
                ", Mode='" + Mode + '\'' +
                ", Status='" + Status + '\'' +
                ", Action='" + Action + '\'' +
                '}';
    }
}
