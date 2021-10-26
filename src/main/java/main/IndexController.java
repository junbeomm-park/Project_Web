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
//	@RequestMapping("/planner.do")
//	public String planner() {
//		return "planner";
//	}
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
	@RequestMapping("/menu/board.do")
	public String jdbcView() {
		return "board/list";
	}
	@RequestMapping("/find_id.do")
	public String find_id() {
		return "find_id"; 
	}
	@RequestMapping("/find_id_page.do")
	public String find_id_page() {
		return "find_id_page"; 
	}
	@RequestMapping("/find_pass.do")
	public String find_pass() {
		return "find_pass"; 
	}
	@RequestMapping("/find_pass_page.do")
	public String find_pass_page() {
		return "find_pass_page"; 
	}
	
}

