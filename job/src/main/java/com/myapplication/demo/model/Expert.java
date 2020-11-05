package com.myapplication.demo.model;

import com.sun.istack.NotNull;
import org.springframework.context.annotation.Primary;

import javax.persistence.*;

@Entity
@Table(name="Expert")
public class Expert {
        @NotNull
        @Column(name="First_Name")
        private String First_Name;
        @Column(name="Last_Name")
        private String Last_Name;
        @Id
        @Column(name="Contact_Number")
        private Long Contact_Number;
        @Column(name="Profile")
        private String Profile;
        @Column(name= "Middle_Name")
        private String Middle_name;

    public Expert()
    {

    }

    public Expert(String first_Name, String last_Name, Long contact_Number, String profile, String middle_name) {
        First_Name = first_Name;
        Last_Name = last_Name;
        Contact_Number = contact_Number;
        Profile = profile;
        Middle_name = middle_name;
    }

    public String getFirst_Name() {
        return First_Name;
    }

    public void setFirst_Name(String first_Name) {
        First_Name = first_Name;
    }

    public String getLast_Name() {
        return Last_Name;
    }

    public void setLast_Name(String last_Name) {
        Last_Name = last_Name;
    }

    public String getMiddle_name() {
        return Middle_name;
    }

    public void setMiddle_name(String middle_name) {
        Middle_name = middle_name;
    }

    public long getContact_Number() {
        return Contact_Number;
    }

    public void setContact_Number(long contact_Number) {
        Contact_Number = contact_Number;
    }

    public String getProfile() {
        return Profile;
    }

    public void setProfile(String profile) {
        Profile = profile;
    }


    @Override
    public String toString() {
        return "Expert{" +
                "First_Name='" + First_Name + '\'' +
                ", Last_Name='" + Last_Name + '\'' +
                ", Contact_Number=" + Contact_Number +
                ", Profile='" + Profile + '\'' +
                ", Middle_name='" + Middle_name + '\'' +
                '}';
    }
}
