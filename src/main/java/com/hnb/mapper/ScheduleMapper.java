package com.hnb.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.hnb.schedule.ScheduleVO;
@Repository
public interface ScheduleMapper {
	public List<String> getRateList();
	public List<String> getAscList();
	public List<String> getTheaterList();
	public List<String> getTheaterListByM(String movie);
	public List<String> getShowDateList();
	public List<String> getShowDateListByM(String movie);
	public List<?> getTheaterListByMD(String movie, String date);
	public List<?> getShowDateListByMT(String movie, String theater);
	public List<?> getMovieRateByTD(String theater, String date);
	public List<?> getMovieAscByTD(String theater, String date);
	public List<?> getMovieRateByT(String theater);
	public List<?> getMovieAscByT(String theater);
	public List<?> getShowDateListByT(String theater);
	public List<?> getMovieRateByD(String date);
	public List<?> getMovieAscByD(String date);
	public List<?> getTheaterListByD(String date);
	public List<?> getTimeList(String movie, String theater, String date);
	public String getFilmNumberBy(String movie);
}
