package com.mega.app.movie.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.mega.mybatis.SqlMapConfig;

public class MovieDAO {
SqlSession sqlsession;
	
	public MovieDAO() {
		sqlsession = SqlMapConfig.getFactory().openSession(true);	//true로 설정시 오토커밋
	}

	public int getMovieCnt() {
		return sqlsession.selectOne("Movie.getMovieCnt");
	}
	public int getReviewCnt(int movieid) {
		return sqlsession.selectOne("Movie.getReviewCnt",movieid);
	}

	public List<MovieDTO> getMovieList(String keyword) {
		List<MovieDTO> result;
		if(keyword == null) {
		//selectList로 검색해오면 그 모든 행들을 객체로 만들고 그것들이 담겨있는 List를 리턴
			result = sqlsession.selectList("Movie.getMovieList");
		}
		else {
			result = sqlsession.selectList("Movie.getMovieListWithKey",keyword);
		}
		return result;
	}
	public List<MovieDTO> getMovieListByRate(String keyword) {
		List<MovieDTO> result;
		if(keyword == null) {
			//selectList로 검색해오면 그 모든 행들을 객체로 만들고 그것들이 담겨있는 List를 리턴
			result = sqlsession.selectList("Movie.getMovieListByRate");
		}
		else {
			result = sqlsession.selectList("Movie.getMovieListByRateWithKey",keyword);
		}
		return result;
	}
	
	public List<MovieDTO> getMovieListByTicket(String keyword) {
		List<MovieDTO> result;
		if(keyword == null) {
			//selectList로 검색해오면 그 모든 행들을 객체로 만들고 그것들이 담겨있는 List를 리턴
			result = sqlsession.selectList("Movie.getMovieListByTicket");
		}
		else {
			result = sqlsession.selectList("Movie.getMovieListByTicketWithKey",keyword);
		}
		return result;
	}
	
	
	public boolean insertMovie(MovieDTO movie) {
		return 1 == sqlsession.insert("Movie.insertMovie", movie);
	}

	public int getLastNum() {
		return sqlsession.selectOne("Movie.getLastNum");
	}

	public MovieDTO getDetail(int movieid) {
		return sqlsession.selectOne("Movie.getDetail",movieid);
	}

	public boolean updateMovie(MovieDTO movie) {
		return 1 == sqlsession.update("Movie.updateMovie",movie);
	}

	public boolean buyMovieTicket(int movieid, int count) {
		HashMap<String, Object> datas = new HashMap<String, Object>();
		datas.put("movieid", movieid);
		datas.put("cnt",count);
		return 1 == sqlsession.update("Movie.buyMovieTicket",datas);
	}
	
	public boolean cancelMovieTicket(int movieid, int count) {
		HashMap<String, Object> datas = new HashMap<String, Object>();
		datas.put("movieid", movieid);
		datas.put("cnt",count);
		return 1 == sqlsession.update("Movie.cancelMovieTicket",datas);
	}
	
	public boolean removeMovie(int movieid) {
		return sqlsession.delete("Movie.removeMovie",movieid) == 1;
	}

	public boolean insertReview(ReviewDTO review) {
		return sqlsession.insert("Movie.insertReview",review) == 1;
	}

	public List<ReviewDTO> getReviews(int movieid) {
		return sqlsession.selectList("Movie.getReviews",movieid);
	}
	
	public boolean updateMovieRate(int reviewstar, int movieid) {
		int reviewcnt = getReviewCnt(movieid);
		HashMap<String, Object> datas = new HashMap<String, Object>();
		datas.put("movieid",movieid);
		datas.put("reviewstar",reviewstar);
		datas.put("reviewcnt",reviewcnt);
		return 1 == sqlsession.update("Movie.updateMovieRate",datas);
	}
	public boolean updateMovieRateByModify(int reviewstar, int star, int movieid) {
		int reviewcnt = getReviewCnt(movieid);
		HashMap<String, Object> datas = new HashMap<String, Object>();
		datas.put("movieid",movieid);
		datas.put("reviewstar",reviewstar);
		datas.put("reviewcnt",reviewcnt);
		datas.put("star",star);
		return 1 == sqlsession.update("Movie.updateMovieRate",datas);
	}
	public boolean updateMovieRateByRemove(int star, int movieid) {
		int reviewcnt = getReviewCnt(movieid);
		if(reviewcnt == 0) {
			return 1 == sqlsession.update("Movie.updateMovieRateByZero",movieid);
		}
		HashMap<String, Object> datas = new HashMap<String, Object>();
		datas.put("movieid",movieid);
		datas.put("reviewcnt",reviewcnt);
		datas.put("star",star);
		return 1 == sqlsession.update("Movie.updateMovieRateByRemove",datas);
	}

	public boolean removeReview(int reviewid) {
		return sqlsession.delete("Movie.removeReview",reviewid) == 1;
	}

	public boolean modifyReview(int reviewid, String reviewcontents, int reviewstar) {
		HashMap<String, Object> datas = new HashMap<String, Object>();
		datas.put("reviewid",reviewid);
		datas.put("reviewcontents",reviewcontents);
		datas.put("reviewstar", reviewstar);
		return sqlsession.update("Movie.modifyReview",datas) == 1;
	}
	
	public List<ReviewDTO> getReviewList(int startRow, int pageSize, String keyword) {
		HashMap<String, Object> datas = new HashMap<String, Object>();
		List<ReviewDTO> result;
		datas.put("startRow",startRow);
		datas.put("pageSize",pageSize);
		if(keyword == null) {
		//selectList로 검색해오면 그 모든 행들을 객체로 만들고 그것들이 담겨있는 List를 리턴
			result = sqlsession.selectList("Movie.getReviewList",datas);
		}
		else {
			datas.put("keyword",keyword);
			result = sqlsession.selectList("Movie.getReviewListWithKey",datas);
		}
		return result;
	}
	public List<ReviewDTO> getReviewListByMovie(int startRow, int pageSize, int movieid) {
		HashMap<String, Object> datas = new HashMap<String, Object>();
		List<ReviewDTO> result;
		datas.put("startRow",startRow);
		datas.put("pageSize",pageSize);
		datas.put("movieid",movieid);
		result = sqlsession.selectList("Movie.getReviewListByMovie",datas);
		return result;
	}
	public int getReviewTotalCnt() {
		return sqlsession.selectOne("Movie.getReviewTotalCnt");
	}

	public ReviewDTO getReviewDetail(int reviewid) {
		return sqlsession.selectOne("Movie.getReviewDetail",reviewid);
	}
	
	public MovieDTO getMovieByTitle(String movietitle) {
		return sqlsession.selectOne("Movie.getMovieByTitle",movietitle);
	}
	
	public void updateReadCount(int reviewid) {
		sqlsession.update("Movie.updateReadCount",reviewid);
	}

	public int getLastReviewid() {
		return sqlsession.selectOne("Movie.getLastReviewid");
	}
	public boolean modifyBigReview(ReviewDTO review) {
		return 1 == sqlsession.update("Movie.modifyBigReview",review);
	}
}





