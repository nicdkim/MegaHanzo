package com.mega.app.board.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.mega.mybatis.SqlMapConfig;

public class BoardDAO {
	SqlSession sqlsession;
	
	public BoardDAO() {
		sqlsession = SqlMapConfig.getFactory().openSession(true);	//true로 설정시 오토커밋
	}

	public int getBoardCnt() {
		return sqlsession.selectOne("Board.getBoardCnt");
	}

	public List<BoardDTO> getBoardList(int startRow, int pageSize, String keyword) {
		HashMap<String, Object> datas = new HashMap<String, Object>();
		List<BoardDTO> result;
		datas.put("startRow",startRow);
		datas.put("pageSize",pageSize);
		if(keyword == null) {
		//selectList로 검색해오면 그 모든 행들을 객체로 만들고 그것들이 담겨있는 List를 리턴
			result = sqlsession.selectList("Board.getBoardList",datas);
		}
		else {
			datas.put("keyword",keyword);
			result = sqlsession.selectList("Board.getBoardListWithKey",datas);
		}
		return result;
	}

	public boolean insertBoard(BoardDTO board) {
		return 1 == sqlsession.insert("Board.insertBoard", board);
	}

	public int getLastNum(String userid) {
		return sqlsession.selectOne("Board.getLastNum",userid);
	}

	public BoardDTO getDetail(int boardnum) {
		return sqlsession.selectOne("Board.getDetail",boardnum);
	}

	public void updateReadCount(int boardnum) {
		sqlsession.update("Board.updateReadCount",boardnum);
	}

	public boolean updateBoard(BoardDTO board) {
		return 1 == sqlsession.update("Board.updateBoard",board);
	}

	public boolean removeBoard(int boardnum) {
		return sqlsession.delete("Board.removeBoard",boardnum) == 1;
	}

	public boolean insertReply(ReplyDTO reply) {
		return sqlsession.insert("Board.insertReply",reply) == 1;
	}

	public List<ReplyDTO> getReplies(int boardnum) {
		return sqlsession.selectList("Board.getReplies",boardnum);
	}

	public boolean removeReply(int replynum) {
		return sqlsession.delete("Board.removeReply",replynum) == 1;
	}

	public boolean modifyReply(int replynum, String replycontents) {
		HashMap<String, Object> datas = new HashMap<String, Object>();
		datas.put("replynum",replynum);
		datas.put("replycontents",replycontents);
		return sqlsession.update("Board.modifyReply",datas) == 1;
	}
}








