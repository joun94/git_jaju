package freeboard.controller;

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

import freeboard.bean.FreeboardDTO;
import freeboard.service.FreeboardService;

@Controller
@RequestMapping(value="freeboard")
public class FreeboardController {
	@Autowired
	private FreeboardService freeboardService;
	
	@RequestMapping(value="index", method=RequestMethod.GET)
	public String index(Model model) {
		
		model.addAttribute("display", "/main/body.jsp");
		return "/index";
		
	}
	
	//write
	@RequestMapping(value="freeboardWriteForm", method=RequestMethod.GET)
	public String freeboardWriteForm(Model model) {
		
		model.addAttribute("display", "/freeboard/freeboardWriteForm.jsp");
		return "/index";
		
	}
	
	//write 기능
	@RequestMapping(value="freeboardWrite", method=RequestMethod.POST)
	@ResponseBody
	public void freeboardWrite(@ModelAttribute FreeboardDTO freeboardDTO,
			@RequestParam("file[]") List<MultipartFile> list) {
		
		String filePath = "D:\\Spring\\workspace\\jajuProject\\src\\main\\webapp\\storage";

		String fileName;
		File file;

		for(int i=0; i<list.size(); i++) {
			fileName = list.get(i).getOriginalFilename();
			file = new File(filePath, fileName);
			
			System.out.println(fileName);
			
			//파일 복사
			try {
				FileCopyUtils.copy(list.get(i).getInputStream(), new FileOutputStream(file));
			}catch (IOException e) {
				e.printStackTrace();
			}
			
			if(fileName!=null) {
				if(i==0) freeboardDTO.setImage1(fileName);
				else if (i==1) freeboardDTO.setImage2(fileName);
				else if (i==2) freeboardDTO.setImage3(fileName);

			} 

		} //for
		freeboardService.freeboardWrite(freeboardDTO);
	
	}
	
		//뷰
		@RequestMapping(value="freeboardView", method=RequestMethod.GET)
		public String freeboardView(@RequestParam int board_seq, //나에게 들어오는 데이터: seq, pg
									Model model) {
			
			model.addAttribute("board_seq", board_seq); //seq를 모델에 넣어줌
			
			model.addAttribute("display","/freeboard/freeboardView.jsp");
			return "/index";
		}
		
		@RequestMapping(value="getFreeboardView", method=RequestMethod.POST)
		@ResponseBody
		public ModelAndView getFreeboardView(@RequestParam int board_seq) {
			
			ModelAndView mav = new ModelAndView();
			
			FreeboardDTO freeboardDTO = freeboardService.getFreeboardView(board_seq);
			
			mav.addObject("freeboardDTO", freeboardDTO);
			mav.setViewName("jsonView");
			
			return mav;
		}
		
		//리스트
		@RequestMapping(value="freeboardList", method=RequestMethod.GET)
		public String freeboardList(Model model) {
			model.addAttribute("display","/freeboard/freeboardList.jsp");
			return "/index";
		}
		
		@RequestMapping(value="getFreeboardList", method=RequestMethod.POST)
		@ResponseBody
		public ModelAndView getFreeboardList() {
			
			ModelAndView mav = new ModelAndView();
			
			List<FreeboardDTO> list = freeboardService.getFreeboardList();
			
			mav.addObject("list", list);
			mav.setViewName("jsonView");
			
			return mav;
		}
		
		//수정
		@RequestMapping(value="freeboardModifyForm", method=RequestMethod.GET)
		public String freeboardModifyForm (@RequestParam int board_seq,
										Model model) {
			
			model.addAttribute("board_seq", board_seq);
			
			model.addAttribute("display", "/freeboard/freeboardModifyForm.jsp");
			return "/index";
		}
		
		@RequestMapping(value="freeboardModify", method=RequestMethod.POST)
		@ResponseBody
		public void freeboardModify(@ModelAttribute FreeboardDTO freeboardDTO,
								@RequestParam("file[]") List<MultipartFile> list) {
			
			String filePath = "D:\\Spring\\workspace\\jajuProject\\src\\main\\webapp\\storage";
	
			String fileName;
			File file;
	
			for(int i=0; i<list.size(); i++) {
				fileName = list.get(i).getOriginalFilename();
				file = new File(filePath, fileName);
				
				System.out.println(fileName);
				
				//파일 복사
				try {
					FileCopyUtils.copy(list.get(i).getInputStream(), new FileOutputStream(file));
				}catch (IOException e) {
					e.printStackTrace();
				}
				
				if(fileName!=null) {
					if(i==0) freeboardDTO.setImage1(fileName);
					else if (i==1) freeboardDTO.setImage2(fileName);
					else if (i==2) freeboardDTO.setImage3(fileName);
				} 
	
			} //for
	
			freeboardService.freeboardModify(freeboardDTO);
		}
		
		//삭제
		@RequestMapping(value="freeboardDelete", method=RequestMethod.POST)
		@ResponseBody
		public ModelAndView freeboardDelete(@RequestParam int board_seq) {
	
			freeboardService.freeboardDelete(board_seq);
			
			return new ModelAndView("redirect:/freeboard/freeboardList");
		}
	

}
