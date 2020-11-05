package com.myapplication.demo.service;

import com.myapplication.demo.dao.UserRepo;
import com.myapplication.demo.model.Users;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class Validation {

    @Autowired
    UserRepo ur;

    public boolean validatecheck(String userid, String pass)
    {
        Users users = ur.findById(userid).orElse(new Users());
        String u = users.getEmail_Id();
        String p = users.getPassword();


        if(u==null) {

            return false;
        }
        else if(p.equals(pass))
        {

            return true;
        }
        return false;
    }
}
