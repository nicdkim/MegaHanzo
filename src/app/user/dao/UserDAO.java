package app.user.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import app.movie.dao.MovieDTO;
import mybatis.SqlMapConfig;

public class UserDAO {
	SqlSession sqlsession;
	
	public UserDAO() {
		sqlsession = SqlMapConfig.getFactory().openSession(true);	//true로 설정시 오토커밋
	}
	
	public boolean join(UserDTO newUser) {
		return sqlsession.insert("User.join",newUser) == 1;
	}
	public boolean checkId(String userid) {
		int result = sqlsession.selectOne("User.checkId",userid);
		return result == 0;
	}
	public UserDTO login(String userid,String userpw) {
		HashMap<String, String> datas = new HashMap<>();
		datas.put("userid", userid);
		datas.put("userpw", userpw);
		
		UserDTO loginUser = sqlsession.selectOne("User.login",datas);
		return loginUser;
	}

	public int getUserCnt() {
		return sqlsession.selectOne("User.getUserCnt");
	}

	public List<UserDTO> getUserList(int startRow, int pageSize, String keyword) {
		HashMap<String, Object> datas = new HashMap<String, Object>();
		List<UserDTO> result;
		datas.put("startRow",startRow);
		datas.put("pageSize",pageSize);
		if(keyword == null) {
		//selectList로 검색해오면 그 모든 행들을 객체로 만들고 그것들이 담겨있는 List를 리턴
			result = sqlsession.selectList("User.getUserList",datas);
		}
		else {
			datas.put("keyword",keyword);
			result = sqlsession.selectList("User.getUserListWithKey",datas);
		}
		return result;
	}

	public UserDTO getDetail(String userid) {
		return sqlsession.selectOne("User.getDetail", userid);
	}

	public boolean removeUser(String userid) {
		return sqlsession.delete("User.removeUser",userid) == 1;
	}

	public boolean checkVc(String vcode) {
		// TODO Auto-generated method stub
		return false;
	}
	public boolean leaveUser(String userid) {
		return sqlsession.delete("User.removeUser",userid) == 1;
	}

	public boolean modifyUser(UserDTO user) {
		return 1 == sqlsession.update("User.updateUser", user);
	}
	
	public UserDTO id_find(String username, String userphone) {
		HashMap<String, String> datas = new HashMap<>();
		datas.put("username", username);
		datas.put("userphone", userphone);
		
		UserDTO id_find = sqlsession.selectOne("User.id_find",datas);
		return id_find;
	}
	
	public UserDTO pw_find(String userid, String userphone) {
		HashMap<String, String> datas = new HashMap<>();
		datas.put("userid", userid);
		datas.put("userphone", userphone);
		
		UserDTO pw_find = sqlsession.selectOne("User.pw_find",datas);
		return pw_find;
	}
	public boolean userPerList(String userid) {
		return 1 == sqlsession.update("User.changeRole",userid);
	}
}

















