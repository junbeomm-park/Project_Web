package planner;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import course.CourseService;
import course.CourseVO;
import place.PlaceService;
import place.PlaceVO;
import review.ReviewService;
import review.ReviewVO;

@Controller
public class PlannerController {
   @Autowired
   PlaceService service;
   @Autowired
   ReviewService service2;
   @Autowired
   CourseService service3;
   /*
    * @Autowired CourseService service3;
    */
   
   @RequestMapping("/planner.do") 
   public ModelAndView placeListView() { 
      ModelAndView mav =  new ModelAndView("planner"); 
      List<PlaceVO> placelist = service.placeList(); //dao에서 결과가 넘어오는 경우 디버깅 작업은 넘어오는 데이터를
    // sysout으로 컨트롤러 단까지 모두 출력
     mav.addObject("placelist", placelist);
     
     return mav; 
   
   }
   
	@RequestMapping("/planner/search.do")
	public ModelAndView search(String search) {
		ModelAndView mav = new ModelAndView();
		ArrayList<PlaceVO> placelist = (ArrayList<PlaceVO>)service.searchList(search);
		mav.addObject("placelist", placelist);
		mav.addObject("category", "all");
		mav.setViewName("planner");
		return mav;
	}
}