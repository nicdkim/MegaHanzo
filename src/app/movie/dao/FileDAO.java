package app.movie.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import mybatis.SqlMapConfig;

public class FileDAO {
	SqlSession sqlsession;
	public FileDAO() {
		sqlsession = SqlMapConfig.getFactory().openSession(true);
	}
	
	public boolean insertFile(FileDTO file) {
		return 1 == sqlsession.insert("File.insertFile",file);
	}
	
	public List<FileDTO> getFiles(int movieid){
		return sqlsession.selectList("File.getFiles",movieid);
	}

	public void deleteByName(String systemname) {
		sqlsession.delete("File.deleteByName",systemname);
	}
}
