package place;

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
import place.PlaceVO;
import review.ReviewService;
import review.ReviewVO;

@Controller
public class PlaceController {
   @Autowired
   PlaceService service;
   @Autowired
   ReviewService service2;
   @Autowired
   CourseService service3;
   /*
    * @Autowired CourseService service3;
    */
   
   @RequestMapping("/place/tour.do") 
   public ModelAndView tourListView(String category) { 
      System.out.println("==========>"+category); 
      ModelAndView mav =  new ModelAndView("tour"); 
      List<PlaceVO> placelist = service.findByCategory(category); //dao에서 결과가 넘어오는 경우 디버깅 작업은 넘어오는 데이터를
    // sysout으로 컨트롤러 단까지 모두 출력
     mav.addObject("placelist", placelist);
     mav.addObject("category", category); return mav; 
   
   }
   

//   @RequestMapping("/place/tourdetail.do")
//   public ModelAndView tourDetail() {
//      ModelAndView mav = new ModelAndView();
//      
//      
//      mav.setViewName("tour/detail");
//      return mav;
//   
//   }
   @RequestMapping(value = "/place/tourdetail.do")
   public ModelAndView read(String spotareaid, String state) {
      System.out.println("readController => "+ spotareaid + "," + state);
      ModelAndView mav = new ModelAndView();
      //비지니스메소드 호출
      PlaceVO place = service.read(spotareaid);
      List<ReviewVO> reviewlist = service2.reviewList(spotareaid);
      List<CourseVO> courselist = service3.courseList();
      System.out.println("**********"+reviewlist);
      System.out.println("**********"+courselist);
      String viewName = "";
      //요청에 따라 뷰 설정
      if(state.equals("READ")) {
         viewName = "tour/detail";
      }
      mav.setViewName(viewName);
      mav.addObject("place", place);
      mav.addObject("reviewlist", reviewlist);
      mav.addObject("courselist", courselist);
      return mav;
   }
//
//   @RequestMapping(value = "/place/ajax_tour.do", method = RequestMethod.GET, 
//         produces = "application/json;charset=utf-8")
//   public @ResponseBody ArrayList<PlaceVO> placeList(String category) {
//      ArrayList<PlaceVO> placelist = (ArrayList<PlaceVO>) service.findByCategory(category);
//      System.out.println("ajax통신 : " + placelist.size());
//      return placelist;
//   }
//   

}