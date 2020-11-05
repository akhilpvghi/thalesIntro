package com.myapplication.demo.dao;

import com.myapplication.demo.model.Appointment;
import com.myapplication.demo.model.Users;
import com.myapplication.demo.model.Wallet;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface WalletRepo extends CrudRepository<Wallet,String> {

    @Query("from Wallet w where email_id=?1 order by w.date desc, w.time desc")
    public List<Wallet> findByUsers(String emailid);

    @Query("from Wallet wallet where wallet.users=?1 AND wallet.Particular='Referral Bonus'")
    public List<Wallet> findamountcredit(Users users);

}
