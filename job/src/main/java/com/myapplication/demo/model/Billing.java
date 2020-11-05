package com.myapplication.demo.model;

import com.sun.istack.NotNull;

import javax.persistence.*;


@Entity
@Table(name="Billing")
public class Billing
{
    @Column(name="Bill_Id")
    @Id
    @GeneratedValue
    private Long id;

    @Column(name = "Name")
    private String Billing_Name;

    @Column(name="Address")
    private String Address;

    @Column(name="City")
    private String City;

    @Column(name="State")
    private String State;

    @Column(name="Pincode")
    private Integer Pincode;

    @Column(name="GST_Number")
    private String GST_Number;

    @Column(name="Pan_Card")
    private String Pan_Card;

    @OneToOne
    @JoinColumn(name = "Email_Id")
    private Users users;

    public Billing()
    {

    }

    public Billing(Long id, String address, String city, String state, Integer pincode, String GST_Number) {
        this.id = id;
        Address = address;
        City = city;
        State = state;
        Pincode = pincode;
        this.GST_Number = GST_Number;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String address) {
        Address = address;
    }

    public String getCity() {
        return City;
    }

    public void setCity(String city) {
        City = city;
    }

    public String getState() {
        return State;
    }

    public void setState(String state) {
        State = state;
    }

    public Integer getPincode() {
        return Pincode;
    }

    public void setPincode(Integer pincode) {
        Pincode = pincode;
    }

    public String getGST_Number() {
        return GST_Number;
    }

    public void setGST_Number(String GST_Number) {
        this.GST_Number = GST_Number;
    }

    public Users getUsers() {
        return users;
    }

    public void setUsers(Users users) {
        this.users = users;
    }

    public String getBilling_Name() {
        return Billing_Name;
    }

    public void setBilling_Name(String billing_Name) {
        Billing_Name = billing_Name;
    }

    public String getPan_Card() {
        return Pan_Card;
    }

    public void setPan_Card(String pan_Card) {
        Pan_Card = pan_Card;
    }

    @Override
    public String toString() {
        return "Billing{" +
                "id=" + id +
                ", Billing_Name='" + Billing_Name + '\'' +
                ", Address='" + Address + '\'' +
                ", City='" + City + '\'' +
                ", State='" + State + '\'' +
                ", Pincode=" + Pincode +
                ", GST_Number='" + GST_Number + '\'' +
                ", Pan_Card='" + Pan_Card + '\'' +
                ", users=" + users +
                '}';
    }
}
