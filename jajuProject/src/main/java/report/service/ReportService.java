package report.service;

import java.util.List;
import java.util.Map;

import org.springframework.web.bind.annotation.RequestParam;

import report.bean.ReportDTO;
import report.bean.ReportPaging;

public interface ReportService {
	
	public void reportWrite(ReportDTO reportDTO);
	
	public List<ReportDTO> getReportList(String pg);

	public ReportPaging reportPaging(String pg);


}
