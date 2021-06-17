package mypage.dao;

import java.util.List;
import java.util.Map;

import mypage.bean.MessageDTO;
import mypage.bean.MylocationDTO;
import mypage.bean.MypageDTO;
import mypage.bean.ScrapDTO;

public interface MypageDAO {

	public MypageDTO getKeywordList(String id);

	public void myKeyword(Map<String, Object> map);

	public void updateMyKeyword(Map<String, Object> map);

	public int getKeywordCountNum(String id);

	public List<MypageDTO> getFollowList(Map<String, String> map);

	public void deleteFollowList(Map<String, String[]> map);

	public int getTotalA(String id);

	public List<MessageDTO> getMyMessageList(Map<String, String> map);

	public List<ScrapDTO> getMyScrapList(Map<String, String> map);
	
	//location

	public void mylocationWrite(Map<String, String> map);

	public void mylocationWrite2(Map<String, String> map);

	public void mylocationDelete(Map<String, String> map);
	
	public void mylocationDelete2(Map<String, String> map);
	
	public List<MylocationDTO> mylocationList(Map<String, String> map);

	public List<MylocationDTO> mylocationCount(Map<String, String> map);

	public void deleteMyMessage(Map<String, String[]> map);

	public void deleteMyScrap(Map<String, String[]> map);

	public int getScrapTotalA();

	public MessageDTO myMessageView(Map<String, String> map);


}
