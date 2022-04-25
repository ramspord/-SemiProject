package com.example.demo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.vo.MemberVO;

@Controller
public class MarketController {

	//상점 메인 페이지 index에서 이동시 
	@RequestMapping("marketMain")	
	public String marketMain() {		
		System.out.println("상점 페이지 출력 ");
		return "marketMain";		
	}
	
	//건식 사료 페이지 
	@RequestMapping("marketDryFeed")	
	public String marketDryFeed() {		
		System.out.println("건식 사료 페이지 출력 ");
		return "marketDryFeed";		
	}
	
	
	//습식 사료 페이지 
		@RequestMapping("marketWetFeed")	
		public String marketWetFeed() {		
			System.out.println("습식 사료 페이지 출력 ");
			return "marketWetFeed";		
		}
	
	//건식 간식 페이지 
		@RequestMapping("marketDrySnack")	
		public String marketDrySnack() {		
			System.out.println("건식 간식 페이지 출력 ");
			return "marketDrySnack";		
		}

	//습식 간식 페이지 
		@RequestMapping("marketWetSnack")	
		public String marketWetSnack() {		
			System.out.println("습식 간식 페이지 출력 ");
			return "marketWetSnack";		
		}
		
	//고정형 식기 페이지 
		@RequestMapping("marketFixedDish")	
		public String marketFixedDish() {		
			System.out.println("고정형 식기 페이지 출력 ");
			return "marketFixedDish";		
		}
		
	//높이조절형 식기 페이지 
		@RequestMapping("marketDynamicDish")	
		public String marketDynamicDish() {		
			System.out.println("높이조절형 식기 페이지 출력 ");
			return "marketDynamicDish";		
		}
		
	//자동 급식기 페이지 
		@RequestMapping("marketAutoDish")	
		public String marketAutoDish() {		
			System.out.println("자동급식기 페이지 출력 ");
			return "marketAutoDish";		
		}
		
	//고정형 물그릇 페이지 
		@RequestMapping("marketFixedBowl")	
		public String marketFixedBowl() {		
			System.out.println("고정형 물그릇 페이지 출력 ");
			return "marketFixedBowl";		
		}
		
	//정수기 페이지 
		@RequestMapping("marketAutoBowl")	
		public String marketAutoBowl() {		
			System.out.println("정수기 페이지 출력 ");
			return "marketAutoBowl";		
		}
		
	//장난감 페이지 
		@RequestMapping("marketRodToy")	
		public String marketRodToy() {		
			System.out.println("낚시대 페이지 출력 ");
			return "marketRodToy";		
		}
		
	//장난감 페이지 
		@RequestMapping("marketAutoToy")	
		public String marketAutoToy() {		
			System.out.println("자동 장난감 페이지 출력 ");
			return "marketAutoToy";		
		}
		
	//장난감 페이지 
		@RequestMapping("marketNormalToy")	
		public String marketNormalToy() {		
			System.out.println("일반 장난감 페이지 출력 ");
			return "marketNormalToy";		
		}
		
	//이동장 페이지 
		@RequestMapping("marketBackpackBag")	
		public String marketBackpackBag() {		
			System.out.println("백팩형 이동장 페이지 출력 ");
			return "marketBackpackBag";		
		}
		
	//이동장 페이지 
		@RequestMapping("marketCageBag")	
		public String marketCageBag() {		
			System.out.println("케이지형 이동장 페이지 출력 ");
			return "marketCageBag";		
		}
		
	//이동장 페이지 
		@RequestMapping("marketStrollerBag")	
		public String marketStrollerBag() {		
			System.out.println("유모차형 이동장 페이지 출력 ");
			return "marketStrollerBag";		
		}
		
	//캣타워 페이지 
		@RequestMapping("marketTower")	
		public String marketTower() {		
			System.out.println("캣타워 페이지 출력 ");
			return "marketTower";		
		}
		
	//캣휠 페이지 
		@RequestMapping("marketWheel")	
		public String marketWheel() {		
			System.out.println("캣휠 페이지 출력 ");
			return "marketWheel";		
		}
		
	//캣폴 페이지 
		@RequestMapping("marketPole")	
		public String marketPole() {		
			System.out.println("캣폴 페이지 출력 ");
			return "marketPole";		
		}
		

		
}
