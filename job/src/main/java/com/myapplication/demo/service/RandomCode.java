package com.myapplication.demo.service;


import org.springframework.stereotype.Service;

import java.util.Random;

@Service
public class RandomCode
{
    public String randomcode(String firstname, Long contactno)
    {
        String generatedString="";
        if(firstname.length()==3)
        {
            for(int i=0 ; i<3 ; i++)
            {
                generatedString+=firstname.charAt(i);
            }

            for (int i=6; i<10; i++)
            {
                generatedString+=Long.toString(contactno).charAt(i);
            }
            return generatedString.toLowerCase();
        }

        for(int i=0 ; i<4 ; i++)
        {
            generatedString+=firstname.charAt(i);
        }

        for (int i=6; i<10; i++)
        {
            generatedString+=Long.toString(contactno).charAt(i);
        }


        return generatedString.toLowerCase();
    }

}
