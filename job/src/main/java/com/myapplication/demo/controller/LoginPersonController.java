package com.myapplication.demo.controller;

import com.myapplication.demo.Prepare4jobApplication;
import com.myapplication.demo.dao.AppointmentRepo;
import com.myapplication.demo.dao.UserRepo;
import com.myapplication.demo.model.Appointment;
import com.myapplication.demo.service.UserId;
import com.myapplication.demo.model.Users;
import com.myapplication.demo.service.Validation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class LoginPersonController
{
    @Autowired
    Validation validation;

    @Autowired
    UserRepo userRepo;

    @Autowired
    AppointmentRepo appointmentRepo;

    @Autowired
     AdminController adminController;


    /*UserId userId;*/

    //admin login credentials
    String Adminusername="admin";
    String Adminpassword="123admin";

    double per_session_cost=5900.00; //session cost

    //Index  Page
    @RequestMapping("/")
    public ModelAndView home()
    {
        ModelAndView mv = new ModelAndView("business");
        return mv;
    }

    //Terms And Condition
    @RequestMapping("/TermsofUse")
    public ModelAndView TnC()
    {
        return new ModelAndView("TermsofUse");
    }

    //Privacy Policy
    @RequestMapping("/PrivacyPolicy")
    public ModelAndView PP()
    {
        return new ModelAndView("PrivacyPolicy");
    }

    //How We Work
    @RequestMapping("/HowWeWork")
    public ModelAndView work()
    {
        return new ModelAndView("HowWeWork");
    }


    //Login page
    @RequestMapping("/login")
    public ModelAndView login(@CookieValue(value = "emailcookie", defaultValue = "noemailcookie") String username, ModelMap mm, HttpServletRequest request)
    {

        if(!(username.equals("noemailcookie")))
        {
            //setting session
            @SuppressWarnings("unchecked")
            String emailid = username;
            request.getSession().setAttribute("MY_EMAILID", emailid);

            ModelAndView mv=new ModelAndView("clientdashboardhome");

            //getting users details
            Users users=userRepo.findById(emailid).orElse(new Users());
            mv.addObject(users);

            if(users.getBalance()<per_session_cost)
            {
                String errormsg="Insufficient Balance Add Money";
                mm.put("errormsg", errormsg);
            }

            //pending appointment
            List<Appointment> list=appointmentRepo.findByUserspp(emailid);
            mm.put("list", list);

            List<Appointment> list01=appointmentRepo.findByUsersdp(emailid);
            mm.put("list01", list01);

            List<Appointment> list02=appointmentRepo.findByUsersdd(emailid);
            mm.put("list02", list02);

            //upcoming table clientdashboard
            List<Appointment> list2=appointmentRepo.findByUsersUpcoming(emailid);
            mm.put("list2", list2);

            //history table clientdashbaord
            List<Appointment> list3=appointmentRepo.findByUsersHistory(emailid);
            mm.put("list3", list3);

            return mv;
        }

        ModelAndView mv = new ModelAndView("login");
        return mv;


    }

    //Register page
    @RequestMapping("/register")
    public ModelAndView search()
    {
        ModelAndView mv = new ModelAndView("register");
        return mv;
    }

    //Server Side verification and clientdashbaord
    @PostMapping("/validate")
    public ModelAndView getPerson(@RequestParam("userid") String userid, @RequestParam("pass") String pass, ModelMap mm, HttpServletRequest request, HttpServletResponse response)
    {
        //Checking if user is Admin
        if(userid.equals(Adminusername) && pass.equals(Adminpassword))
        {
            /*request.getSession().setAttribute("MY_ADMIN",userid);*/
            adminController.usersid=Adminusername;

            ModelAndView modelAndView=new ModelAndView("adminappointmenthome");


            //appoint table fill
            List<Appointment> list = appointmentRepo.findAllByStatus("pending");
            mm.put("list",list);


            //upcoming table fill
            List<Appointment> list1=appointmentRepo.findAllByStatus("upcoming");
            mm.put("list1", list1);

            //history with complete table fill
            List<Appointment> list2 = appointmentRepo.findAllByStatus("completed");
            mm.put("list2", list2);

            //history with cancelled
            List<Appointment> list3 = appointmentRepo.findAllByStatus("cancelled");
            mm.put("list3", list3);

            return modelAndView;

        }

        //Checking whether Client is authenticated or not
        boolean b=validation.validatecheck(userid,pass);

        //Two views depending on weather client is valid or not
        ModelAndView mv = new ModelAndView("clientdashboardhome");
        ModelAndView mv2 = new ModelAndView("login");

        //Client is authenticated user
        if(b)
        {
            //setting session
            @SuppressWarnings("unchecked")
            String emailid=userid;
            request.getSession().setAttribute("MY_EMAILID", emailid);

            // create a cookie
            Cookie cookie = new Cookie("emailcookie", emailid);

            //setting age of cookie
            cookie.setMaxAge(14*24*60*60);

            //add cookie to response
            response.addCookie(cookie);


            //getting users details
            Users users=userRepo.findById(userid).orElse(new Users());
            mv.addObject(users);

            if(users.getBalance()<per_session_cost)
            {
                String errormsg="Insufficient Balance Add Money";
                mm.put("errormsg", errormsg);
            }

            //pending appointment
            List<Appointment> list=appointmentRepo.findByUserspp(emailid);
            mm.put("list", list);

            List<Appointment> list01=appointmentRepo.findByUsersdp(emailid);
            mm.put("list01", list01);

            List<Appointment> list02=appointmentRepo.findByUsersdd(emailid);
            mm.put("list02", list02);

            //upcoming table clientdashboard
            List<Appointment> list2=appointmentRepo.findByUsersUpcoming(emailid);
            mm.put("list2", list2);

            //history table clientdashbaord
            List<Appointment> list3=appointmentRepo.findByUsersHistory(emailid);
            mm.put("list3", list3);

            return mv;
        }


        //for invalid Client or Admin
        String errorMessage= "Invalid Credentials";
                mm.put("error", errorMessage);
                return mv2;
    }

    //Refresh after validate get mapping
    @GetMapping("/validate")
    public ModelAndView getperson(ModelMap mm, HttpSession session)
    {
        //setting session
        @SuppressWarnings("unchecked")
        String emailid=(String)session.getAttribute("MY_EMAILID");

        //if logout then singin request
        if(emailid==null)
        {
            ModelAndView modelAndView=new ModelAndView("logout");
            return modelAndView;
        }

        ModelAndView mv = new ModelAndView("clientdashboardhome");

        //Getting Client Details
        Users users=userRepo.findById(emailid).orElse(new Users());
        mv.addObject(users);

        //pending appointment
        List<Appointment> list=appointmentRepo.findByUserspp(emailid);
        mm.put("list", list);

        List<Appointment> list01=appointmentRepo.findByUsersdp(emailid);
        mm.put("list01", list01);

        List<Appointment> list02=appointmentRepo.findByUsersdd(emailid);
        mm.put("list02", list02);

        //upcoming table
        List<Appointment> list2=appointmentRepo.findByUsersUpcoming(emailid);
        mm.put("list2", list2);

        //history table
        List<Appointment> list3=appointmentRepo.findByUsersHistory(emailid);
        mm.put("list3", list3);

        return mv;
        }

        //logout request
        @RequestMapping("/logout")
        public ModelAndView logout(HttpServletRequest request, HttpServletResponse response)
        {
            Cookie cookie = new Cookie("emailcookie", null);
            cookie.setMaxAge(0);
            cookie.setSecure(false);
            /*cookie.setHttpOnly(true);*/
            cookie.setPath("/");
            response.addCookie(cookie);
            request.getSession().invalidate();

            ModelAndView modelAndView = new ModelAndView("logout");
            return modelAndView;
        }


}
