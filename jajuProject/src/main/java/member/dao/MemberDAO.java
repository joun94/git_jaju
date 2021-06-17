package member.dao;

import java.util.Map;

import member.bean.MemberDTO;

public interface MemberDAO {
	public MemberDTO login(Map<String, String> map);
	public MemberDTO getMember(String member_id);
	public void write(MemberDTO memberDTO);
}
