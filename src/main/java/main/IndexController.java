package main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
	@RequestMapping("/index.do")
	public String index() {
		return "index"; //tiles설정 파일에 등록된 view의 이름
	
	}
	@RequestMapping("/contact.do")
	public String contact() {
		return "contact";
	}
	@RequestMapping("/planner.do")
	public String planner() {
		return "planner";
	}
	@RequestMapping("/about.do")
	public String about() {
		return "about";
	}
	@RequestMapping("/login.do")
	public String login() {
		return "login";
	}
	@RequestMapping("/sign.do")
	public String sign() {
		return "sign";
	}
	
	
	@RequestMapping("/metropolygon.json")
	public String metropolygon() {
		return "metropolygon";
	}
	
	
//	@RequestMapping("/emp/login.do")
//	public String advancedView() {
//		return "login"; //tiles설정 파일에 등록된 view의 이름
//	}
	
	@RequestMapping("/menu/board.do")
	public String jdbcView() {
		return "board/list";
	}
	
}

