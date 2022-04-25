package com.example.demo.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.example.demo.vo.BasketVO;

@Mapper
@Repository
public interface BasketDAO {
	
	public void insertBasket(BasketVO basketVO) throws DataAccessException;
	public int selectQuantityByPcode(BasketVO basketVO) throws Exception;	
	public void updateQuantityByPcode(BasketVO basketVO) throws DataAccessException;

}
