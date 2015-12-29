package com.hnb.schedule;

import java.util.List;

public class ScheduleServiceImpl implements ScheduleService{
	
	
	@Override
	public List<String> getRateList() {
		return scheduleDAO.selectMovieRateAll();
	}
	@Override
	public List<String> getAscList() {
		return scheduleDAO.selectMovieAscAll();
	}
	@Override
	public List<String> getTheaterList() {
		return scheduleDAO.selectTheaterAll();
	}
	@Override
	public List<String> getShowDateList() {
		return scheduleDAO.selectDateAll();
	}
	@Override
	public List<String> getTheaterListByM(String movie) {
		return scheduleDAO.selectTheaterByM(movie);
	}
	@Override
	public List<String> getShowDateListByM(String movie) {
		return scheduleDAO.selectDateByM(movie);
	}
	@Override
	public List getTheaterListByMD(String movie, String date) {
		return scheduleDAO.selectTheaterByMD(movie, date);
	}
	@Override
	public List getShowDateListByMT(String movie, String theater) {
		return scheduleDAO.selectDateByMT(movie, theater);
	}
	@Override
	public List getMovieRateByTD(String theater, String date) {
		return scheduleDAO.selectMovieRateByTD(theater, date);
	}
	@Override
	public List getMovieAscByTD(String theater, String date) {
		return scheduleDAO.selectMovieAscByTD(theater, date);
	}
	@Override
	public List getMovieRateByT(String theater) {
		return scheduleDAO.selectMovieRateByT(theater);
	}
	@Override
	public List getMovieAscByT(String theater) {
		return scheduleDAO.selectMovieAscByT(theater);
	}
	@Override
	public List getShowDateListByT(String theater) {
		return scheduleDAO.selectDateByT(theater);
	}
	@Override
	public List getMovieRateByD(String date) {
		return scheduleDAO.selectMovieRateByD(date);
	}
	@Override
	public List getMovieAscByD(String date) {
		return scheduleDAO.selectMovieAscByD(date);
	}
	@Override
	public List getTheaterListByD(String date) {
		return scheduleDAO.selectTheaterByD(date);
	}
	@Override
	public List getTimeList(String movie, String theater, String date) {
		return scheduleDAO.selectTime(movie,theater,date);
	}
	@Override
	public String getFilmNumberBy(String movie) {
		return scheduleDAO.selectFilmNumber(movie);
	}
}
