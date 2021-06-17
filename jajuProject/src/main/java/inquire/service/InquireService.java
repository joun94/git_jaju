package inquire.service;

import java.util.List;
import java.util.Map;

import inquire.bean.InquireDTO;



public interface InquireService {

	public void inquireWrite(InquireDTO inquireDTO);

	public List<InquireDTO> getInquireList(String pg);

	public InquireDTO getInquireView(String seq);


}
