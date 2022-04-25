package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class InfoController {

	@RequestMapping("/infoKorShort")	
	public String infoKorShort() {		
		System.out.println("코리안숏헤어 정보 페이지 출력 ");
		return "infoKorShort";		
	}
	
	
	@RequestMapping("infoPersian")	
	public String infoPersian() {		
		System.out.println("페르시안 정보 페이지 출력 ");
		return "infoPersian";		
	}
	
	@RequestMapping("infoRussianBlue")	
	public String infoRussianBlue() {		
		System.out.println("러시안블루 정보 페이지 출력 ");
		return "infoRussianBlue";		
	}
	
	@RequestMapping("infoRoyalCanin")	
	public String infoRoyalCanin() {		
		System.out.println("로얄캐닌 정보 페이지 출력 ");
		return "infoRoyalCanin";		
	}
	
	@RequestMapping("infoOrigen")	
	public String infoOrigen() {		
		System.out.println("오리젠 정보 페이지 출력 ");
		return "infoOrigen";		
	}
	
	@RequestMapping("infoNaturalBalance")	
	public String infoNaturalBalance() {		
		System.out.println("네츄럴발란스 정보 페이지 출력 ");
		return "infoNaturalBalance";		
	}
}
