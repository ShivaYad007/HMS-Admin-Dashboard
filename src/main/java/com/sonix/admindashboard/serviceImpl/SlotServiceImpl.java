package com.sonix.admindashboard.serviceImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.sonix.admindashboard.entity.Slot;
import com.sonix.admindashboard.exception.SlotException;
import com.sonix.admindashboard.repo.DBHandler;
import com.sonix.admindashboard.service.SlotService;

public class SlotServiceImpl implements SlotService {
	private Session session;
	Transaction transaction;

	@Override
	public List<Slot> getAllSlot() throws SlotException {
			session = DBHandler.getSession();
			Query query = session.getNamedQuery("getAllSlot");
			@SuppressWarnings("unchecked")
			List<Slot> slot = query.list();
			if(slot==null) {
				throw new SlotException("Slot is empty");
			}
			return slot;
	}
}