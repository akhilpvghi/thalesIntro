package com.myapplication.demo.dao;

import com.myapplication.demo.model.Appointment;
import com.myapplication.demo.model.Billing;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.transaction.TransactionScoped;
import java.util.List;

@Repository
public interface BillingRepo extends CrudRepository<Billing,Long> {

    @Query("from Billing where email_id=?1 ")
    public Billing findBybilladdress(String emailid);

    @Transactional
    @Modifying
    @Query("update Billing billing set billing.Address= ?1, billing.City=?2, billing.GST_Number=?3, billing.Pincode=?4, billing.State=?5,  billing.Billing_Name=?6, billing.Pan_Card=?7 where email_id=?8")
    public void updatebillingaddress(String address, String city, String gst_no, Integer pincode, String state, String name, String pancard, String emailid);
}
