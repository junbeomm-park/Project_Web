package place;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import place.PlaceVO;

@Controller
public class PlaceController {
	@Autowired
	PlaceService service;

	
	@RequestMapping("/place/tour.do") 
	public ModelAndView tourListView(String category) { 
		System.out.println("==========>"+category); 
		ModelAndView mav =  new ModelAndView("tour"); 
		List<PlaceVO> placelist = service.findByCategory(category); //dao에서 결과가 넘어오는 경우 디버깅 작업은 넘어오는 데이터를
	 // sysout으로 컨트롤러 단까지 모두 출력
	  mav.addObject("placelist", placelist);
	  mav.addObject("category", category); return mav; 
	
	}
	

	@RequestMapping("/place/tourdetail.do")
	public String tourDetail() {
		return "tour/detail";
	}
//
//	@RequestMapping(value = "/place/ajax_tour.do", method = RequestMethod.GET, 
//			produces = "application/json;charset=utf-8")
//	public @ResponseBody ArrayList<PlaceVO> placeList(String category) {
//		ArrayList<PlaceVO> placelist = (ArrayList<PlaceVO>) service.findByCategory(category);
//		System.out.println("ajax통신 : " + placelist.size());
//		return placelist;
//	}
//	

}
