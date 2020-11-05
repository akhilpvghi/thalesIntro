package com.myapplication.demo.model;

import javax.persistence.*;

@Entity
public class Appointment
{

    @Column(name = "Appoint_Id")
    @Id
    @GeneratedValue()
    Long Appoint_Id;

    @Column(name = "Problem",length = 1000)
    String Problem;

    @Column(name = "Date")
    String date;

    @Column(name = "Time")
    String time;

    @Column(name = "Expert_Name")
    String Expert_Name;

    @Column(name = "InfoAsked")
    String InfoAsked;

    @Column(name = "InfoReceived")
    String InfoReceived;

    @Column(name = "Mode")
    String Mode;

    @Column(name = "Status")
    String Status;

    @Column(name = "Action")
    String Action;

    @Column(name = "First_appointment")
    String First_appointment;

    @ManyToOne
    @JoinColumn(name="Email_Id")
    private Users users;


    public Appointment()
    {

    }

    public Appointment(Long appoint_Id, String problem, String date, String time, String expert_Name, String infoAsked, String infoReceived, String mode, String status, String action, String first_appointment, Users users) {
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
        First_appointment = first_appointment;
        this.users = users;
    }

    @Override
    public String toString() {
        return "Appointment{" +
                "Appoint_Id=" + Appoint_Id +
                ", Problem='" + Problem + '\'' +
                ", date='" + date + '\'' +
                ", time='" + time + '\'' +
                ", Expert_Name='" + Expert_Name + '\'' +
                ", InfoAsked='" + InfoAsked + '\'' +
                ", InfoReceived='" + InfoReceived + '\'' +
                ", Mode='" + Mode + '\'' +
                ", Status='" + Status + '\'' +
                ", Action='" + Action + '\'' +
                ", First_appointment='" + First_appointment + '\'' +
                ", users=" + users +
                '}';
    }


    public String getFirst_appointment() {
        return First_appointment;
    }

    public void setFirst_appointment(String first_appointment) {
        First_appointment = first_appointment;
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

    public Users getUsers() {
        return users;
    }

    public void setUsers(Users users) {
        this.users = users;
    }

    public String getAction() {
        return Action;
    }

    public void setAction(String action) {
        Action = action;
    }
}
