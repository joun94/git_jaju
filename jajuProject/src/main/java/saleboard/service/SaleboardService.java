package saleboard.service;

import java.util.List;
import java.util.Map;

import saleboard.bean.SaleboardDTO;
import saleboard.bean.SaleboardPaging;

public interface SaleboardService {

	public void saleboardWrite(SaleboardDTO saleboardDTO);

	public List<SaleboardDTO> getSaleboardList(Map<String, String> map);

	public SaleboardDTO getSaleboardView(int sale_seq);

	public SaleboardPaging saleboardPaging(int pg);

	public List<SaleboardDTO> getSearchSaleboardList(Map<String, String> map);

	public SaleboardPaging searchSaleboardPaging(Map<String, String> map);
	
	public void saleboardDelete(int sale_seq);

	public void saleboardModify(SaleboardDTO saleboardDTO);
	
}
