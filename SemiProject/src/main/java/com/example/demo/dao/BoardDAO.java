package com.example.demo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;
import com.example.demo.vo.BoardVO;

@Mapper
@Repository
public interface BoardDAO {
	
	public List<BoardVO> board() throws DataAccessException;

	public void boardWrite(BoardVO boardVO) throws DataAccessException;

	public BoardVO getContents(int no) throws DataAccessException;

	public void updateBoard(BoardVO boardVO) throws DataAccessException;

	public void boardDelete(int no) throws DataAccessException;

}
