package com.myapplication.demo.controller;

import com.myapplication.demo.dao.AppointmentRepo;
import com.myapplication.demo.dao.UserRepo;
import com.myapplication.demo.dao.WalletRepo;
import com.myapplication.demo.model.Appointment;
import com.myapplication.demo.model.Expert;
import com.myapplication.demo.model.Users;
import com.myapplication.demo.model.Wallet;
import com.myapplication.demo.service.EmailService;
import com.myapplication.demo.service.RandomCode;
import com.myapplication.demo.service.TransactionId;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.nio.charset.Charset;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.ZoneId;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Random;

@Controller
public class RegisterPersonController {

    @Autowired
    UserRepo userRepo;

    @Autowired
    RandomCode randomCode;

    @Autowired
    WalletRepo walletRepo;

    @Autowired
    AppointmentRepo appointmentRepo;

    @Autowired
    TransactionId transactionId;

    @Autowired
    EmailService emailService;


    double free_amount=5900.00;  //sign on bonus amount

    String welcomecontent="THANK YOU FOR REGISTRING ON MY WALLET";

    //registering a person
    @RequestMapping("/addPerson")
    public ModelAndView addPerson(Users person, ModelMap mm, HttpServletRequest request)
    {

        //checking if already registered
        Users uSers=userRepo.findById(person.getEmail_Id()).orElse(new Users());


        //if new user
        if(uSers.getEmail_Id()==null || uSers.getEmail_Id().equals(""))
        {
            //new person added


            person.setBalance(free_amount);
            person.setGenerate_Code(randomCode.randomcode(person.getFirst_Name() , person.getContact_Number()));
            person.setReferred_Coupon(person.getReferred_Coupon().toLowerCase());
            //adding tp database
            userRepo.save(person);

            //setting credentials of sender
            SimpleMailMessage passwordResetEmail = new SimpleMailMessage();
            passwordResetEmail.setFrom("tiwariprankur61@gmail.com");

            //To email id
            passwordResetEmail.setTo(person.getEmail_Id());

            //content of email
            passwordResetEmail.setSubject("Welcome to DR4BIZ");
            passwordResetEmail.setText(welcomecontent);

            //sending
            emailService.sendEmail(passwordResetEmail);

            //current date time
            DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
            Date dateobj = new Date();
            Calendar cal = Calendar.getInstance();
            SimpleDateFormat sdf = new SimpleDateFormat("HH:mm");

            //first time bonus added
            String ORDER_ID= transactionId.transaction();
            Wallet wallet=new Wallet();
            wallet.setTrans_Id(ORDER_ID);
            wallet.setCredit_Amount(free_amount);
            wallet.setParticular("Sign On Bonus");
            wallet.setTemp_Balance(free_amount);
            wallet.setDate(df.format(dateobj)+" "+sdf.format(cal.getTime()));
            wallet.setUsers(person);

            //saving transaction to database
            walletRepo.save(wallet);

            //setting session
            @SuppressWarnings("unchecked")
            String emailid=person.getEmail_Id();
            request.getSession().setAttribute("MY_EMAILID", emailid);


            /*//logout condition
            if(emailid==null)
            {
                ModelAndView modelAndView=new ModelAndView("logout");
                return modelAndView;
            }*/

            ModelAndView modelAndView=new ModelAndView("clientdashboardhome");

            //getting client details
            Users users=userRepo.findById(emailid).orElse(new Users());

            //pending appointment
            List<Appointment> list=appointmentRepo.findByUserspp(emailid);
            mm.put("list", list);

            List<Appointment> list01=appointmentRepo.findByUsersdp(emailid);
            mm.put("list01", list01);

            List<Appointment> list02=appointmentRepo.findByUsersdd(emailid);
            mm.put("list02", list02);


            //upcoming appointments
            List<Appointment> list2=appointmentRepo.findByUsersUpcoming(emailid);
            mm.put("list2", list2);

            //history table
            List<Appointment> list3=appointmentRepo.findByUsersHistory(emailid);
            mm.put("list3", list3);

            //greeting on dashboards
            mm.put("users",users);
            return modelAndView;
        }

        //error message
        String s1="Already Registered!";
        mm.put("error",s1);
        return new ModelAndView("login");
    }

}
