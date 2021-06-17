package freeboard.service;

import java.util.List;

import freeboard.bean.FreeboardDTO;

public interface FreeboardService {

	public void freeboardWrite(FreeboardDTO freeboardDTO);

	public FreeboardDTO getFreeboardView(int board_seq);

	public List<FreeboardDTO> getFreeboardList();

	public void freeboardModify(FreeboardDTO freeboardDTO);

	public void freeboardDelete(int board_seq);

	
}
