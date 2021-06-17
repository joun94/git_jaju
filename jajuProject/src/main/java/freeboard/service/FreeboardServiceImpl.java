package freeboard.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import freeboard.bean.FreeboardDTO;
import freeboard.dao.FreeboardDAO;

@Service
public class FreeboardServiceImpl implements FreeboardService{

	@Autowired
	private FreeboardDAO freeboardDAO;

	@Override
	public void freeboardWrite(FreeboardDTO freeboardDTO) {
		if(freeboardDTO.getBoard_id() == null) {
			freeboardDTO.setBoard_id("");
		}
		
		if(freeboardDTO.getBoard_subject() == null) {
			freeboardDTO.setBoard_subject("");
		}
		
		if(freeboardDTO.getBoard_content() == null) {
			freeboardDTO.setBoard_content("");
		}
		
		if(freeboardDTO.getImage1() == null) {
			freeboardDTO.setImage1("");
		}
		
		if(freeboardDTO.getImage2() == null) {
			freeboardDTO.setImage2("");
		}
		if(freeboardDTO.getImage3() == null) {
			freeboardDTO.setImage3("");
		}
		freeboardDAO.freeboardWrite(freeboardDTO);
	}

	@Override
	public FreeboardDTO getFreeboardView(int board_seq) {
		return freeboardDAO.getFreeboardView(board_seq);
	}

	@Override
	public List<FreeboardDTO> getFreeboardList() {
		return freeboardDAO.getFreeboardList();
	}

	@Override
	public void freeboardModify(FreeboardDTO freeboardDTO) {
		if(freeboardDTO.getBoard_id() == null) {
			freeboardDTO.setBoard_id("");
		}
		
		if(freeboardDTO.getBoard_subject() == null) {
			freeboardDTO.setBoard_subject("");
		}
		
		if(freeboardDTO.getBoard_content() == null) {
			freeboardDTO.setBoard_content("");
		}
		
		if(freeboardDTO.getImage1() == null) {
			freeboardDTO.setImage1("");
		}
		
		if(freeboardDTO.getImage2() == null) {
			freeboardDTO.setImage2("");
		}
		if(freeboardDTO.getImage3() == null) {
			freeboardDTO.setImage3("");
		}
		freeboardDAO.freeboardModify(freeboardDTO);
		
	}

	@Override
	public void freeboardDelete(int board_seq) {
		freeboardDAO.freeboardDelete(board_seq);
		
	}


}
