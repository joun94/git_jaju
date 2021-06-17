package question.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="serviceCenter")
public class QuestionController {
	@RequestMapping(value="questionList", method=RequestMethod.GET)
	public String questionList(Model model) {
		model.addAttribute("display", "/serviceCenter/questionList.jsp");
		return "/index";
	}

}