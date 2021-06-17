package report.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import report.bean.ReportDTO;

@Transactional
@Repository
public class ReportDAOMybatis implements ReportDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public void reportWrite(ReportDTO reportDTO) {
		sqlSession.insert("memberreportSQL.reportWrite", reportDTO);
		
	}

	@Override
	public int getTotalA() {
		return sqlSession.selectOne("memberreportSQL.getTotalA");
	}


	@Override
	public List<ReportDTO> getReportList(Map<String, String> map) {
		return sqlSession.selectList("memberreportSQL.getReportList", map);
	}

}
