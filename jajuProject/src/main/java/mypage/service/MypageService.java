package mypage.service;

import java.util.List;
import java.util.Map;

import mypage.bean.MessageDTO;
import mypage.bean.MyScrap_Paging;
import mypage.bean.MylocationDTO;
import mypage.bean.MypageDTO;
import mypage.bean.MypagePaging;
import mypage.bean.ScrapDTO;

public interface MypageService {

	public MypageDTO getKeywordList(String id);
	//관심 키워드 등록
	public void myKeyword(Map<String, Object> map);
	//관심키워드 업데이트
	public void updateMyKeyword(Map<String, Object> map);
	//관심키워드 총 개수
	public String getKeywordCountNum(String id);
	
	//팔로우리스트
	public List<MypageDTO> getFollowList(Map<String, String> map);
	//메세지 리스트
	public List<MessageDTO> getMyMessageList(Map<String, String> map);
	//찜목록 리스트
	public List<ScrapDTO> getMyScrapList(Map<String, String> map);
	
	//메세지 상세 페이지 
	public MessageDTO myMessageView(Map<String, String> map);
	
	//관심지역
	public void mylocationWrite(Map<String, String> map);

	public void mylocationWrite2(Map<String, String> map);

	public void mylocationDelete(Map<String, String> map);
	
	public void mylocationDelete2(Map<String, String> map);
	
	public List<MylocationDTO> mylocationList(Map<String, String> map);

	public List<MylocationDTO> mylocationCount(Map<String, String> map);

	//팔로우 삭제
	public void deleteFollowList(String[] check);
	//메세지 삭제
	public void deleteMyMessage(String[] check);
	//찜목록 삭제
	public void deleteMyScrap(String[] check);

	/*public MypagePaging myScrapPaging(String pg);*/
	
	//팔로우 페이징 처리
	public MypagePaging mypagePaging(Map<String,String> map);
	//찜목록 페이징 처리
	public MyScrap_Paging myScrap_Paging(String pg);

}
