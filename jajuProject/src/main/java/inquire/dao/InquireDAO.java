package inquire.dao;

import java.util.List;
import java.util.Map;

import inquire.bean.InquireDTO;

public interface InquireDAO {

	public void inquireWrite(InquireDTO inquireDTO);

	public List<InquireDTO> getInquireList(Map<String, Integer> map);

	public InquireDTO getInquireView(String seq);

}