package freeboard.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import freeboard.bean.FreeboardDTO;

@Transactional
@Repository
public class FreeboardDAOMybatis implements FreeboardDAO {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public void freeboardWrite(FreeboardDTO freeboardDTO) {
		sqlSession.insert("freeboardSQL.freeboardWrite", freeboardDTO);
	}

	@Override
	public FreeboardDTO getFreeboardView(int board_seq) {
		return sqlSession.selectOne("freeboardSQL.getFreeboardView", board_seq);
	}

	@Override
	public List<FreeboardDTO> getFreeboardList() {
		return sqlSession.selectList("freeboardSQL.getFreeboardList");
	}

	@Override
	public void freeboardModify(FreeboardDTO freeboardDTO) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void freeboardDelete(int board_seq) {
		// TODO Auto-generated method stub
		
	}


}
