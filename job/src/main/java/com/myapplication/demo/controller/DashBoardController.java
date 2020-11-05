package com.myapplication.demo.controller;


import com.myapplication.demo.dao.AppointmentRepo;
import com.myapplication.demo.dao.BillingRepo;
import com.myapplication.demo.dao.UserRepo;
import com.myapplication.demo.dao.WalletRepo;
import com.myapplication.demo.model.*;
import com.myapplication.demo.service.TransactionId;
import com.myapplication.demo.service.UserId;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

@Controller
public class DashBoardController
{

    @Autowired
    UserRepo userRepo;

    /*@Autowired
    LoginPersonController loginPersonController;*/

    @Autowired
    AppointmentRepo appointmentRepo;

    @Autowired
    BillingRepo billingRepo;

    @Autowired
    WalletRepo walletRepo;

    @Autowired
    TransactionId transactionId;

    double per_session_cost=5900.00; //session cost

    double gst_rate=18.00; // GST rate


    //client dashboard get mapping
    @GetMapping("/clientdashboardhome")
    public ModelAndView getHome(ModelMap mm, HttpSession session)
    {

        //getting session
        String emailid=(String)session.getAttribute("MY_EMAILID");

        //logout condition
        if(emailid==null)
        {
            ModelAndView modelAndView=new ModelAndView("logout");
            return modelAndView;
        }

        ModelAndView modelAndView=new ModelAndView("clientdashboardhome");

        //getting client details
        Users users=userRepo.findById(emailid).orElse(new Users());

        //insufficient balance
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

    //My Profile tab
    @RequestMapping("/clientprofilehome")
    public ModelAndView getProfile(ModelMap modelMap, HttpSession session)
    {
        //getting session
        String emailid=(String)session.getAttribute("MY_EMAILID");

        //logout condition
        if(emailid==null)
        {
            ModelAndView modelAndView=new ModelAndView("logout");
            return modelAndView;
        }

        ModelAndView modelAndView=new ModelAndView("clientprofilehome");

        //getting client details
        Users users=userRepo.findById(emailid).orElse(new Users());

        //billing details of client
        Billing billing= billingRepo.findBybilladdress(emailid);

        //throwing user object to frontend
        modelAndView.addObject(users);

        //throwing billing objects to frontend
        modelMap.put("billing",billing);

        return modelAndView;

    }

    //My Referral Tab
    @RequestMapping("/clientreferhome")
    public ModelAndView getReferCode(HttpSession session, ModelMap modelMap)
    {

        //getting session
        String emailid=(String)session.getAttribute("MY_EMAILID");

        //logout condition
        if(emailid==null)
        {
            ModelAndView modelAndView=new ModelAndView("logout");
            return modelAndView;
        }

        ModelAndView modelAndView=new ModelAndView("clientreferhome");

        //getting client details
        Users users=userRepo.findById(emailid).orElse(new Users());

        //table for my referral
        List<userappointjoin> listuser=userRepo.join(users.getGenerate_Code());
        modelMap.put("listuser", listuser);

        //number and amount credited
        long nm=listuser.size();
        modelMap.put("size", nm);

        //throwing object
        modelAndView.addObject(users);

        return modelAndView;

    }

    //My Wallet Tab
    @RequestMapping("/clientwallethome")
    public ModelAndView getWallet(ModelMap modelMap, HttpSession session)
    {
        //getting session
        String emailid=(String)session.getAttribute("MY_EMAILID");

        //logout condition
        if(emailid==null)
        {
            ModelAndView modelAndView=new ModelAndView("logout");
            return modelAndView;
        }

        ModelAndView modelAndView=new ModelAndView("clientwallethome");

        //getting client details
        Users users=userRepo.findById(emailid).orElse(new Users());

        //Transaction List
        List<Wallet> list=walletRepo.findByUsers(emailid);

        //throwing user objects to frontend
        modelAndView.addObject(users);

        //putting list
        modelMap.put("list",list);

        return modelAndView;

    }

    //Plans Tab
    @RequestMapping("/clientplanshome")
    public ModelAndView getPlans(ModelMap modelMap, HttpSession session)
    {

        //getting session
        String emailid=(String)session.getAttribute("MY_EMAILID");

        //logout condition
        if(emailid==null)
        {
            ModelAndView modelAndView=new ModelAndView("logout");
            return modelAndView;
        }

        //getting user details
        Users users=userRepo.findById(emailid).orElse(new Users());

        ModelAndView modelAndView=new ModelAndView("clientplanshome");

        //throwing user object
        modelMap.put("users",users);

        return modelAndView;

    }

    //Submit queries on client dashboard
    @PostMapping("/clientdashboardhome")
    public ModelAndView submitrequest(Appointment appointment, ModelMap mm, HttpSession session)
    {
        //getting session
        String emailid=(String)session.getAttribute("MY_EMAILID");

        //logout condition
        if(emailid==null)
        {
            ModelAndView modelAndView=new ModelAndView("logout");
            return modelAndView;
        }

        //getting details of user
        Users users=userRepo.findById(emailid).orElse(new Users());


        //insufficient balance
        if(users.getBalance()<per_session_cost)
        {
            ModelAndView modelAndView=new ModelAndView("clientdashboardhome");
            String errormsg="Insufficient Balance Add Money";
            mm.put("errormsg", errormsg);
        }
        // if balance is sufficient
        else
        {
            //getting current date and time
            DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
            Date dateobj = new Date();
            Calendar cal = Calendar.getInstance();
            SimpleDateFormat sdf = new SimpleDateFormat("HH:mm");

            //appointment added
            appointment.setDate(df.format(dateobj));
            appointment.setTime(sdf.format(cal.getTime()));
            appointment.setStatus("pending");
            appointment.setInfoAsked("pending");
            appointment.setInfoReceived("pending");

            //info for admin use
            if(appointment.getMode().equals("Shared"))
            {
                appointment.setAction("Read Problem");
            }
            else
            {
                appointment.setAction("Call Client");
            }

            //setting foreign key
            appointment.setUsers(users);

            //checking if First appointment or not
            if(appointmentRepo.findAllAppointment(users.getEmail_Id()).size()==0)
            {
                appointment.setFirst_appointment("yes");
            }

            //saving appointment to database
            appointmentRepo.save(appointment);



            //transaction added
            Wallet wallet = new Wallet();
            wallet.setDebit_Amount(per_session_cost);
            wallet.setTrans_Id(transactionId.transaction());
            wallet.setDate(df.format(dateobj)+" "+sdf.format(cal.getTime()));
            wallet.setParticular("Appointment Booked");
            wallet.setTemp_Balance(users.getBalance()-per_session_cost);



            //updating balance once appointment is booked
            users.setBalance(users.getBalance()-per_session_cost);

            //setting updated balance in database
            userRepo.save(users);

            //saving transaction in database
            wallet.setUsers(users);
            walletRepo.save(wallet);
        }

        ModelAndView mv=new ModelAndView("clientdashboardhome");

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

        //history
        List<Appointment> list3=appointmentRepo.findByUsersHistory(emailid);
        mm.put("list3", list3);

        //throwing user object
        mv.addObject(users);
        return mv;
    }

    //My profile update billing
    @PostMapping("/updatebillingdetail")
    public ModelAndView UpdateBill(Billing billing, ModelMap modelMap, HttpSession session )
    {
        //getting session
        String emailid=(String)session.getAttribute("MY_EMAILID");

        //logout
        if(emailid==null)
        {
            ModelAndView modelAndView=new ModelAndView("logout");
            return modelAndView;
        }

        //getting user details
        Users users=userRepo.findById(emailid).orElse(new Users());

        //getting user billing details
        Billing billing1=billingRepo.findBybilladdress(emailid);

        //first time billing
        if(billing1==null)
        {
            billing.setUsers(users);

            //saving billing details
            billingRepo.save(billing);
        }
        //edit billing details
        billingRepo.updatebillingaddress(billing.getAddress(),billing.getCity(),billing.getGST_Number(),billing.getPincode(), billing.getState(), billing.getBilling_Name(),billing.getPan_Card(), emailid);
        ModelAndView modelAndView=new ModelAndView("clientprofilehome");

        //throwing user details
        modelMap.put("users",users);
        return modelAndView;
    }

    //update user details
    @PostMapping("/updateuserdetail")
    public ModelAndView Updateusers(Users users, ModelMap modelMap, HttpSession session )
    {
        //getting session
        String emailid=(String)session.getAttribute("MY_EMAILID");

        //logout
        if(emailid==null)
        {
            ModelAndView modelAndView=new ModelAndView("logout");
            return modelAndView;
        }

        //getting billing detail of client
        Billing billing1=billingRepo.findBybilladdress(emailid);

        //update user details
        userRepo.updateuserdetail(users.getFirst_Name(),users.getMiddle_Name(),users.getLast_Name(),users.getContact_Number(),users.getPassword(), users.getCompany_Name(), users.getStarted_In(), users.getIndustry(), users.getType_of_Company(), users.getType_of_Business(),emailid);

        ModelAndView modelAndView=new ModelAndView("clientprofilehome");

        //throwing billing details
        modelMap.put("billing",billing1);

        return modelAndView;
    }

    //plans buy now link
    @RequestMapping("/buynowlink")
    public ModelAndView buynow(@RequestParam("amount") String amount, ModelMap modelMap, HttpSession session)
    {
        //getting session
        String emailid=(String)session.getAttribute("MY_EMAILID");

        if(emailid==null)
        {
            ModelAndView modelAndView=new ModelAndView("logout");
            return modelAndView;
        }


        //setting payment details
        String ORDER_ID= transactionId.transaction();
        modelMap.put("ORDER_ID", ORDER_ID);
        modelMap.put("CUST_ID",emailid);

        // setting final amount including GST
        double final_amount=Double.parseDouble(amount)+ (gst_rate/100.00)*Double.parseDouble(amount);
        modelMap.put("TXN_AMOUNT",final_amount);

        ModelAndView modelAndView=new ModelAndView("payment");
        return modelAndView;
    }
}
