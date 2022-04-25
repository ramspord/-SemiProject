package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.example.demo.service.BoardService;
import com.example.demo.vo.BoardVO;

@Controller
public class BoardController {

	@Autowired
	BoardService boardService;
	
	//게시판 메인 
	@RequestMapping("board")
	public ModelAndView board() {
		
		
		List<BoardVO> list=boardService.board();
		System.out.println("board : "+list.size());
		ModelAndView mav=new ModelAndView("board");
		mav.addObject("board", list);
		return mav;
		
	}

	//글쓰기 화면
	@RequestMapping("boardWriteForm")	
	public String boardWriteForm() {			
		return "boardWriteForm";		
	}

	
	//글 등록 화면
	@RequestMapping("boardWrite")
	public String boardWrite(@ModelAttribute("boardVO") BoardVO boardVO, RedirectAttributes redirect) {

			boardService.boardWrite(boardVO);
			
			redirect.addFlashAttribute("redirect", boardVO.getNo());

		return "redirect:board";
	}
	
	//글 상세보기 화면 
	@RequestMapping("viewMore")
	public String viewMore(@ModelAttribute("boardVO") BoardVO boardVO, @RequestParam("no") int no, Model model) {
		
		BoardVO Contents = boardService.getContents(no);
		model.addAttribute("Contents", Contents);
		
		
		return "viewMore";
	}
	
	//글 수정 화면 
	@RequestMapping("update")
	public String update(@ModelAttribute("boardVO") BoardVO boardVO, @RequestParam("no") int no, Model model) {
		
		BoardVO Contents = boardService.getContents(no);
		model.addAttribute("Contents", Contents);
		
		return "update";
	}
	
	//글 수정 처리 
	@RequestMapping("updateArticle")
	public String updateArticle(@ModelAttribute("boardVO") BoardVO boardVO, RedirectAttributes redirect) {

		try {
			boardService.updateBoard(boardVO);
			redirect.addFlashAttribute("redirect", boardVO.getNo());
			
			redirect.addFlashAttribute("msg", "수정이 완료되었습니다.");
			
		} catch (Exception e) {
			
			redirect.addFlashAttribute("msg", "오류가 발생되었습니다.");
		}
		
		return "redirect:viewMore?no=" + boardVO.getNo();
	}
	
	//글 삭제 처리 
	@RequestMapping("boardDelete")
	public String boardDelete(@ModelAttribute("boardVO") BoardVO boardVO, @RequestParam("no") int no, RedirectAttributes redirect, Model model) {

		try {
			
			boardService.boardDelete(no);

			redirect.addFlashAttribute("msg", "삭제되었습니다.");
			
		} catch (Exception e) {
			
			redirect.addFlashAttribute("msg", "오류가 발생되었습니다.");
		}
		
		return "redirect:board";
	}
	
	
	//자유게시판 화면 
	@RequestMapping("boardFree")	
	public String boardFree() {		
		System.out.println("자유게시판 페이지 출력 ");
		return "boardFree";		
	}
	
	//Q&A게시판 화면 
	@RequestMapping("boardQa")	
	public String boardQa() {		
		System.out.println("Q&A 페이지 출력 ");
		return "boardQa";		
	}
	
}


