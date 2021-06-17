package notice.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import notice.bean.NoticeDTO;

@Transactional
@Repository
public class NoticeDAOMybatis implements NoticeDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<NoticeDTO> getNoticeList(Map<String, String> map) {
		List<NoticeDTO> list = sqlSession.selectList("noticeboardSQL.getNoticeList", map);
		return list;
	}

	@Override
	public int getTotalA() {
		return sqlSession.selectOne("noticeboardSQL.getTotalA");
	}

	@Override
	public List<NoticeDTO> getBoardSearchList(Map<String, String> map) {
		List<NoticeDTO> list = sqlSession.selectList("noticeboardSQL.getNoticeList", map);
		return list;
	}

	@Override
	public int getTotalSearchA(Map<String, String> map) {
		return sqlSession.selectOne("noticeboardSQL.getTotalA");
	}

}
