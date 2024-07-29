package com.sonix.admindashboard;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.sonix.admindashboard.entity.Admin;
import com.sonix.admindashboard.repo.DBHandler;
import com.sonix.admindashboard.serviceImpl.AdminServiceImpl;

public class Test {
public static void main(String[] args) {
	Session session = DBHandler.getSession();
	Transaction transaction = session.beginTransaction();
	Admin ad=new Admin();
	ad.setAdminName("ramesh");
	ad.setAdminPhno(8545854213l);
	ad.setAdminEmail("r@gmail.com");
	ad.setAdminUsername("ram");
	ad.setAdminPassword("ram");
	System.out.println(new AdminServiceImpl().addAdmin(ad));
	transaction.commit();
}
}
