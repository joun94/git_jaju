package member.service;

import java.util.Map;

import member.bean.MemberDTO;

public interface MemberService {
	public String login(Map<String, String> map);
	public String checkId(String member_id);
	public void write(MemberDTO memberDTO);
}
