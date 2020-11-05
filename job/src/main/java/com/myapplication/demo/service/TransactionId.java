package com.myapplication.demo.service;

import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.SessionAttribute;

import javax.xml.ws.ServiceMode;
import java.util.UUID;

@Service

public class TransactionId {
    public String transaction()
    {
        String uniqueID = UUID.randomUUID().toString();
        return uniqueID;
    }
}
