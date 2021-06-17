package saleboard.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import saleboard.bean.SaleboardDTO;
import saleboard.bean.SaleboardPaging;
import saleboard.dao.SaleboardDAO;

@Service
public class SaleboardServiceImpl implements SaleboardService {
	@Autowired
	private SaleboardPaging saleboardPaging;

	@Autowired
	private SaleboardDAO saleboardDAO;
	
	@Override
	public void saleboardWrite(SaleboardDTO saleboardDTO) {

		
		if(saleboardDTO.getSale_state() == null) {
			saleboardDTO.setSale_state("");
		}
		if(saleboardDTO.getSale_subject() == null) {
			saleboardDTO.setSale_subject("");
		}
		if(saleboardDTO.getSale_nego() == null) {
			saleboardDTO.setSale_nego("");
		}
		if(saleboardDTO.getSale_category() == null) {
			saleboardDTO.setSale_category("");
		}
		if(saleboardDTO.getSale_condition() == null) {
			saleboardDTO.setSale_condition("");
		}
		if(saleboardDTO.getSale_direct() == null) {
			saleboardDTO.setSale_direct("");
		}
		if(saleboardDTO.getSale_delivery() == null) {
			saleboardDTO.setSale_delivery("");
		}
		if(saleboardDTO.getSale_onlineTran() == null) {
			saleboardDTO.setSale_onlineTran("");
		}
		
		if(saleboardDTO.getSale_content() == null) {
			saleboardDTO.setSale_content("");
		}
		
		if(saleboardDTO.getMember_id() == null) {
			saleboardDTO.setMember_id("qweqwe");
		}
		
		if(saleboardDTO.getSale_hide() == null) {
			saleboardDTO.setSale_hide("");
		}
		
		if(saleboardDTO.getSale_buyer() == null) {
			saleboardDTO.setSale_buyer("");
		}
		
		if(saleboardDTO.getSale_image1() == null) {
			saleboardDTO.setSale_image1("");
		}
		
		if(saleboardDTO.getSale_image2() == null) {
			saleboardDTO.setSale_image2("");
		}
		if(saleboardDTO.getSale_image3() == null) {
			saleboardDTO.setSale_image3("");
		}
		if(saleboardDTO.getSale_image4() == null) {
			saleboardDTO.setSale_image4("");
		}
		if(saleboardDTO.getSale_image5() == null) {
			saleboardDTO.setSale_image5("");
		}
		if(saleboardDTO.getSale_image6() == null) {
			saleboardDTO.setSale_image6("");
		}
		if(saleboardDTO.getSale_image7() == null) {
			saleboardDTO.setSale_image7("");
		}
		if(saleboardDTO.getSale_image8() == null) {
			saleboardDTO.setSale_image8("");
		}
		if(saleboardDTO.getSale_image9() == null) {
			saleboardDTO.setSale_image9("");
		}
		
		if(saleboardDTO.getSale_image10() == null) {
			saleboardDTO.setSale_image10("");
		}
		
		saleboardDAO.saleboardWrite(saleboardDTO);
		
	}

	@Override
	public List<SaleboardDTO> getSaleboardList(Map<String, String> map) {
		
		int pg = Integer.parseInt(map.get("pg"));
		
		int endNum = pg * 15;
		int startNum = endNum - 14;
		
		
		map.put("startNum", startNum+"");
		map.put("endNum", endNum +"");
		
		return saleboardDAO.getSaleboardList(map);
	}

	@Override
	public SaleboardDTO getSaleboardView(int sale_seq) {
		return saleboardDAO.getSaleboardView(sale_seq);
	}

	@Override
	public SaleboardPaging saleboardPaging(int pg) {
				
		saleboardPaging.setCurrentPage(pg);
		saleboardPaging.setPageBlock(3);
		saleboardPaging.setPageSize(15);
		int totalA = saleboardDAO.getTotal();
		saleboardPaging.setTotalA(totalA);		
		
		saleboardPaging.makePagingHTML();
		
		return saleboardPaging;
	}

	@Override
	public List<SaleboardDTO> getSearchSaleboardList(Map<String, String> map) {
		
		int endNum = Integer.parseInt(map.get("pg")) * 15;
		int startNum = endNum - 14;
		
		map.put("startNum", startNum+"");
		map.put("endNum", endNum +"");

		
		return saleboardDAO.getSearchSaleboardList(map);
	}

	@Override
	public SaleboardPaging searchSaleboardPaging(Map<String, String> map) {
		int pg = Integer.parseInt(map.get("pg"));
		saleboardPaging.setCurrentPage(pg);
		saleboardPaging.setPageBlock(3);
		saleboardPaging.setPageSize(15);
		int totalA = saleboardDAO.getSearchTotal(map);
		saleboardPaging.setTotalA(totalA);		
		
		saleboardPaging.makePagingHTML();
		
		return saleboardPaging;
	}
	
	@Override
	public void saleboardDelete(int sale_seq) {
		saleboardDAO.saleboardDelete(sale_seq);
	}

	@Override
	public void saleboardModify(SaleboardDTO saleboardDTO) {
		
		if(saleboardDTO.getSale_state() == null) {
			saleboardDTO.setSale_state("");
		}
		
		if(saleboardDTO.getSale_subject() == null) {
			saleboardDTO.setSale_subject("");
		}
		
		if(saleboardDTO.getSale_nego() == null) {
			saleboardDTO.setSale_nego("");
		}
		
		if(saleboardDTO.getSale_category() == null) {
			saleboardDTO.setSale_category("");
		}
		
		if(saleboardDTO.getSale_condition() == null) {
			saleboardDTO.setSale_condition("");
		}
		
		if(saleboardDTO.getSale_direct() == null) {
			saleboardDTO.setSale_direct("");
		}
		
		if(saleboardDTO.getSale_delivery() == null) {
			saleboardDTO.setSale_delivery("");
		}
		
		if(saleboardDTO.getSale_onlineTran() == null) {
			saleboardDTO.setSale_onlineTran("");
		}
		
		if(saleboardDTO.getSale_content() == null) {
			saleboardDTO.setSale_content("");
		}
		
		if(saleboardDTO.getMember_id() == null) {
			saleboardDTO.setMember_id("");
		}
		
		if(saleboardDTO.getSale_hide() == null) {
			saleboardDTO.setSale_hide("");
		}
		
		if(saleboardDTO.getSale_buyer() == null) {
			saleboardDTO.setSale_buyer("");
		}
		
		if(saleboardDTO.getSale_image1() == null) {
			saleboardDTO.setSale_image1("");
		}
		
		if(saleboardDTO.getSale_image2() == null) {
			saleboardDTO.setSale_image2("");
		}
		if(saleboardDTO.getSale_image3() == null) {
			saleboardDTO.setSale_image3("");
		}
		if(saleboardDTO.getSale_image4() == null) {
			saleboardDTO.setSale_image4("");
		}
		if(saleboardDTO.getSale_image5() == null) {
			saleboardDTO.setSale_image5("");
		}
		if(saleboardDTO.getSale_image6() == null) {
			saleboardDTO.setSale_image6("");
		}
		if(saleboardDTO.getSale_image7() == null) {
			saleboardDTO.setSale_image7("");
		}
		if(saleboardDTO.getSale_image8() == null) {
			saleboardDTO.setSale_image8("");
		}
		if(saleboardDTO.getSale_image9() == null) {
			saleboardDTO.setSale_image9("");
		}
		
		if(saleboardDTO.getSale_image10() == null) {
			saleboardDTO.setSale_image10("");
		}
		
		saleboardDAO.saleboardModify(saleboardDTO);
		
	}

}
