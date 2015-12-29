package com.hnb.mapper;

import java.util.List;

import com.hnb.ticket.TicketVO;


public interface TicketMapper {
	
	public List<?> getSeatList(String theater, String room);
}
