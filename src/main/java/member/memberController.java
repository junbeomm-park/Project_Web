package member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class memberController {
	@Autowired
	memberService service;

	@RequestMapping("/member/sign.do")
	// 스프링 MVC의 DispatcherServlet이 넘겨주는 VO객체를 서비스단의 메소드를 호출하면서 넘겨준다.
	public String insert(memberVO command) { // VO객체를 command객체라 한다.
		service.insert(command);
		return "redirect:/index.do"; // 회원가입이 완료되면 로그인을 하기 위한 페이지로 redirect하도록 설정
	}
//	@RequestMapping("/member/find_id.do")
//	public String find_id(memberVO finder) { 
//		System.out.println("================" + finder);
//		service.find_id(finder);
//		return "redirect:/index.do";
//	}
	@RequestMapping(value = "/member/find_id.do", method = RequestMethod.POST)
	public ModelAndView idfind(memberVO findUserInfo) {
		System.out.println(findUserInfo);
		ModelAndView mav = new ModelAndView();
		//DB인증을 받은 user정보
		memberVO passOkUser = service.member(findUserInfo);
		String viewName = "";
		if(passOkUser!=null) {
			//비번찾기성공
			viewName = "find/ok";
		}else {
			//비번찾기실패
			viewName = "login";
		}
		mav.setViewName(viewName);
		//view에서 로그인 사용자 정보를 사용하기 때문
		mav.addObject("loginOkUser", loginOkUser);
		System.out.println("db연동 완료:"+loginOkUser);
		return mav;
		
	}
	@RequestMapping("/member/find_pass.do")
	public String find_pass(memberVO finder) { 
		System.out.println("================" + finder);
		service.find_id(finder);
		return "redirect:/find_pass_page.do";
	}

	@RequestMapping("/member/list.do")
	public ModelAndView getMemberList() {
		ModelAndView mav = new ModelAndView();
		List<memberVO> userlist = service.getMemberList();
		System.out.println("*******************************");
		System.out.println(userlist);
		// tiles에 등록한 뷰의 이름
		mav.setViewName("member/list");
		mav.addObject("userlist", userlist);
		return mav;
	}
	@RequestMapping(value = "/member/find_pwd.do", method = RequestMethod.POST)
	public ModelAndView passfind(memberVO findUserInfo) {
		System.out.println(findUserInfo);
		ModelAndView mav = new ModelAndView();
		//DB인증을 받은 user정보
		memberVO passOkUser = service.member(findUserInfo);
		String viewName = "";
		if(passOkUser!=null) {
			//비번찾기성공
			viewName = "find/ok";
		}else {
			//비번찾기실패
			viewName = "login";
		}
		mav.setViewName(viewName);
		//view에서 로그인 사용자 정보를 사용하기 때문
		mav.addObject("loginOkUser", loginOkUser);
		System.out.println("db연동 완료:"+loginOkUser);
		return mav;
		
	}

//	//원래 웹을 요청하는 방식 =>emp/insert로 등록한 뷰의 모든, html태그가 서버에서 클라이언트로 모두 전송된다.
//	@RequestMapping("/emp/idcheck.do")
//	public ModelAndView idCheck(String id) {
//		ModelAndView mav = new ModelAndView();
//		boolean state = service.idCheck(id);
//		String result = "";
//		if(state) {//사용자가 입력한 id가 db에 이미 저장되어 있다는 의미
//			result = "사용 불가능한 아이디";
//		}else {
//			result = "사용 가능한 아이디";
//		}
//		mav.setViewName("emp/insert");
//		mav.addObject("result", result);
//		return mav;
//	}
	// Ajax로 요청되는 메소드
	/*
	 * produces속성 : Ajax요청 후 클라이언트로 전송할 데이터의 타입을 정의 application/text는 Ajax요청을 처리하고
	 * 클라이언트로 보내는 응답메세지 타입이 text라는 의미 
	 */
	// String은 response되는 데이터의 형식 - 어노테이션을 이용해서 response되는 데이터라는 것을 표시
//	@RequestMapping(value = "/emp/idcheck.do", method = RequestMethod.GET,
//			produces = "application/text;charset=utf-8")
//	public @ResponseBody String idCheck(String id) {
//		boolean state = service.idCheck(id);
//		String result = "";
//		if (state) { // 사용자가 입력한 id가 db에 이미 저장되어 있다는 의미
//			result = "사용 불가능한 아이디";
//		} else {
//			result = "사용가능한 아이디";
//		}
//		return result;
//	}

}