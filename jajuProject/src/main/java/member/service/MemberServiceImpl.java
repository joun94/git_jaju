package member.service;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import member.bean.MemberDTO;
import member.dao.MemberDAO;

@Service
public class MemberServiceImpl implements MemberService {
	@Autowired
	private MemberDAO memberDAO;
	@Autowired
	private HttpSession session;

	@Override
	public String login(Map<String, String> map) {
		MemberDTO memberDTO = memberDAO.login(map);
		
		if(memberDTO == null) {
			return "fail";
		}else {
			session.setAttribute("memId", memberDTO.getMember_id());
			return "success";
		}
	}

	@Override
	public String checkId(String member_id) {
		MemberDTO memberDTO = memberDAO.getMember(member_id);
		
		if(memberDTO != null) {
			return "exist";
		}else {
			return "non_exist";			
		}
	}

	@Override
	public void write(MemberDTO memberDTO) {
		memberDAO.write(memberDTO);
	}
}
