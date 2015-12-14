package com.hnb.event;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hnb.member.MemberServiceImpl;
import com.hnb.member.MemberVO;


@Controller
@RequestMapping("/event")
public class EventController {
	private static final Logger logger = LoggerFactory.getLogger(EventController.class);
	@Autowired
	MemberVO member;
	@Autowired
	MemberServiceImpl service;
	
	@RequestMapping("/boardList")
	public String boardList(Model model){
		logger.info("EventController article()");
		List<MemberVO> list = service.getList();
		model.addAttribute("memberList",list);
		model.addAttribute("count", service.count());
		return "event/boardList.tiles";
	}
}
