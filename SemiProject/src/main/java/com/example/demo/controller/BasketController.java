package com.example.demo.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.service.BasketService;
import com.example.demo.vo.BasketVO;
import com.example.demo.vo.MemberVO;

@Controller
public class BasketController {
	
	@Autowired
	BasketService basketService;
	
	@PostMapping("insertBasket")
	@ResponseBody
	public String insertBasket(HttpSession session, BasketVO basketVO) {
		System.out.println(basketVO);
		
		MemberVO memberVO=(MemberVO) 
		session.getAttribute("memberVO");
		if(memberVO==null) {
			return "로그인 후 이용 가능합니다";
		}
		
		String id=memberVO.getId();
		basketVO.setId(id);
		
		try {
			basketService.insertBasket(basketVO);
		} catch (Exception e) {
			e.printStackTrace();
			return "카트 담기 오류";
		}
		
		
		
		return "카트에 담겼습니다";
		
	}
}

