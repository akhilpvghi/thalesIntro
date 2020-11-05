package com.myapplication.demo.dao;

import com.myapplication.demo.model.Users;
import com.myapplication.demo.model.userappointjoin;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
public interface UserRepo extends CrudRepository<Users,String> {

    @Transactional
    @Modifying
    @Query("update Users users set users.First_Name= ?1, users.Middle_Name=?2, users.Last_Name=?3, users.Contact_Number=?4, users.Password=?5,  users.Company_Name=?6,  users.Started_In=?7, users.Industry=?8,users.Type_of_Company=?9,users.Type_of_Business=?10 where email_id=?11")
    public void updateuserdetail(String firstname,String middlename,String lastname,Long contactnumber, String password, String companyname, Integer startedin, String Industry,String toc, String tob, String email);

    @Query("from Users users where users.Generate_Code=?1")
    public Users findByGenerate_Code(String reffered_Code);

    @Transactional
    @Modifying
    @Query("update Users users set users.Balance=?1 where email_id=?2")
    public void updatereferbalance(double balance,String emailid);

    @Query("from Users users where users.Referred_Coupon=?1")
    public List<Users> findrefferal(String referral);

    @Query("Select new com.myapplication.demo.model.userappointjoin(users.First_Name, users.Email_Id, app.Status, app.date) from Users users left join Appointment app on users.Email_Id=app.users.Email_Id where users.Referred_Coupon=?1 and app.First_appointment='yes' and (app.Status='completed')")
    public List<userappointjoin> join(String generate_code);
}
