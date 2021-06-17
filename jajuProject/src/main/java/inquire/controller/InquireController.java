package inquire.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

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

import inquire.bean.InquireDTO;
import inquire.service.InquireService;

@Controller
@RequestMapping(value="serviceCenter")
public class InquireController {
	@Autowired
	private InquireService inquireService;
	
	//1:1문의 작성
	@RequestMapping(value="inquireList", method=RequestMethod.GET)
	public String InquireList(Model model) {
		model.addAttribute("display", "/serviceCenter/inquireList.jsp");
		return "/index";
	}
	
	@RequestMapping(value="inquireWriteForm", method=RequestMethod.GET)
	public String inquireWriteForm(Model model) {
		model.addAttribute("display", "/serviceCenter/inquireWriteForm.jsp");
		return "/index";
	}
	
	@RequestMapping(value = "inquireWrite", method = RequestMethod.POST)
	@ResponseBody
	public void inquireWrite(@ModelAttribute InquireDTO inquireDTO,
							 @RequestParam ("img[]") List<MultipartFile> list,
							 Model model) {
		String filePath;
		String fileName;
		File file;	
		
		int i = 0;
		for(MultipartFile img: list) {
			filePath = "D:\\spring\\workspace\\jajuProject\\src\\main\\webapp\\storage";
			fileName = img.getOriginalFilename();
			file = new File(filePath,fileName);
			
//			파일 복사
			try {
				FileCopyUtils.copy(img.getInputStream(), new FileOutputStream(file));
			}catch (IOException e) {
				//e.printStackTrace();
			}
			if(i == 0) {
				inquireDTO.setInquiry_image1(fileName);				
			}else if(i == 1) {
				inquireDTO.setInquiry_image2(fileName);				
			}else if(i == 2) {
				inquireDTO.setInquiry_image3(fileName);	
			}
			i++;
		}
	
		if(i == 0) {
			inquireDTO.setInquiry_image1("");
			inquireDTO.setInquiry_image2("");
			inquireDTO.setInquiry_image3("");
		}else if(i == 1) {
			inquireDTO.setInquiry_image2("");
			inquireDTO.setInquiry_image3("");
		}else if(i == 2) {
			inquireDTO.setInquiry_image3("");
		}
		
		//DB
		inquireService.inquireWrite(inquireDTO);
		
	}
	
	//1:1문의 목록
	@RequestMapping(value = "getInquireList", method=RequestMethod.POST)
	@ResponseBody
	public ModelAndView getInquireList(@RequestParam(required=false, defaultValue="1") String pg) {
		
		//1페이지당 3개
		List<InquireDTO>list = inquireService.getInquireList(pg);
//		
//		//페이징 처리
//		ImageboardPaging imageboardPaging = imageboardService.imageboardPaging(pg);
		
						
		ModelAndView mav = new ModelAndView();
		//mav.addObject("pg",pg);
		mav.addObject("list", list);
//		mav.addObject("imageboardPaging", imageboardPaging);
		mav.setViewName("jsonView");
		return mav;
		
	}
	
	@RequestMapping(value = "inquireView", method=RequestMethod.GET)
	public String inquireView(@RequestParam String seq, 
								 @RequestParam String pg,
								 Model model) {
		model.addAttribute("seq", seq);
		model.addAttribute("pg", pg);
		model.addAttribute("display","/serviceCenter/inquireView.jsp");
		return "/index";
		
	}
	
	@RequestMapping(value = "getInquireView", method=RequestMethod.POST)
	@ResponseBody
	public ModelAndView getInquireView(@RequestParam String seq) {
		InquireDTO inquireDTO = inquireService.getInquireView(seq);
		System.out.println(inquireDTO);
		ModelAndView mav = new ModelAndView();
		mav.addObject("inquireDTO",inquireDTO);
		mav.setViewName("jsonView");
		return mav;
	}
}
