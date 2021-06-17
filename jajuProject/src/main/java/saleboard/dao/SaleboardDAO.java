package saleboard.dao;

import java.util.List;
import java.util.Map;

import saleboard.bean.SaleboardDTO;

public interface SaleboardDAO {

	public void saleboardWrite(SaleboardDTO saleboardDTO);

	public List<SaleboardDTO> getSaleboardList(Map<String, String> map);

	public SaleboardDTO getSaleboardView(int sale_seq);

	public int getTotal();

	public List<SaleboardDTO> getSearchSaleboardList(Map<String, String> map);

	public int getSearchTotal(Map<String, String> map);
	
	public void saleboardDelete(int sale_seq);

	public void saleboardModify(SaleboardDTO saleboardDTO);

}
