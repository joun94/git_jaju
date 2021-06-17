package saleboard.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

import saleboard.bean.SaleboardDTO;
import saleboard.bean.SaleboardPaging;
import saleboard.service.SaleboardService;

@Controller
@RequestMapping(value="saleboard")
public class SaleboardController {
	@Autowired
	private SaleboardService saleboardService;
	
	@RequestMapping(value="saleboardWriteForm", method=RequestMethod.GET)
	public String saleboardWriteForm(Model model) {
		
		model.addAttribute("display","/saleboard/saleboardWriteForm.jsp");
		return "/index";
	}
	
	@RequestMapping(value="saleboardList", method=RequestMethod.GET)
	public String saleboardList(Model model) {
		
		model.addAttribute("display","/saleboard/saleboardList.jsp");
		return "/index";
	}
	
	@RequestMapping(value="saleboardView", method=RequestMethod.GET)
	public String saleboardView(Model model) {
		
		
		
		model.addAttribute("display","/saleboard/saleboardView.jsp");
		return "/index";
	}
	
	//write 기능
		@RequestMapping(value="saleboardWrite", method=RequestMethod.POST)
		@ResponseBody
		public void saleboardWrite(@ModelAttribute SaleboardDTO saleboardDTO,
				@RequestParam("file[]") List<MultipartFile> list) {
			
			String filePath = "C:\\sts_work\\jajuProject\\src\\main\\webapp\\storage";

			String fileName;
			File file;
		
			for(int i=0; i<list.size(); i++) {
				fileName = list.get(i).getOriginalFilename();
				file = new File(filePath, fileName);
				
				
				//파일 복사
				try {
					FileCopyUtils.copy(list.get(i).getInputStream(), new FileOutputStream(file));
				}catch (IOException e) {
					e.printStackTrace();
				}
				
				if(fileName!=null) {
					if(i==0) saleboardDTO.setSale_image1(fileName);
					else if (i==1) saleboardDTO.setSale_image2(fileName);
					else if (i==2) saleboardDTO.setSale_image3(fileName);
					else if (i==3) saleboardDTO.setSale_image4(fileName);
					else if (i==4) saleboardDTO.setSale_image5(fileName);
					else if (i==5) saleboardDTO.setSale_image6(fileName);
					else if (i==6) saleboardDTO.setSale_image7(fileName);
					else if (i==7) saleboardDTO.setSale_image8(fileName);
					else if (i==8) saleboardDTO.setSale_image9(fileName);
					else if (i==9) saleboardDTO.setSale_image10(fileName);
				} 

				
			} //for
			saleboardService.saleboardWrite(saleboardDTO);
		
		}
		
		@RequestMapping(value="getSaleboardList", method=RequestMethod.POST)
		@ResponseBody
		public ModelAndView getSaleboardList(@RequestParam Map<String, String> map) {
			
			ModelAndView mav = new ModelAndView();
			
			
			List<SaleboardDTO> list = saleboardService.getSaleboardList(map);
			
			int pg = Integer.parseInt(map.get("pg"));
			
			SaleboardPaging saleboardPaging = saleboardService.saleboardPaging(pg);
			
			mav.addObject("saleboardPaging", saleboardPaging);
			
			mav.addObject("list", list);
			mav.setViewName("jsonView");
			
			return mav;
		}
		
		@RequestMapping(value="getSaleboardView", method=RequestMethod.POST)
		@ResponseBody
		public ModelAndView getSaleboardView(@RequestParam int sale_seq) {
			
			ModelAndView mav = new ModelAndView();
			
			SaleboardDTO saleboardDTO = saleboardService.getSaleboardView(sale_seq);
			
			mav.addObject("saleboardDTO", saleboardDTO);
			mav.setViewName("jsonView");
			
			return mav;
		}

	   @RequestMapping(value="index", method=RequestMethod.GET)
	   public String index(Model model) {
	      
	      model.addAttribute("display", "/main/body.jsp");
	      return "/index";
	      
	   }
	   
	   @RequestMapping(value="getSearchSaleboardList", method=RequestMethod.POST)
		@ResponseBody
		public ModelAndView getSearchSaleboardList(@RequestParam Map<String, String> map) {
			
			ModelAndView mav = new ModelAndView();
			
			List<SaleboardDTO> list = saleboardService.getSearchSaleboardList(map);
			
			SaleboardPaging saleboardPaging = saleboardService.searchSaleboardPaging(map);
			
			mav.addObject("saleboardPaging", saleboardPaging);
			mav.addObject("list", list);
			mav.setViewName("jsonView");
			
			return mav;
		}
	   
	 //수정
		@RequestMapping(value="saleboardModifyForm", method=RequestMethod.GET)
		public String saleboardModifyForm(@RequestParam int sale_seq,
										Model model) {
			
			model.addAttribute("sale_seq", sale_seq);
			
			model.addAttribute("display", "/saleboard/saleboardModifyForm.jsp");
			return "/index";
		}
		
		//수정 - 첨부파일 관리
		@RequestMapping(value="saleboardModify", method=RequestMethod.POST)
		@ResponseBody
		public void saleboardModify(@ModelAttribute SaleboardDTO saleboardDTO,
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
					if(i==0) saleboardDTO.setSale_image1(fileName);
					else if (i==1) saleboardDTO.setSale_image2(fileName);
					else if (i==2) saleboardDTO.setSale_image3(fileName);
					else if (i==3) saleboardDTO.setSale_image4(fileName);
					else if (i==4) saleboardDTO.setSale_image5(fileName);
					else if (i==5) saleboardDTO.setSale_image6(fileName);
					else if (i==6) saleboardDTO.setSale_image7(fileName);
					else if (i==7) saleboardDTO.setSale_image8(fileName);
					else if (i==8) saleboardDTO.setSale_image9(fileName);
					else if (i==9) saleboardDTO.setSale_image10(fileName);
				} 

			} //for

			//수정 어려우면 이미지 변경x 삭제만 가능하게 하기
			saleboardService.saleboardModify(saleboardDTO);
		}
		
		//삭제
		@RequestMapping(value="saleboardDelete", method=RequestMethod.POST)
		@ResponseBody
		public ModelAndView saleboardDelete(@RequestParam int sale_seq) {

			saleboardService.saleboardDelete(sale_seq);
			
			return new ModelAndView("redirect:/saleboard/saleboardList");
		}
	   
}
