package com.myapplication.demo.controller;

import com.myapplication.demo.dao.UserRepo;
import com.myapplication.demo.dao.WalletRepo;
import com.myapplication.demo.model.PaytmDetails;
import com.myapplication.demo.service.UserId;
import com.myapplication.demo.model.Users;
import com.myapplication.demo.model.Wallet;
import com.myapplication.demo.service.TransactionId;
import com.paytm.pg.merchant.CheckSumServiceHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Map;
import java.util.TreeMap;

@Controller
public class PaymentController {
	
	@Autowired
	private PaytmDetails paytmDetails;

	@Autowired
	private Environment env;

	@Autowired
	TransactionId transactionId;

	@Autowired
	UserRepo userRepo;

	/*@Autowired
	LoginPersonController loginPersonController;*/

	@Autowired
	WalletRepo walletRepo;


	/*UserId userId;*/

	//payment page
	@GetMapping("/payment")
	public String home(ModelMap modelMap, HttpSession session)
	{
		//getting session
		String emailid=(String)session.getAttribute("MY_EMAILID");

		//setting payment details
		String ORDER_ID= transactionId.transaction();
		modelMap.put("ORDER_ID", ORDER_ID);
		modelMap.put("CUST_ID",emailid);

		return "payment";
	}

	@GetMapping("/sendMoney")
	public String  home2(ModelMap modelMap, HttpSession session)
	{
		return "payment";
	}




	@GetMapping("/walletStmt")
	public String  home3(ModelMap modelMap, HttpSession session)
	{
		return "walletsummary";
	}

	//connecting to paytm using self created URL
	 @PostMapping(value = "/pgredirect")
	 public ModelAndView getRedirect(@RequestParam(name = "CUST_ID") String customerId,
                                        @RequestParam(name = "TXN_AMOUNT") String transactionAmount,
                                        @RequestParam(name = "ORDER_ID") String orderId, HttpSession session) throws Exception {
		 //getting session
		 String emailid=(String)session.getAttribute("MY_EMAILID");


		 //getting user details
		 Users users = userRepo.findById(emailid).orElse(new Users());

		 //creating paytm url
		 ModelAndView modelAndView = new ModelAndView("redirect:" + paytmDetails.getPaytmUrl());


	        TreeMap<String, String> parameters = new TreeMap<>();
	        paytmDetails.getDetails().forEach((k, v) -> parameters.put(k, v));

	        //giving users details to paytm interface
	        parameters.put("MOBILE_NO", users.getContact_Number().toString());
	        parameters.put("EMAIL", users.getEmail_Id());
	        parameters.put("ORDER_ID", orderId);
	        parameters.put("TXN_AMOUNT", transactionAmount);
	        parameters.put("CUST_ID", customerId);
	        String checkSum = getCheckSum(parameters);
	        parameters.put("CHECKSUMHASH", checkSum);
	        modelAndView.addAllObjects(parameters);

	        Wallet wallet=new Wallet();
	        wallet.setTrans_Id(orderId);
	        wallet.setUsers(users);
			walletRepo.save(wallet);
	        return modelAndView;
	    }


	 //Receving response from paytm
	 @PostMapping(value = "/pgresponse")

	 public String getResponseRedirect(HttpServletRequest request, ModelMap model)
	 {
		 Map<String, String[]> mapData = request.getParameterMap();

	        //Storing response from paytm
	        TreeMap<String, String> parameters = new TreeMap<String, String>();
	        mapData.forEach((key, val) -> parameters.put(key, val[0]));
	        String paytmChecksum = "";
	        if (mapData.containsKey("CHECKSUMHASH")) {
	            paytmChecksum = mapData.get("CHECKSUMHASH")[0];
	        }
	        String result;

	        boolean isValideChecksum = false;
	        /*System.out.println("RESULT : "+parameters.toString());*/
	        try {
	            isValideChecksum = validateCheckSum(parameters, paytmChecksum);
	            if (isValideChecksum && parameters.containsKey("RESPCODE")) {
	                if (parameters.get("RESPCODE").equals("01")) {

							Wallet wallet = new Wallet();
							Wallet wallet1 = walletRepo.findById(parameters.get("ORDERID")).orElse(new Wallet());

							Users users = userRepo.findById(wallet1.getUsers().getEmail_Id()).orElse(new Users());

							request.getSession().setAttribute("MY_EMAILID", users.getEmail_Id());

							walletRepo.delete(wallet1);

							//setting transaction details
							wallet.setTrans_Id(parameters.get("ORDERID"));
							wallet.setUsers(users);
							wallet.setParty_Trans_Id(parameters.get("TXNID"));
							wallet.setDate(parameters.get("TXNDATE"));
							wallet.setCredit_Amount(Double.parseDouble(parameters.get("TXNAMOUNT")));
							wallet.setParticular("Cash Added");
							wallet.setTemp_Balance(users.getBalance()+Double.parseDouble(parameters.get("TXNAMOUNT")));

							Double bal = Double.parseDouble(parameters.get("TXNAMOUNT")) + users.getBalance();
							users.setBalance(bal);

							//saving to database
							walletRepo.save(wallet);

							result = "Payment Successful";
	                }
	                else
	                {
	                	walletRepo.deleteById(parameters.get("ORDERID"));
	                	result = "Payment Failed";
	                }
	            }
	            else
	            	{
						walletRepo.deleteById(parameters.get("ORDERID"));
	                	result = "Checksum mismatched";
	            	}
	        } catch (Exception e) {
	            result = e.toString();
	        }

	        model.put("result",result);
	        parameters.remove("CHECKSUMHASH");
	        model.put("parameters",parameters);
	        return "report";
	    }

	    private boolean validateCheckSum(TreeMap<String, String> parameters, String paytmChecksum) throws Exception {
	        return CheckSumServiceHelper.getCheckSumServiceHelper().verifycheckSum(paytmDetails.getMerchantKey(),
	                parameters, paytmChecksum);
	    }


	private String getCheckSum(TreeMap<String, String> parameters) throws Exception {
		return CheckSumServiceHelper.getCheckSumServiceHelper().genrateCheckSum(paytmDetails.getMerchantKey(), parameters);
	}
	
	
	
}
