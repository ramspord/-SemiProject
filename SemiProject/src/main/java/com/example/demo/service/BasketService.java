package com.example.demo.service;

import org.apache.ibatis.binding.BindingException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.BasketDAO;
import com.example.demo.vo.BasketVO;

@Service
public class BasketService {
	
	@Autowired
	BasketDAO basketDAO;
	
	public void insertBasket(BasketVO basketVO) throws Exception{
		try {
			int i=basketDAO.selectQuantityByPcode(basketVO);
			if(i==0) {
				basketDAO.insertBasket(basketVO);
			}else {
				basketVO.setQuantity(++i);
				basketDAO.updateQuantityByPcode(basketVO);
			}
			}catch(BindingException e) {
				System.out.println(e.getMessage());
				basketDAO.insertBasket(basketVO);
			}
		
		}
		

	}

