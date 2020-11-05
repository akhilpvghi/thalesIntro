package com.myapplication.demo.service;


import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;


public class UserId
{
    private String userid;

    public UserId()
    {

    }

    public UserId(String userid) {
        this.userid = userid;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public void remove()
    {
        userid=null;
    }

    @Override
    public String toString() {
        return "UserId{" +
                "userid='" + userid + '\'' +
                '}';
    }
}
