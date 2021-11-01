package map;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
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
public class MapController {
   @Autowired
   PlaceService service;
   @Autowired
   MapService service2;
   
   /*
    * @Autowired CourseService service3;
    */
   
	@RequestMapping(value = "/tour/getAddr", method = RequestMethod.GET, 
			produces = "application/text;charset=utf-8")
	public @ResponseBody String placeList(String addr) {
		System.out.println("ajax통신 : " + addr);
		return addr;
	}
	
	  @RequestMapping("/createplan.do") 
	   public ModelAndView createPlanView(String addr) { 
	      ModelAndView mav =  new ModelAndView("createplan"); 
	      List<MapVO> addrlist = service2.addrList(addr); //dao에서 결과가 넘어오는 경우 디버깅 작업은 넘어오는 데이터를
	    // sysout으로 컨트롤러 단까지 모두 출력
	     mav.addObject("addrlist", addrlist);
	     
	     return mav;
	   }
	
}