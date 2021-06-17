package member.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import member.bean.MemberDTO;
import member.mail.MailSendService;
import member.service.MemberService;

@Controller
@RequestMapping(value="/member")
public class MemberController {
	@Autowired
	private MemberService memberService;
	@Autowired
	private MailSendService mailSendService;
	
	@RequestMapping(value="/loginForm", method=RequestMethod.GET)
	public String loginForm(Model model) {
		model.addAttribute("display", "/member/loginForm.jsp");
		
		return "/index";
	}
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	@ResponseBody
	public String login(@RequestParam Map<String, String> map, HttpSession session, Model model) {
		String result = memberService.login(map);
		
		if(result.equals("success")) {
			model.addAttribute("memId", session.getAttribute("memId"));
		}
		
		return result;
	}
	
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		
		return "/index";
	}
	
	@RequestMapping(value="/writeForm", method=RequestMethod.GET)
	public String writeForm(Model model) {
		model.addAttribute("display", "/member/writeForm.jsp");
		
		return "/index";
	}

	@RequestMapping(value="/checkMail", method=RequestMethod.POST)
	@ResponseBody
	public void checkMail(@RequestParam String email, HttpSession session) {
		String authKey = mailSendService.sendAuthMail(email);
		session.setAttribute("authKey", authKey);
		session.setMaxInactiveInterval(3 * 60);
	}

	@RequestMapping(value="/checkCode", method=RequestMethod.POST)
	@ResponseBody
	public String checkCode(@RequestParam String authKey, HttpSession session) {
		String code = (String) session.getAttribute("authKey");
		
		if(authKey.equals(code)) {
			return "success";
		}else {
			return "fail";
		}
	}
	
	@RequestMapping(value="/checkId", method=RequestMethod.POST)
	@ResponseBody
	public String checkId(@RequestParam String member_id) {
		return memberService.checkId(member_id);
	}
	
	@RequestMapping(value="/write", method=RequestMethod.POST)
	@ResponseBody
	public void write(@RequestParam("iden[]") List<String> list,
					  @ModelAttribute MemberDTO memberDTO) {
		memberDTO.setMember_iden(list.get(0) + list.get(1));
		memberDTO.setMember_image("profile.jpg");
		
		memberService.write(memberDTO);
	}
}
