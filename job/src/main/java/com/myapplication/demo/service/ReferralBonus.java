package com.myapplication.demo.service;

import com.myapplication.demo.dao.AppointmentRepo;
import com.myapplication.demo.dao.UserRepo;
import com.myapplication.demo.dao.WalletRepo;
import com.myapplication.demo.model.Appointment;
import com.myapplication.demo.model.Users;
import com.myapplication.demo.model.Wallet;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;


@Service
public class ReferralBonus
{

    @Autowired
    AppointmentRepo appointmentRepo;

    @Autowired
    UserRepo userRepo;

    @Autowired
    WalletRepo walletRepo;

    @Autowired
    TransactionId transactionId;

    double refer_bonus=1500.00; //referral bonus


  public void referal(Long s1)
  {
      //appointment which is completed
      Appointment appointment1 = appointmentRepo.findById(s1).orElse(new Appointment());

      //client who is referred
      Users users= appointment1.getUsers();

      //referred client completed appointment
      List<Appointment> list=appointmentRepo.findAllByCompletedStatus(users.getEmail_Id());


      //empty or invalid refer coupon
      if(users.getReferred_Coupon().equals("") || userRepo.findByGenerate_Code(users.getReferred_Coupon())==null)
      {
        //System.out.println("Here");
      }

      else if(users.getReferred_Coupon()!=null && list.size()==1)
      {
          DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
          Date dateobj = new Date();
          Calendar cal = Calendar.getInstance();
          SimpleDateFormat sdf = new SimpleDateFormat("HH:mm");
          Users users1 = userRepo.findByGenerate_Code(users.getReferred_Coupon());
          Wallet wallet=new Wallet();
          wallet.setTrans_Id(transactionId.transaction());
          wallet.setCredit_Amount(refer_bonus);
          wallet.setParticular("Referral Bonus");
          wallet.setDate(df.format(dateobj)+" "+sdf.format(cal.getTime()));
          wallet.setUsers(users1);
          wallet.setTemp_Balance(users1.getBalance()+refer_bonus);

          userRepo.updatereferbalance(users1.getBalance()+refer_bonus,users1.getEmail_Id());
          walletRepo.save(wallet);
      }
  }
}
