package report.dao;

import java.util.List;
import java.util.Map;

import report.bean.ReportDTO;

public interface ReportDAO {

	public void reportWrite(ReportDTO reportDTO);

	public List<ReportDTO> getReportList(Map<String, String> map);

	public int getTotalA();

}
