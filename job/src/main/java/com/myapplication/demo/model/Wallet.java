package com.myapplication.demo.model;

import javax.persistence.Entity;
import javax.persistence.*;

@Entity
@Table(name="wallet")
public class Wallet {
        @Column(name = "Trans_Id")
        @Id
        String Trans_Id;

        @Column(name = "Particular")
        String Particular;

        @Column(name = "Party_Trans_Id")
        String Party_Trans_Id;

        @Column(name = "Date")
        String date;

        @Column(name = "Time")
        String time;

        @Column(name = "Debit_Amount", precision = 2)
        Double Debit_Amount;

        @Column(name = "Credit_Amount", precision = 2)
        Double Credit_Amount;

        @Column(name = "Temp_Balance", precision = 2)
        Double Temp_Balance;

        @ManyToOne
        @JoinColumn(name="Email_Id")
        private Users users;

    public Wallet()
    {

    }

    public Wallet(String trans_Id, String particular, String party_Trans_Id, String date, String time, Double debit_Amount, Double credit_Amount, Double temp_Balnace, Users users) {
        Trans_Id = trans_Id;
        Particular = particular;
        Party_Trans_Id = party_Trans_Id;
        this.date = date;
        this.time = time;
        Debit_Amount = debit_Amount;
        Credit_Amount = credit_Amount;
        Temp_Balance = temp_Balnace;
        this.users = users;
    }

    public Double getTemp_Balance() {
        return Temp_Balance;
    }

    public void setTemp_Balance(Double temp_Balnace) {
        Temp_Balance = temp_Balnace;
    }

    public String getTrans_Id() {
        return Trans_Id;
    }

    public void setTrans_Id(String trans_Id) {
        Trans_Id = trans_Id;
    }

    public String getParticular() {
        return Particular;
    }

    public void setParticular(String particular) {
        Particular = particular;
    }

    public String getParty_Trans_Id() {
        return Party_Trans_Id;
    }

    public void setParty_Trans_Id(String party_Trans_Id) {
        Party_Trans_Id = party_Trans_Id;
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

    public Double getDebit_Amount() {
        return Debit_Amount;
    }

    public void setDebit_Amount(Double debit_Amount) {
        Debit_Amount = debit_Amount;
    }

    public Double getCredit_Amount() {
        return Credit_Amount;
    }

    public void setCredit_Amount(Double credit_Amount) {
        Credit_Amount = credit_Amount;
    }

    @Override
    public String toString() {
        return "Wallet{" +
                "Trans_Id=" + Trans_Id +
                ", Particular='" + Particular + '\'' +
                ", Party_Trans_Id='" + Party_Trans_Id + '\'' +
                ", date='" + date + '\'' +
                ", time='" + time + '\'' +
                ", Debit_Amount=" + Debit_Amount +
                ", Credit_Amount=" + Credit_Amount +
                ", users=" + users +
                '}';
    }

    public Users getUsers() {
        return users;
    }

    public void setUsers(Users users) {
        this.users = users;
    }

}
