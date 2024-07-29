package com.sonix.admindashboard.service;

import java.util.List;

import com.sonix.admindashboard.entity.Slot;
import com.sonix.admindashboard.exception.SlotException;

public interface SlotService {
	
	public List<Slot>  getAllSlot() throws SlotException;

}