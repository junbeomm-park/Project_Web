package review;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ReviewController {
	@Autowired
	ReviewService service;
	
	@RequestMapping("/review/insert.do")
	public String insert(ReviewVO review) {
		System.out.println(review+"///////////////////////////////");
		String url="";
		int result = service.insert(review);
		if(result>=1) {
			url="redirect:/place/tourdetail.do?spotareaid="+review.getSpotareaid()+"&state=READ";
		}else {
			url="redirect:/place/tourdetail.do?spotareaid="+review.getSpotareaid()+"&state=READ";
		}
		return url;
	}
	
}
