package mypage.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import mypage.bean.MessageDTO;
import mypage.bean.MylocationDTO;
import mypage.bean.MypageDTO;
import mypage.bean.ScrapDTO;

@Transactional
@Repository
public class MypageDAOMybatis implements MypageDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public MypageDTO getKeywordList(String id) {
		return sqlSession.selectOne("mypageSQL.getKeywordList",id);
	}

	@Override
	public void myKeyword(Map<String,Object> map) {
		sqlSession.insert("mypageSQL.myKeyword",map);
		}

	@Override
	public int getKeywordCountNum(String id) {
		System.out.println("==마이바티스 겟카운트넘버아이디=="+id);
		int keyword1 = sqlSession.selectOne("mypageSQL.getKeywordCountNum1", id);
		int keyword2 = sqlSession.selectOne("mypageSQL.getKeywordCountNum2", id);
		int keyword3 = sqlSession.selectOne("mypageSQL.getKeywordCountNum3", id);
		int keyword4 = sqlSession.selectOne("mypageSQL.getKeywordCountNum4", id);
		int keyword5 = sqlSession.selectOne("mypageSQL.getKeywordCountNum5", id);

		int sum = keyword1+keyword2+keyword3+keyword4+keyword5;
		System.out.println("sum = "+sum);
		return sum;
	}

	@Override
	public void updateMyKeyword(Map<String, Object> map) {
		System.out.println("updateMyKeyword map = " + map);
		sqlSession.update("mypageSQL.updateMyKeyword",map);
	}

	@Override
	public List<MypageDTO> getFollowList(Map<String,String> map) {
		
		
		List<MypageDTO> list = sqlSession.selectList("mypageSQL.getFollowList",map);
		
		System.out.println("마이바티스 return list 값 확인중 = " +list);
		
		return list;
	}

	@Override
	public void deleteFollowList(Map<String, String[]> map) {
		sqlSession.delete("mypageSQL.deleteFollowList",map);
	}

	@Override
	public List<MessageDTO> getMyMessageList(Map<String, String> map) {
		return sqlSession.selectList("mypageSQL.getMyMessageList",map);
	}

	@Override
	public List<ScrapDTO> getMyScrapList(Map<String, String> map) {
		return sqlSession.selectList("mypageSQL.getMyScrapList",map);
	}
	
	//location
	@Override
	public void mylocationWrite(Map<String, String> map) {
		sqlSession.update("mypageSQL.mylocationWrite",map);
	}
	
	@Override
	public void mylocationWrite2(Map<String, String> map) {
		sqlSession.update("mypageSQL.mylocationWrite2",map);
	}

	@Override
	public List<MylocationDTO> mylocationList(Map<String, String> map) {
		  System.out.println("마이바티스컨트롤러확인용 id = " + map.get("id"));

		List<MylocationDTO> list = sqlSession.selectList("mypageSQL.mylocationList",map);
		System.out.println(map);
		return list;
	}

	@Override
	public List<MylocationDTO> mylocationCount(Map<String, String> map) {
		
		List<MylocationDTO> list=sqlSession.selectList("mypageSQL.mylocationCount",map);
		
			return list;
	}

	@Override
	public void mylocationDelete(Map<String, String> map) {
		sqlSession.update("mypageSQL.mylocationDelete",map);
		
	}

	@Override
	public void mylocationDelete2(Map<String, String> map) {
		sqlSession.update("mypageSQL.mylocationDelete2",map);
		
	}
	
	//메세지 삭제. 삭제하지 말고 상태를 3으로 바꾸기.--3은 삭제한 메시지 
	@Override
	public void deleteMyMessage(Map<String, String[]> map) {
		sqlSession.update("mypageSQL.deleteMyMessage",map);
	}
	//스크랩삭제
	@Override
	public void deleteMyScrap(Map<String, String[]> map) {
		sqlSession.delete("mypageSQL.deleteMyScrap",map);
	}
	
	//페이징 처리 - 팔로우 토탈 게시글 수 
	@Override
	public int getTotalA(String id) {
		return sqlSession.selectOne("mypageSQL.getTotalA",id);
	}
	//페이징 처리 - 팔로우 토탈 게시글 수
	@Override
	public int getScrapTotalA() {
		return sqlSession.selectOne("mypageSQL.getScrapTotalA");
	}

	@Override
	public MessageDTO myMessageView(Map<String, String> map) {
		return sqlSession.selectOne("mypageSQL.myMessageView",map);
	}
	
}
