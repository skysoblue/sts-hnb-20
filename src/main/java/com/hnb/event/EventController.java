package com.hnb.event;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/event")
public class EventController {
	private static final Logger logger = LoggerFactory.getLogger(EventController.class);
	@RequestMapping("/boardList")
	public String boardList(Model model){
		logger.info("EventController article()");
		
		return "event/boardList.tiles";
	}
}
