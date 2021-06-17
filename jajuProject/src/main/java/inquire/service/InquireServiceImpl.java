package inquire.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.commons.collections4.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import inquire.bean.InquireDTO;
import inquire.dao.InquireDAO;

@Service
public class InquireServiceImpl implements InquireService {
	@Autowired
	private HttpSession session;
	@Autowired
	private InquireDAO inquireDAO;
	
	
	@Override
	public void inquireWrite(InquireDTO inquireDTO) {
		inquireDAO.inquireWrite(inquireDTO);
		
	}


	@Override
	public List<InquireDTO> getInquireList(String pg) {
		//1페이지당 3개
		int endNum = Integer.parseInt(pg)*10;
		int startNum = endNum-9;
		
		Map<String, Integer>map = new HashedMap<String, Integer>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		return inquireDAO.getInquireList(map);
	}


	@Override
	public InquireDTO getInquireView(String seq) {
		return inquireDAO.getInquireView(seq);
	}
	


}
