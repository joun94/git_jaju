package mypage.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import mypage.bean.MessageDTO;
import mypage.bean.MyScrap_Paging;
import mypage.bean.MylocationDTO;
import mypage.bean.MypageDTO;
import mypage.bean.MypagePaging;
import mypage.bean.ScrapDTO;
import mypage.service.MypageService;

@Controller
@RequestMapping(value = "mypage")
public class MypageController {

	@Autowired
	private MypageService mypageService;

	// 마이페이지 메인
	@RequestMapping(value = "mypageMain", method = RequestMethod.GET)
	public String mypageMain(Model model) {
		model.addAttribute("display", "/mypage/mypageMain.jsp");
		return "/index";
	}

	// 내거래내역
	@RequestMapping(value = "myDealRecord", method = RequestMethod.GET)
	public String myDealRecord(Model model) {
		model.addAttribute("display", "/mypage/myDealRecord.jsp");
		return "/index";
	}

	// 팔로우목록
	@RequestMapping(value = "myFollow", method = RequestMethod.GET)
	public String myFollow(@RequestParam(required = false, defaultValue = "1") String pg, Model model) {
		model.addAttribute("pg", pg);
		model.addAttribute("display", "/mypage/myFollow.jsp");
		return "/index";
	}

	// 관심키워드등록
	@RequestMapping(value = "myKeywordForm", method = RequestMethod.GET)
	public String myKeywordForm(Model model) {
		// model에 아이디 같이 보내기. 임시로 보내기, session값 없음.
		model.addAttribute("id", "ming");

		model.addAttribute("display", "/mypage/myKeywordForm.jsp");
		return "/index";
	}

	// 관심지역등록
	// 관심지역 등록된 목록보여주기
	@RequestMapping(value = "myLocationForm", method = RequestMethod.GET)
	public String myLocationForm(HttpSession session, Model model) {
		// String id = (String) session.getAttribute("memId");
		model.addAttribute("display", "/mypage/myLocationForm.jsp");
		return "/index";
	}

	// 쪽지 리스트 
	@RequestMapping(value = "myMessage", method = RequestMethod.GET)
	public String myMessage(@RequestParam(required = false, defaultValue = "1") String pg, Model model) {
		model.addAttribute("pg", pg);
		return "/mypage/myMessage";
	}

	// 쪽지 상세 페이지
	@RequestMapping(value = "myMessageView", method = RequestMethod.GET)
	public String myMessageView(@RequestParam String seq,@RequestParam(required = false, defaultValue = "1") String pg, Model model) {
		model.addAttribute("seq", seq);
		model.addAttribute("pg", pg);
		return "/mypage/myMessageView";
	}

	//myMessageForm?pg=1
	@RequestMapping(value = "myMessageForm", method = RequestMethod.GET)
	public String myMessageForm(@RequestParam(required=false, defaultValue="1") String pg, Model model) {
		model.addAttribute("pg",pg);
		return "/mypage/myMessageForm";
	}
	
	// 찜목록
	@RequestMapping(value = "myScrap", method = RequestMethod.GET)
	public String myScrap(@RequestParam(required=false, defaultValue="1") String pg, Model model) {
		model.addAttribute("pg",pg);
		model.addAttribute("display", "/mypage/myScrap.jsp");
		return "/index";
	}

	//게시판쪽 
	@RequestMapping(value = "reportWriteForm", method = RequestMethod.GET)
	public String reportWriteForm(Model model) {
		model.addAttribute("display", "/serviceCenter/reportWriteForm.jsp");
		return "/index";
	}

	
	
	/* ================= 여기서부터 DB연결 METHOD ================= */

	// ajax호출, GET KEYWORD LIST
	@RequestMapping(value = "getKeywordList", method = RequestMethod.POST)
	@ResponseBody
	public ModelAndView getKeywordList(@RequestParam String id) {
		// list불러오기.
		System.out.println("getKeywordList 아이디" + id);
		MypageDTO mypageDTO = mypageService.getKeywordList(id);
		ModelAndView mav = new ModelAndView();
		mav.addObject("mypageDTO", mypageDTO);
		mav.setViewName("jsonView");
		return mav;
	}

	// ajax호출, INSERT 관심키워드
	@RequestMapping(value = "myKeyword", method = RequestMethod.POST)
	@ResponseBody
	public Object myKeyword(@RequestParam Map<String, Object> map, @RequestParam String id) {
		System.out.println("map의 값 확인" + map);
		map.put("id", id);// 컨트롤러에서 넘긴 임의 아이디 값. 바꿔야함.
		System.out.println(map);
		// db에 저장하기
		mypageService.myKeyword(map);

		Map<String, Object> data = new HashMap<String, Object>();
		// 성공했다고 처리
		data.put("code", "OK");
		data.put("message", "등록에 성공 하였습니다.");
		return data;
	}

	// ajax호출, UPDATE 관심키워드
	@RequestMapping(value = "updateMyKeyword", method = RequestMethod.POST)
	@ResponseBody
	public Object updateMyKeyword(@RequestParam Map<String, Object> map, @RequestParam String id) {
		System.out.println("map의 값 확인" + map);
		map.put("id", id);// 컨트롤러에서 넘긴 임의 아이디 값. 바꿔야함.

		// db에 저장하기
		mypageService.updateMyKeyword(map);

		Map<String, Object> data = new HashMap<String, Object>();
		// 성공했다고 처리
		data.put("code", "OK");
		data.put("message", "등록에 성공 하였습니다.");
		return data;
	}

	// ajax호출, GET 관심키워드 COUNT NUMBER
	@RequestMapping(value = "getKeywordCountNum", method = RequestMethod.POST)
	@ResponseBody
	public String getKeywordCountNum(@RequestParam String id) {
		// db에서 불러오기, int값 가져오기 (count(*)from), sum 의 값 .
		System.out.println("getKeywordCountNum= " + id);

		// MypageDTO mypageDTO = mypageService.getKeywordList(id);

		return mypageService.getKeywordCountNum(id);

	}

	/* ======================= FOLLOW ======================= */
	// ajax호출, GET 팔로우 LIST
	@RequestMapping(value = "getFollowList", method = RequestMethod.POST)
	@ResponseBody
	public ModelAndView getFollowList(@RequestParam Map<String, String> map,
			@RequestParam(required = false, defaultValue = "1") String pg) {
		System.out.println("getFollowList 아이디" + map.get("id"));
		
		// GET LIST
		List<MypageDTO> list = mypageService.getFollowList(map);

		// PAGING -> 1PAGE--5POSTS
		map.put("pg",pg);
		MypagePaging mypagePaging = mypageService.mypagePaging(map);

		ModelAndView mav = new ModelAndView();

		mav.addObject("pg", pg);
		mav.addObject("list", list);
		mav.addObject("mypagePaging", mypagePaging);

		mav.setViewName("jsonView");
		return mav;
	}

	// DELETE 팔로우 LIST (without ajax function)
	@RequestMapping(value = "deleteMyFollowList", method = RequestMethod.GET)
	public ModelAndView deleteMyFollowList(String[] check) {
		System.out.println("check = " + check[0]);
		mypageService.deleteFollowList(check);
		return new ModelAndView("redirect:/mypage/myFollow");
	}

	/* ======================= MESSAGE ======================= */
	// ajax호출, GET MY 메세지 LIST
	@RequestMapping(value = "getMyMessageList", method = RequestMethod.POST)
	@ResponseBody
	public ModelAndView getMyMessageList(@RequestParam Map<String, String> map,
			@RequestParam(required = false, defaultValue = "1") String pg) {
		System.out.println("getMyMessageList 아이디" + map.get("id"));
		map.put("pg", pg);
		// GET MESSAGE LIST
		List<MessageDTO> list = mypageService.getMyMessageList(map);

		// PAGING -> 1PAGE--10POSTS
		// MypagePaging mypagePaging = mypageService.mypagePaging(pg);

		ModelAndView mav = new ModelAndView();

		mav.addObject("pg", pg);
		mav.addObject("list", list);
		// mav.addObject("mypagePaging",mypagePaging);

		mav.setViewName("jsonView");
		return mav;
	}
	
	//메세지 상세페이지 
	@RequestMapping(value = "myMessageView", method = RequestMethod.POST)
	@ResponseBody
	public ModelAndView myMessageView(@RequestParam Map<String, String> map,
			@RequestParam(required = false, defaultValue = "1") String pg) {
		//map의 값 확인해보기
		System.out.println("myMessageView의 map / id, seq 확인하기 = " + map);
	
		//맵에 pg값 담아주기? 안담아도 될듯 이따가 다시 확인 
		map.put("pg", pg);
		
		// GET MESSAGE LIST
		MessageDTO messageDTO = mypageService.myMessageView(map);

		System.out.println("messageDTO?== "+messageDTO.getMessage_subject());
	
		ModelAndView mav = new ModelAndView();

		mav.addObject("pg", pg);
		mav.addObject("messageDTO", messageDTO);
		mav.setViewName("jsonView");
		return mav;
	}
	
	
	// DELETE 메세지 (without ajax function)
	@RequestMapping(value = "deleteMyMessage", method = RequestMethod.GET)
	public ModelAndView deleteMyMessage(String[] check) {
		System.out.println("check = " + check[0]);
		mypageService.deleteMyMessage(check);
		return new ModelAndView("redirect:/mypage/myMessageView");
	}

	/* ======================= SCRAP ======================= */
	// ajax호출, GET 찜목록 LIST
	@RequestMapping(value = "getMyScrapList", method = RequestMethod.POST)
	@ResponseBody
	public ModelAndView getMyScrapList(@RequestParam Map<String, String> map,
		@RequestParam(required = false, defaultValue = "1") String pg) {
		
		System.out.println("getMyScrapList string pg" + map);
		
		map.put("pg", pg);

		// GET MESSAGE LIST
		List<ScrapDTO> list = mypageService.getMyScrapList(map);

		// PAGING -> 1PAGE--5POSTS
		MyScrap_Paging myScrap_Paging = mypageService.myScrap_Paging(pg);

		ModelAndView mav = new ModelAndView();
		mav.addObject("pg", pg);
		mav.addObject("list", list);
		mav.addObject("myScrap_Paging", myScrap_Paging);
		mav.setViewName("jsonView");
		return mav;
	}

	// 찜목록 삭제
	@RequestMapping(value = "deleteMyScrap", method = RequestMethod.GET)
	public ModelAndView deleteMyScrap(String[] check) {
		System.out.println("check = " + check[0]);
		mypageService.deleteMyScrap(check);
		return new ModelAndView("redirect:/mypage/myScrap");
	}

	/* ======================= LOCATION ======================= */
	
	// 지역2등록
	@RequestMapping(value = "mylocationWrite", method = RequestMethod.POST)
	@ResponseBody
	public void mylocationWrite(@RequestParam Map<String, String> map) {
		System.out.println(map);
		mypageService.mylocationWrite(map);
	}

	// 지역3등록
	@RequestMapping(value = "mylocationWrite2", method = RequestMethod.POST)
	@ResponseBody
	public void mylocationWrite2(@RequestParam Map<String, String> map) {
		System.out.println(map);
		mypageService.mylocationWrite2(map);
	}

	// 지역2삭제
	@RequestMapping(value = "mylocationDelete", method = RequestMethod.POST)
	@ResponseBody
	public void mylocationDelete(@RequestParam Map<String, String> map) {
		System.out.println(map);
		mypageService.mylocationDelete(map);
	}

	// 지역3삭제
	@RequestMapping(value = "mylocationDelete2", method = RequestMethod.POST)
	@ResponseBody
	public void mylocationDelete2(@RequestParam Map<String, String> map) {
		System.out.println(map);
		mypageService.mylocationDelete2(map);
	}
	
	// 지역 list
	@RequestMapping(value = "mylocationList", method = RequestMethod.POST)
	@ResponseBody // 나중에session으로 대체
	public ModelAndView mylocationList(@RequestParam Map<String, String> map) {

		// System.out.println("컨트롤러확인용 id = " + map.get("id"));

		List<MylocationDTO> list = mypageService.mylocationList(map);

		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("jsonView");
		return mav;
	}

	// 지역 count(*)
	@RequestMapping(value = "mylocationCount", method = RequestMethod.POST)
	@ResponseBody
	public ModelAndView mylocationCount(@RequestParam Map<String, String> map) {
		// System.out.println(map );
		List<MylocationDTO> list = mypageService.mylocationCount(map);

		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("jsonView");
		return mav;
	}

	// =============== MYPAGE >> count(*) 이용해서 이름,찜목록수,팔로우수,쪽지 수 가져오기===============//
	//구매내역 total
	@RequestMapping(value = "getTotalBuyCount", method = RequestMethod.POST)
	@ResponseBody
	public String getTotalBuyCount() {
		return null;
	}
	//판매내역 total
	@RequestMapping(value = "getTotalSellCount", method = RequestMethod.POST)
	@ResponseBody
	public String getTotalSellCount() {
		return null;
	}
	//찜목록 total
	@RequestMapping(value = "getTotalScrapCount", method = RequestMethod.POST)
	@ResponseBody
	public String getTotalScrapCount() {
		return null;
	}
	//팔로우 total
	@RequestMapping(value = "getTotalFollowCount", method = RequestMethod.POST)
	@ResponseBody
	public String getTotalFollowCount() {
		return null;
	}
	//메세지 total
	@RequestMapping(value = "getTotalMessageCount", method = RequestMethod.POST)
	@ResponseBody
	public String getTotalMessageCount() {
		return null;
	}

}
