package report.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.commons.collections4.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import report.bean.ReportDTO;
import report.bean.ReportPaging;
import report.dao.ReportDAO;

@Service
public class ReportServiceImpl implements ReportService {
	@Autowired
	private ReportDAO reportDAO;
	@Autowired
	private HttpSession session;
	@Autowired
	private ReportPaging reportPaging;

	@Override
	public void reportWrite(ReportDTO reportDTO) {
		reportDAO.reportWrite(reportDTO);
	}
	
	@Override
	public List<ReportDTO> getReportList(String pg) {
		
		//1페이지당 10개씩
		int endNum = Integer.parseInt(pg)*10; //map에 언제 pg 값을 넣었나?
		int startNum = endNum-9;

		Map<String, String> map = new HashedMap<String, String>();
		map.put("startNum", startNum+"");
		map.put("endNum", endNum+"");
				
		return reportDAO.getReportList(map);
	}
	
	@Override
	public ReportPaging reportPaging(String pg) {
		int totalA = reportDAO.getTotalA(); //총글수
		
		reportPaging.setCurrentPage(Integer.parseInt(pg));//현재 페이지
		reportPaging.setPageBlock(5);
		reportPaging.setPageSize(10);
		reportPaging.setTotalA(totalA);
		reportPaging.makePagingHTML();
		
		return reportPaging;
	}

}
