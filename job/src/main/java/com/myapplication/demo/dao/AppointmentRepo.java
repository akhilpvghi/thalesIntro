package com.myapplication.demo.dao;

import com.myapplication.demo.model.Appointment;
import net.bytebuddy.dynamic.loading.InjectionClassLoader;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
public interface AppointmentRepo extends CrudRepository<Appointment,Long> {

    @Query("from Appointment app where email_id=?1 and app.Status='pending' and app.InfoAsked='pending' and app.InfoReceived='pending'")
    public List<Appointment> findByUserspp(String emailid);

    @Query("from Appointment app where email_id=?1 and app.Status='pending' and app.InfoAsked='done' and app.InfoReceived='pending'")
    public List<Appointment> findByUsersdp(String emailid);

    @Query("from Appointment app where email_id=?1 and app.Status='pending' and app.InfoAsked='done' and app.InfoReceived='done'")
    public List<Appointment> findByUsersdd(String emailid);


    @Query("from Appointment where email_id=?1 and Status='upcoming'")
    public List<Appointment> findByUsersUpcoming(String emailid);

    @Query("from Appointment where email_id=?1 and Status='completed' or email_id=?1 and Status='cancelled'")
    public List<Appointment> findByUsersHistory(String emailid);

    @Query("from Appointment app where app.Status=?1 order by app.Appoint_Id")
    public List<Appointment> findAllByStatus(String status);

    @Query("from Appointment where Status='completed' and email_id=?1")
    public List<Appointment> findAllByCompletedStatus(String emailid);

    @Query("from Appointment where  email_id=?1" )
    public List<Appointment> findAllAppointment(String emailid);


    @Transactional
    @Modifying
    @Query("update Appointment appoint set  appoint.Expert_Name=?1, appoint.date=?2, appoint.time=?3, appoint.Status=?4 where appoint.Appoint_Id=?5")
    public void updateappointment(String expert, String date, String time, String status, Long appoint_id);

    @Transactional
    @Modifying
    @Query("update Appointment appoint set appoint.InfoAsked=?1, appoint.InfoReceived=?2 where appoint.Appoint_Id=?3")
    public void updateInfo(String infoasked, String inforeceived, Long appoint_id);

    @Transactional
    @Modifying
    @Query("update Appointment appoint set appoint.Status=?1 where appoint.Appoint_Id=?2")
    public void edit(String status,Long appoint_id);
}

