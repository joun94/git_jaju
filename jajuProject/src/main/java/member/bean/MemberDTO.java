package member.bean;

import java.util.Date;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class MemberDTO {
	private String member_id, member_pwd, member_name, member_email, member_telephone;
	private String member_sido, member_sigungu, member_detailAddr, member_gender, member_iden;
	private int member_manner, member_warning;
	private String member_state, member_image;
	private Date member_date;
}
