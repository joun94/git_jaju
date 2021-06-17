package report.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import report.bean.ReportDTO;
import report.bean.ReportPaging;
import report.service.ReportService;

@Controller
@RequestMapping(value="serviceCenter")
public class ReportController {
	@Autowired
	private ReportService reportService;
	
	@RequestMapping(value="reportWriteForm", method=RequestMethod.GET)
	public String reportWriteForm(Model model) {
		model.addAttribute("display", "/serviceCenter/reportWriteForm.jsp");
		return "/index";
	}
	
	@RequestMapping(value="reportWrite", method=RequestMethod.POST)
	@ResponseBody
	public void reportsWrite(@ModelAttribute ReportDTO reportDTO,
							 @RequestParam ("img[]") List<MultipartFile> list,
							 @RequestParam Map<String, String> map) { //img[] 배열이라고 알려준다, 파일이 여러개가 가능) {


		String filePath = "D:\\Spring\\workspace\\jajuProject\\src\\main\\webapp\\storage";
		String fileName;
		File file;

		//파일 복사
		for(MultipartFile img : list) {
			fileName = img.getOriginalFilename();
			file = new File(filePath, fileName);
			
			try {
				FileCopyUtils.copy(img.getInputStream(), new FileOutputStream(file));
			} catch (IOException e) {
				//e.printStackTrace();
			}

			reportDTO.setReport_image1(fileName);
			reportDTO.setReport_image2(fileName);
			reportDTO.setReport_image3(fileName);
			System.out.println(fileName);
		
			//DB
			reportService.reportWrite(reportDTO);
		}//for

	}
	
	@RequestMapping(value="reportList", method=RequestMethod.GET)
	public String reportList(@RequestParam(required=false, defaultValue="1") String pg,
							 HttpSession session, Model model) {
		
		model.addAttribute("pg", pg);
		model.addAttribute("display", "/serviceCenter/reportList.jsp");
		return "/index";
	}
	
	@RequestMapping(value="getReportList", method=RequestMethod.POST)
	@ResponseBody
	public ModelAndView getReportList(@RequestParam(required=false, defaultValue="1") String pg,
									  HttpSession session) {
		
		//1 페이지당 10개씩
		List<ReportDTO> list = reportService.getReportList(pg);
		
		//페이징 처리
		ReportPaging reportPaging = reportService.reportPaging(pg);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.addObject("pg", pg);
		mav.addObject("reportPaging", reportPaging);
		
		mav.setViewName("jsonView");
		return mav;
	}
	
	@RequestMapping(value="reportView", method=RequestMethod.GET)
	public String reportView(@RequestParam(required=false, defaultValue="1") String pg,
							 HttpSession session, Model model) {
		
		model.addAttribute("pg", pg);
		model.addAttribute("display", "/serviceCenter/reportView.jsp");
		return "/index";
	}
	
	@RequestMapping(value="reportModifyForm", method=RequestMethod.GET)
	public String reportModifyForm(Model model) {
//	public String reportModifyForm(@RequestParam String seq,
//			  					   @RequestParam String pg,
//			  					   Model model) {
		
		model.addAttribute("display", "/serviceCenter/reportModifyForm.jsp");
		return "/index";
	}
}
