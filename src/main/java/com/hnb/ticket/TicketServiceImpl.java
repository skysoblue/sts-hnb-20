package com.hnb.ticket;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
public class TicketServiceImpl implements TicketService {

	@Override
	public List getSeatList(String theater, String room) {
		return ticketDAO.selectRoom(theater,room);
	}
}
