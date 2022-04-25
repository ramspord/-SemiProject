package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;


import com.example.demo.dao.BoardDAO;
import com.example.demo.vo.BoardVO;

@Service
public class BoardService {
	
	@Autowired
	BoardDAO boardDAO;
	
	public List<BoardVO> board(){
		
		return boardDAO.board();
	}

	public void boardWrite(BoardVO boardVO) throws DataAccessException {
		
		boardDAO.boardWrite(boardVO);	
		
	}

	public BoardVO getContents(int no) {
		
		return boardDAO.getContents(no);
	}

	public void updateBoard(BoardVO boardVO) {
		
		boardDAO.updateBoard(boardVO);	
		
		
	}

	public void boardDelete(int no) {
		
		boardDAO.boardDelete(no);
		
	}
}
