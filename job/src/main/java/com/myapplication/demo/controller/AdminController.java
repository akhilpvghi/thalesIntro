package com.myapplication.demo.controller;

import com.myapplication.demo.dao.AppointmentRepo;
import com.myapplication.demo.dao.BillingRepo;
import com.myapplication.demo.dao.UserRepo;
import com.myapplication.demo.dao.WalletRepo;
import com.myapplication.demo.model.Appointment;
import com.myapplication.demo.model.Billing;
import com.myapplication.demo.model.Users;
import com.myapplication.demo.model.Wallet;
import com.myapplication.demo.service.EmailService;
import com.myapplication.demo.service.ReferralBonus;
import com.myapplication.demo.service.TransactionId;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

@Controller
public class AdminController
{
    @Autowired
    AppointmentRepo appointmentRepo;

    @Autowired
    UserRepo userRepo;

    @Autowired
    BillingRepo billingRepo;

    @Autowired
    WalletRepo walletRepo;

    @Autowired
    TransactionId transactionId;

    @Autowired
    ReferralBonus referralBonus;

    @Autowired
    EmailService emailService;

    /*//Admin credentials
    String registeremail_id="shubhangiagarwal76@gmail.com";
    String registeredcontactnumber="1234";*/

    //only one admin. One logout to all logout without session
    String usersid;


    List<Appointment> list ;
    List<Appointment> list1 ;
    List<Appointment> list2 ;
    List<Appointment> list3 ;

    //users and billing references
    Users users=null;
    Billing billing=null;

    Double refer_bonus=1500.0;//referral bonus

    //open link client credentials
    String openlinkid;

    String schedulecontent="This is to inform you that your appointment has been scheduled with our expert as per following details\n";
    String schedulecontentend="The link for the video session has been shared separately by our team.";

    //admin dashboard tab
    @GetMapping("/adminloginview")
    public ModelAndView adminlogin(ModelMap modelMap)
    {
        ModelAndView modelAndView=new ModelAndView("adminappointmenthome");

        //logout
        if(this.usersid==null)
        {
            ModelAndView modelAndView1=new ModelAndView("logout");
            return modelAndView1;
        }

            //appoint table fill
            list = appointmentRepo.findAllByStatus("pending");
            modelMap.put("list",list);


            //upcoming table fill
            list1=appointmentRepo.findAllByStatus("upcoming");
            modelMap.put("list1", list1);

            //history with complete table fill
            list2 = appointmentRepo.findAllByStatus("completed");
            modelMap.put("list2", list2);

            //history with cancelled
            list3 = appointmentRepo.findAllByStatus("cancelled");
            modelMap.put("list3", list3);


        return modelAndView;
    }


    /*//admin dashboard tab
    @PostMapping("/adminloginview")
    public ModelAndView adminlogin(@RequestParam("Email_Id") String email_id, @RequestParam("Contact_Number") String contact_number, ModelMap modelMap)
    {
        ModelAndView modelAndView=new ModelAndView("adminappointmenthome");
        ModelAndView modelAndView1=new ModelAndView("adminlogin");

        //admin dashboard with proper credentials
        if(email_id.equals(registeremail_id) && contact_number.equals(registeredcontactnumber))
        {
            this.usersid="admin";
            //appoint table fill
            list = appointmentRepo.findAllByStatus("pending");
            modelMap.put("list",list);

            //upcoming table fill
            list1=appointmentRepo.findAllByStatus("upcoming");
            modelMap.put("list1", list1);

            //history table fill
            list2 = appointmentRepo.findAllByStatus("completed");
            modelMap.put("list2", list2);

            //canceled
            list3 = appointmentRepo.findAllByStatus("cancelled");
            modelMap.put("list3", list3);

            return modelAndView;

        }

        //for inappropriate admin login
        String s1="You are going to login with Administrative rights kindly fill necessary details to login";
        String s2="You are not a valid admin kindly login as client";
        modelMap.put("adminmsg",s1);
        modelMap.put("errormsg",s2);
        return modelAndView1;
    }
*/
    //read problem button on client dashboard
    @RequestMapping("/readproblem")
    public ModelAndView readproblem(@RequestParam("appoint_id") String id, ModelMap modelMap)
    {
        //logout
        if(this.usersid==null)
        {
            ModelAndView modelAndView=new ModelAndView("logout");
            return modelAndView;
        }

       Appointment appointment= appointmentRepo.findById(Long.parseLong(id)).orElse(new Appointment());

       String problem = appointment.getProblem();
       Long Contact_No = appointment.getUsers().getContact_Number();

       modelMap.put("problem", problem);
       modelMap.put("contact", Contact_No);

       ModelAndView modelAndView = new ModelAndView("readproblem");
       return modelAndView;

    }

    //setting appointment button on admin dashboard
    @PostMapping("/settingappointment")
    public ModelAndView setappointment(Appointment appointment, ModelMap modelMap)
    {
        //logout
        if(this.usersid==null)
        {
            ModelAndView modelAndView=new ModelAndView("logout");
            return modelAndView;
        }

        appointment.setStatus("upcoming");
        appointmentRepo.updateappointment(appointment.getExpert_Name(), appointment.getDate(), appointment.getTime(), appointment.getStatus(), appointment.getAppoint_Id());

        Appointment appointment1=appointmentRepo.findById(appointment.getAppoint_Id()).orElse(new Appointment());

        //setting credentials of sender
        SimpleMailMessage passwordResetEmail = new SimpleMailMessage();
        passwordResetEmail.setFrom("tiwariprankur61@gmail.com");

        //To email id
        passwordResetEmail.setTo(appointment1.getUsers().getEmail_Id());

        //content of email
        passwordResetEmail.setSubject("Appointment Scheduled");
        passwordResetEmail.setText(schedulecontent+ "\nYour Appointment ID: "+appointment1.getAppoint_Id()+ "\nDate: "+appointment1.getDate() +"\nTime: "+appointment1.getTime()+"\nExpert: "+appointment1.getExpert_Name()+"\n"+schedulecontentend);

        //sending
        emailService.sendEmail(passwordResetEmail);


        ModelAndView modelAndView=new ModelAndView("adminappointmenthome");

        //pending table admin dashboard
        list = appointmentRepo.findAllByStatus("pending");
        modelMap.put("list",list);

        //upcoming table admin dashboard
        list1=appointmentRepo.findAllByStatus("upcoming");
        modelMap.put("list1", list1);

        //history with complete status table fill
        list2 = appointmentRepo.findAllByStatus("completed");
        modelMap.put("list2", list2);

        //history with cancelled status table fill
        list3 = appointmentRepo.findAllByStatus("cancelled");
        modelMap.put("list3", list3);

        return modelAndView;
    }

    //update button on admin dashboard
    @PostMapping("/updateInfo")
    public ModelAndView update(Appointment appointment, ModelMap modelMap)
    {
        if(this.usersid==null)
        {
            ModelAndView modelAndView=new ModelAndView("logout");
            return modelAndView;
        }

        appointmentRepo.updateInfo(appointment.getInfoAsked(), appointment.getInfoReceived(), appointment.getAppoint_Id());

        ModelAndView modelAndView=new ModelAndView("adminappointmenthome");

        //pending table on admin dashboard
        list = appointmentRepo.findAllByStatus("pending");
        modelMap.put("list",list);

        //upcoming table on admin dashboard
        list1=appointmentRepo.findAllByStatus("upcoming");
        modelMap.put("list1", list1);

        //history with complete status table fill
        list2 = appointmentRepo.findAllByStatus("completed");
        modelMap.put("list2", list2);

        //history with cancelled status table fill
        list3 = appointmentRepo.findAllByStatus("cancelled");
        modelMap.put("list3", list3);

        return modelAndView;
    }

    //delete appointment admin dashboard
    @PostMapping("/deleterequest")
    public ModelAndView deleteappointment(Appointment appointment, ModelMap modelMap)
    {
        if(this.usersid==null)
        {
            ModelAndView modelAndView=new ModelAndView("logout");
            return modelAndView;
        }

        //deleting request
        appointmentRepo.deleteById(appointment.getAppoint_Id());
        ModelAndView modelAndView=new ModelAndView("adminappointmenthome");

        //pending table
        list = appointmentRepo.findAllByStatus("pending");
        modelMap.put("list",list);

        //upcoming table
        list1=appointmentRepo.findAllByStatus("upcoming");
        modelMap.put("list1", list1);

        //history with complete status table fill
        list2 = appointmentRepo.findAllByStatus("completed");
        modelMap.put("list2", list2);

        //history with cancelled status table fill
        list3 = appointmentRepo.findAllByStatus("cancelled");
        modelMap.put("list3", list3);

        return modelAndView;
    }

    //delete appointment admin dashboard
    @GetMapping("/deleterequest")
    public ModelAndView deleteappointment(ModelMap modelMap)
    {
        if(this.usersid==null)
        {
            ModelAndView modelAndView=new ModelAndView("logout");
            return modelAndView;
        }


        ModelAndView modelAndView=new ModelAndView("adminappointmenthome");

        //pending table
        list = appointmentRepo.findAllByStatus("pending");
        modelMap.put("list",list);

        //upcoming table
        list1=appointmentRepo.findAllByStatus("upcoming");
        modelMap.put("list1", list1);

        //history with complete status table fill
        list2 = appointmentRepo.findAllByStatus("completed");
        modelMap.put("list2", list2);

        //history with cancelled status table fill
        list3 = appointmentRepo.findAllByStatus("cancelled");
        modelMap.put("list3", list3);

        return modelAndView;
    }

    //edit button in admin dashboard
    @PostMapping("/edit")
    public ModelAndView edit(Appointment appointment, ModelMap modelMap)
    {
        if(this.usersid==null)
        {
            ModelAndView modelAndView=new ModelAndView("logout");
            return modelAndView;
        }

        appointmentRepo.edit("pending",appointment.getAppoint_Id());
        ModelAndView modelAndView=new ModelAndView("adminappointmenthome");

        //pending table
        list = appointmentRepo.findAllByStatus("pending");
        modelMap.put("list",list);

        //upcoming appointment
        list1=appointmentRepo.findAllByStatus("upcoming");
        modelMap.put("list1", list1);

        //history with complete status table fill
        list2 = appointmentRepo.findAllByStatus("completed");
        modelMap.put("list2", list2);

        //history with cancelled status table fill
        list3 = appointmentRepo.findAllByStatus("cancelled");
        modelMap.put("list3", list3);

        return modelAndView;
    }

    //edit button in admin dashboard
    @GetMapping("/edit")
    public ModelAndView edit( ModelMap modelMap)
    {
        if(this.usersid==null)
        {
            ModelAndView modelAndView=new ModelAndView("logout");
            return modelAndView;
        }

        ModelAndView modelAndView=new ModelAndView("adminappointmenthome");

        //pending table
        list = appointmentRepo.findAllByStatus("pending");
        modelMap.put("list",list);

        //upcoming appointment
        list1=appointmentRepo.findAllByStatus("upcoming");
        modelMap.put("list1", list1);

        //history with complete status table fill
        list2 = appointmentRepo.findAllByStatus("completed");
        modelMap.put("list2", list2);

        //history with cancelled status table fill
        list3 = appointmentRepo.findAllByStatus("cancelled");
        modelMap.put("list3", list3);

        return modelAndView;
    }

    //complete button on admin dashboard
    @PostMapping("/complete")
    public ModelAndView complete(Appointment appointment, ModelMap modelMap)
    {
        if(this.usersid==null)
        {
            ModelAndView modelAndView=new ModelAndView("logout");
            return modelAndView;
        }


        appointmentRepo.edit("completed",appointment.getAppoint_Id());
        ModelAndView modelAndView=new ModelAndView("adminappointmenthome");

        //pending appointment
        list = appointmentRepo.findAllByStatus("pending");
        modelMap.put("list",list);

        //upcoming appointment
        list1=appointmentRepo.findAllByStatus("upcoming");
        modelMap.put("list1", list1);


        //history with completed status table fill
        list2 = appointmentRepo.findAllByStatus("completed");
        modelMap.put("list2", list2);

        //history with cancelled status table fill
        list3 = appointmentRepo.findAllByStatus("cancelled");
        modelMap.put("list3", list3);

        referralBonus.referal(appointment.getAppoint_Id());

        return modelAndView;
    }

    //complete button on admin dashboard
    @GetMapping("/complete")
    public ModelAndView complete(ModelMap modelMap)
    {
        if(this.usersid==null)
        {
            ModelAndView modelAndView=new ModelAndView("logout");
            return modelAndView;
        }

        ModelAndView modelAndView=new ModelAndView("adminappointmenthome");

        //pending appointment
        list = appointmentRepo.findAllByStatus("pending");
        modelMap.put("list",list);

        //upcoming appointment
        list1=appointmentRepo.findAllByStatus("upcoming");
        modelMap.put("list1", list1);


        //history with completed status table fill
        list2 = appointmentRepo.findAllByStatus("completed");
        modelMap.put("list2", list2);

        //history with cancelled status table fill
        list3 = appointmentRepo.findAllByStatus("cancelled");
        modelMap.put("list3", list3);

        return modelAndView;
    }

    //cancel appointment
    @PostMapping("/cancel")
    public ModelAndView cancel(Appointment appointment, ModelMap modelMap)
    {
        if(this.usersid==null)
        {
            ModelAndView modelAndView=new ModelAndView("logout");
            return modelAndView;
        }

        appointmentRepo.edit("cancelled",appointment.getAppoint_Id());
        ModelAndView modelAndView=new ModelAndView("adminappointmenthome");

        //pending appointment
        list = appointmentRepo.findAllByStatus("pending");
        modelMap.put("list",list);

        //upcoming appointment
        list1=appointmentRepo.findAllByStatus("upcoming");
        modelMap.put("list1", list1);

        //history with completed status table fill
        list2 = appointmentRepo.findAllByStatus("completed");
        modelMap.put("list2", list2);

        //history with cancelled status table fill
        list3 = appointmentRepo.findAllByStatus("cancelled");
        modelMap.put("list3", list3);

        return modelAndView;
    }

    //cancel appointment
    @GetMapping("/cancel")
    public ModelAndView cancel( ModelMap modelMap )
    {
        if(this.usersid==null)
        {
            ModelAndView modelAndView=new ModelAndView("logout");
            return modelAndView;
        }

        ModelAndView modelAndView=new ModelAndView("adminappointmenthome");

        //pending appointment
        list = appointmentRepo.findAllByStatus("pending");
        modelMap.put("list",list);

        //upcoming appointment
        list1=appointmentRepo.findAllByStatus("upcoming");
        modelMap.put("list1", list1);

        //history with completed status table fill
        list2 = appointmentRepo.findAllByStatus("completed");
        modelMap.put("list2", list2);

        //history with cancelled status table fill
        list3 = appointmentRepo.findAllByStatus("cancelled");
        modelMap.put("list3", list3);

        return modelAndView;
    }

    //admin client tab
    @GetMapping("/adminclient")
    public ModelAndView showDetail(ModelMap modelMap)
    {
        //logout
        if(this.usersid==null)
        {
            ModelAndView modelAndView=new ModelAndView("logout");
            return modelAndView;
        }

        List<Users> list4 = (List<Users>) userRepo.findAll();
        ModelAndView modelAndView=new ModelAndView("adminclienthome");

        modelMap.put("list4", list4);
        return modelAndView;
    }

    //open link client button
    @PostMapping("/clientinfo")
    public ModelAndView adminclient(@RequestParam("Email_Id") String registeremail_id,ModelMap modelMap)
    {
        //logout
        if(this.usersid==null)
        {
            ModelAndView modelAndView=new ModelAndView("logout");
            return modelAndView;
        }

        ModelAndView modelAndView=new ModelAndView("clientadmininfo");

        //saving coresponding user , its billing details and its email id
        this.users=userRepo.findById(registeremail_id).orElse(new Users());
        this.billing=billingRepo.findBybilladdress(registeremail_id);
        this.openlinkid=users.getEmail_Id();

        modelMap.put("users", users);
        modelMap.put("billing", billing);
        return modelAndView;
    }

    //open link tab
    @GetMapping("/clientinfo")
    public ModelAndView adminclientget(ModelMap modelMap)
    {
        //logout
        if(this.usersid==null)
        {
            ModelAndView modelAndView=new ModelAndView("logout");
            return modelAndView;
        }

        ModelAndView modelAndView=new ModelAndView("clientadmininfo");

        this.openlinkid=users.getEmail_Id();

        modelMap.put("users", users);
        modelMap.put("billing", billing);

        return modelAndView;
    }


    //admin update client billing details
    @PostMapping("/updatebillingdetailadmin")
    public ModelAndView UpdateBill(Billing billing,ModelMap modelMap )
    {
        if(this.usersid==null)
        {
            ModelAndView modelAndView=new ModelAndView("logout");
            return modelAndView;
        }


        users=userRepo.findById(openlinkid).orElse(new Users());
        Billing billing1=billingRepo.findBybilladdress(openlinkid);

        //no billing details
        if(billing1==null)
        {
            ModelAndView modelAndView=new ModelAndView("clientadmininfo");
            billing.setUsers(users);
            billingRepo.save(billing);
            Billing billing2=billingRepo.findBybilladdress(openlinkid);
            modelMap.put("users",users);
            return modelAndView;
        }

        //if client have billing address
        ModelAndView modelAndView=new ModelAndView("clientadmininfo");

        billingRepo.updatebillingaddress(billing.getAddress(),billing.getCity(),billing.getGST_Number(),billing.getPincode(), billing.getState(), billing.getBilling_Name(),billing.getPan_Card(), billing.getUsers().getEmail_Id());
        Billing billing2=billingRepo.findBybilladdress(openlinkid);

        modelMap.put("users",users);

        return modelAndView;
    }

    //admin update client billing details
    @GetMapping("/updatebillingdetailadmin")
    public ModelAndView UpdateBillget(ModelMap modelMap )
    {
        //logout
        if(this.usersid==null)
        {
            ModelAndView modelAndView=new ModelAndView("logout");
            return modelAndView;
        }


        users=userRepo.findById(openlinkid).orElse(new Users());

        ModelAndView modelAndView=new ModelAndView("clientadmininfo");

        Billing billing2=billingRepo.findBybilladdress(openlinkid);

        modelMap.put("users",users);
        modelMap.put("billing",billing2);

        return modelAndView;
    }

    //admin update client profile details
    @PostMapping("/updateuserdetailadmin")
    public ModelAndView Updateusers(Users users,ModelMap modelMap )
    {
        //logout
        if(this.usersid==null)
        {
            ModelAndView modelAndView=new ModelAndView("logout");
            return modelAndView;
        }

        userRepo.updateuserdetail(users.getFirst_Name(),users.getMiddle_Name(),users.getLast_Name(),users.getContact_Number(),users.getPassword(), users.getCompany_Name(), users.getStarted_In(), users.getIndustry(), users.getType_of_Company(), users.getType_of_Business(),users.getEmail_Id());

        ModelAndView modelAndView=new ModelAndView("clientadmininfo");

        Billing billing1=billingRepo.findBybilladdress(openlinkid);
        Users user = userRepo.findById(openlinkid).orElse(new Users());

        modelMap.put("billing",billing1);
        modelMap.put("users",user);
        return modelAndView;
    }

    //admin update client profile details
    @GetMapping("/updateuserdetailadmin")
    public ModelAndView Updateusersget(ModelMap modelMap )
    {
        //logout
        if(this.usersid==null)
        {
            ModelAndView modelAndView=new ModelAndView("logout");
            return modelAndView;
        }

//        userRepo.updateuserdetail(users.getFirst_Name(),users.getMiddle_Name(),users.getLast_Name(),users.getContact_Number(),users.getPassword(), users.getCompany_Name(), users.getStarted_In(), users.getIndustry(), users.getType_of_Company(), users.getType_of_Business(),users.getEmail_Id());

        ModelAndView modelAndView=new ModelAndView("clientadmininfo");

        Billing billing1=billingRepo.findBybilladdress(openlinkid);
        Users user = userRepo.findById(openlinkid).orElse(new Users());

        modelMap.put("billing",billing1);
        modelMap.put("users",user);
        return modelAndView;
    }


    //admin update client wallet
    @PostMapping("/adminwallet")
    public ModelAndView walletUpdate(Wallet wallet, ModelMap modelMap)
    {
        //logout
        if(this.usersid==null)
        {
            ModelAndView modelAndView=new ModelAndView("logout");
            return modelAndView;
        }

        //fetching current date and time
        DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        Date dateobj = new Date();
        Calendar cal = Calendar.getInstance();
        SimpleDateFormat sdf = new SimpleDateFormat("HH:mm");

        //setting transaction details to client wallet
        wallet.setTrans_Id(transactionId.transaction());
        wallet.setDate(df.format(dateobj)+" "+sdf.format(cal.getTime()));
        /*wallet.setTime(sdf.format(cal.getTime()));*/


        //updating client balance
        Users users  = userRepo.findById(openlinkid).orElse(new Users());
        wallet.setTemp_Balance(users.getBalance()+wallet.getCredit_Amount()-wallet.getDebit_Amount());
        users.setBalance(users.getBalance()+wallet.getCredit_Amount()-wallet.getDebit_Amount());

        walletRepo.save(wallet);
        userRepo.save(users);

        Billing billing = billingRepo.findBybilladdress(openlinkid);

        modelMap.put("users", users);
        modelMap.put("billing", billing);

        ModelAndView modelAndView = new ModelAndView("clientadmininfo");
        return modelAndView;
    }

    //admin update client wallet
    @GetMapping("/adminwallet")
    public ModelAndView walletUpdate(ModelMap modelMap)
    {
        //logout
        if(this.usersid==null)
        {
            ModelAndView modelAndView=new ModelAndView("logout");
            return modelAndView;
        }

        users=userRepo.findById(openlinkid).orElse(new Users());
        billing=billingRepo.findBybilladdress(openlinkid);
        modelMap.put("users", users);
        modelMap.put("billing", billing);

        ModelAndView modelAndView = new ModelAndView("clientadmininfo");
        return modelAndView;
    }


    //admin logout
    @GetMapping("/logoutadmin")
    public ModelAndView logout(HttpSession httpSession)
    {
        usersid=null;
        httpSession.invalidate();
        ModelAndView modelAndView = new ModelAndView("logout");
        return modelAndView;
    }
}
