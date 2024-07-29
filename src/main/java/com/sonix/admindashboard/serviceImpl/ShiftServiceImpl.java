package com.sonix.admindashboard.serviceImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.sonix.admindashboard.entity.Shift;
import com.sonix.admindashboard.exception.ShiftException;
import com.sonix.admindashboard.repo.DBHandler;
import com.sonix.admindashboard.service.ShiftService;

public class ShiftServiceImpl implements ShiftService{
	private Session session;
	Transaction transaction;
	@Override
	public List<Shift> getAllShift() throws ShiftException{
			session = DBHandler.getSession();
			Query query = session.getNamedQuery("getAllShift");
			@SuppressWarnings("unchecked")
			List<Shift> shift = query.list();
			if(shift==null) {
				throw new ShiftException("Slot is empty");
			}
			return shift;
	}
}
