package com.myapplication.demo.controller;


import com.myapplication.demo.dao.UserRepo;
import com.myapplication.demo.model.Users;
import com.myapplication.demo.service.EmailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class PasswordController {


    @Autowired
    EmailService emailService;

    @Autowired
    UserRepo userRepo;

    // Display forgotPassword page
    @GetMapping("/forgot")
    public ModelAndView displayForgotPasswordPage() {
        return new ModelAndView("forgot");
    }

    //sending password to email
    @PostMapping("/sendmail")
    public ModelAndView submitemail(@RequestParam("userid") String emailid, ModelMap modelMap)
    {
        //getting user details
        Users users = userRepo.findById(emailid).orElse(new Users());

        //if invalid emailid
        if(users.getPassword()==null || users.getPassword().equals(""))
        {
            String s1="Invalid Email Id";
            modelMap.put("error",s1);
            return new ModelAndView("forgot");
        }

        //setting credentials of sender
        SimpleMailMessage passwordResetEmail = new SimpleMailMessage();
        passwordResetEmail.setFrom("tiwariprankur61@gmail.com");

        //To email id
        passwordResetEmail.setTo(users.getEmail_Id());

        //content of email
        passwordResetEmail.setSubject("Forget Password Request");
        passwordResetEmail.setText("Your Password is: "+users.getPassword());

        //sending
        emailService.sendEmail(passwordResetEmail);

        //mentioning on interface
        String s1="Your Reset Password Mail has been sent to " + users.getEmail_Id();
        modelMap.put("error",s1);
        return new ModelAndView("login");
    }

}