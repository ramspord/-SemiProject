package com.example.demo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.service.MemberService;
import com.example.demo.vo.MemberVO;

@Controller
public class MemberController {
	
	@Autowired
	MemberService memberService;
	
	@PostMapping("memberInsert")
	public String memberInsert(MemberVO memberVO) {
		System.out.println(memberVO);
		
		if(memberVO.getId() ==null || memberVO.getId().equals("") || 
				memberVO.getPw()==null || memberVO.getPw().equals("") 
				|| memberVO.getName()==null || memberVO.getName().equals("")) {
			
			return "error";
		}
		
		
		try {
			memberService.memberInsert(memberVO);
			return "memberInsert_result";
		}catch(DataAccessException e) {
			return "error";
		}
	}
	
	@PostMapping("login")
	@ResponseBody
	public String login(HttpSession session,MemberVO memberVO) {
		System.out.println(memberVO);	
		JSONObject jo=new JSONObject();
		
		if(memberVO.getId() ==null || memberVO.getId().equals("") || 
				memberVO.getPw()==null || memberVO.getPw().equals("")) {
			jo.put("msg", "ID와 PW는 필수 입력값입니다");
			return jo.toJSONString();
		}
		
		
		try {
			MemberVO vo=memberService.login(memberVO);
			if(vo!=null) {
				session.setAttribute("memberVO", memberVO);			
				jo.put("id", vo.getId());
			}else {
				jo.put("msg", "ID와 PW를 확인해주세요");
			}
		}catch(DataAccessException e) {
			jo.put("msg", e.getMessage());
		}		
		
		return jo.toJSONString();
	}
	
	@PostMapping("logout")
	@ResponseBody
	public String logout(HttpSession session) {
		JSONObject jo=new JSONObject();
		
		try {
			session.invalidate();
			
			jo.put("msg", "logout complete");
			
		}catch(Exception e) {
			jo.put("msg", e.getMessage());
		}
		
		return jo.toJSONString();
	}

	
	
	//마이페이지 화면 
	@RequestMapping("myPage")
	public String myPage() {		
		
		System.out.println("마이 페이지 + 주문내역 페이지 ");
		
		return "myPage";		
	}
	
	//내정보수정 화면 
	@RequestMapping("myInfo")
	public String myInfo(HttpServletRequest request, HttpSession session, ModelMap model, MemberVO memberVO) {		
		session = request.getSession();
		memberVO = (MemberVO) session.getAttribute("memberVO");
		
		model.addAttribute("memberVO", memberVO);
		List<MemberVO> data = memberService.myInfo(memberVO);
		model.addAttribute("data", data);
		
		System.out.println("내정보수정페이지 출력");
		memberService.myInfo(memberVO);

		return "myInfo";		
	}
		
	@PostMapping("myInfo_Update")
	public String myInfo_Update(HttpServletRequest request, HttpSession session, ModelMap model, MemberVO memberVO) {
		
		
		
		System.out.println("내정보수정 값 " + memberVO);
		memberService.myInfo_update(memberVO);
		
		
		
		return "redirect:/marketMain";
	}
	
	@PostMapping("myInfo_Delete")

	public String myInfo_Delete(HttpSession session, MemberVO memberVO) {
		
		System.out.println("삭제할 멤버 값 " + memberVO);
		memberService.myInfo_delete(memberVO);
		
		return "redirect:/marketMain";
	}	
	
	
	
	
}



