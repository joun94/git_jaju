package saleboard.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import saleboard.bean.SaleboardDTO;

@Transactional
@Repository
public class SaleboardDAOMybatis implements SaleboardDAO {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void saleboardWrite(SaleboardDTO saleboardDTO) {
		sqlSession.insert("saleboardSQL.saleboardWrite", saleboardDTO);
		
	}

	@Override
	public List<SaleboardDTO> getSaleboardList(Map<String, String> map) {
		return sqlSession.selectList("saleboardSQL.getSaleboardList", map);
	}

	@Override
	public SaleboardDTO getSaleboardView(int sale_seq) {
		return sqlSession.selectOne("saleboardSQL.getSaleboardView", sale_seq);
	}

	@Override
	public int getTotal() {
		return sqlSession.selectOne("saleboardSQL.getTotal");
	}

	@Override
	public List<SaleboardDTO> getSearchSaleboardList(Map<String, String> map) {
		return sqlSession.selectList("saleboardSQL.getSearchSaleboardList", map);
	}

	@Override
	public int getSearchTotal(Map<String, String> map) {
		return sqlSession.selectOne("saleboardSQL.getSearchTotal", map);
	}
	
	@Override
	public void saleboardDelete(int sale_seq) {
		sqlSession.delete("saleboardSQL.saleboardDelete", sale_seq);
	}

	@Override
	public void saleboardModify(SaleboardDTO saleboardDTO) {
		sqlSession.update("saleboardSQL.saleboardModify", saleboardDTO);
	}

}
