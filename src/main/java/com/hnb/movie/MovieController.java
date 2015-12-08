package com.hnb.movie;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
@RequestMapping("/movie")
public class MovieController {
	private static final Logger logger = LoggerFactory.getLogger(MovieController.class);
	@Autowired
	MovieServiceImpl service;
	@Autowired
	MovieVO movie;
	
	@RequestMapping("/Movie")
	public String Movie(){
		logger.info("MovieController:Movie()");
		return "movie/Movie";
	}
	@RequestMapping("/movie_info")
	public String movieInfo(Model model){
		logger.info("MovieController:movieInfo()");
		List<MovieVO> list = service.getList();
		model.addAttribute("movieList", list);
		logger.info("영화리스트 조회결과 : {}", list);
		return "movie/movie_info";
	}
	@RequestMapping("/movie_name/{movieName}")
	public String movieName(
			@PathVariable("movieName")String name,
			Model model
			){
		logger.info("MovieController:movieName()");
		logger.info("영화 아이디 : {}",name);
		movie = service.searchByName(name);
		logger.info("영화제목 : {}",movie.getFilmName());
		model.addAttribute("movie", movie);
		return "movie/movie_name";
	}
	@RequestMapping("/movie_Cut")
	public String movieCut(String filmNumber,Model model){
		logger.info("MovieController:movieCut()");
		logger.info("movieCut의 filmNumber : {}",filmNumber);
		movie = service.searchByName(filmNumber);
		String cut = movie.getCut();
		String[]arr = cut.split("/");
		logger.info("배열결과 : {}",arr);
		model.addAttribute("arr",arr);
		return "movie/movie_Cut";
	}
	@RequestMapping("/movie_Tra")
	public String movieTra(String filmNumber,Model model){
		logger.info("MovieController:movieTra()");
		logger.info("movieCut의 filmNumber : {}",filmNumber);
		movie = service.searchByName(filmNumber);
		String tra = movie.getTrailer();
		logger.info("getTrailer : {}",tra);
		String[]arrt = tra.split("/");
		logger.info("트레일러 : {}",arrt);
		model.addAttribute("arrt", arrt);
		return "movie/movie_Tra";
	}
	@RequestMapping("/movie_Basic")
	public String movieBasic(String filmNumber, Model model){
		logger.info("MovieController:movieBasic()");
		logger.info("movieCut의 filmNumber : {}",filmNumber);
		movie = service.searchByName(filmNumber);
		logger.info("movieBasic컷의영화제목 : {}",movie.getFilmName());
		model.addAttribute("movie", movie);
		return "movie/movie_Basic";
	}
	@RequestMapping("/movie_Chart")
	public String movieChart(Model model){
		logger.info("MovieController:movieChart()");
		List<MovieVO> list = service.getList();
		model.addAttribute("movieList2", list);
		return "movie/movie_Chart";
	}
}
