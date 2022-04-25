package com.example.demo.vo;

public class BasketVO {

	private int basketNo,pcode,quantity;
	private String id;
	
	
	
	
	public BasketVO(int basketNo, int pcode, int quantity, String id) {
		setBasketNo(basketNo);
		setPcode(pcode);
		setQuantity(quantity);
		setId(id);
	}
	
	
	public BasketVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public int getBasketNo() {
		return basketNo;
	}
	public void setBasketNo(int basketNo) {
		this.basketNo = basketNo;
	}
	public int getPcode() {
		return pcode;
	}
	public void setPcode(int pcode) {
		this.pcode = pcode;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	@Override
	public String toString() {
		return "BasketVO [basketNo=" + basketNo + ", pcode=" + pcode + ", quantity=" + quantity + ", id=" + id + "]";
	}
	
	
}
