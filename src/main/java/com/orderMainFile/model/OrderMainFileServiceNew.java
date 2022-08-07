package com.orderMainFile.model;

import java.util.ArrayList;
import java.util.List;

import com.orderDetail.model.OrderDetailVO;

public class OrderMainFileServiceNew {
	OrderMainFileDAO dao;
	OrderMainFileVO orderMainFileVO;
	public OrderMainFileServiceNew() {
//		public static void main(String[] args) {

		dao = new OrderMainFileDAO();

		orderMainFileVO = new OrderMainFileVO();
	}
	public String insertWithOrderDetail() {
		orderMainFileVO.setMemberserialnumber(1636001);
		orderMainFileVO.setSellerserialnumber(1000);
		orderMainFileVO.setOrderstatusnumber("1");
		orderMainFileVO.setCouponserialnumber(1);
		orderMainFileVO.setSellerevaluationstar(3);
		orderMainFileVO.setMemberevaluationstar(3);
		orderMainFileVO.setSellerevaluationdescription("");
		orderMainFileVO.setMemberevaluationdescription("");
		orderMainFileVO.setOrderamount(5555555);
		orderMainFileVO.setOrderdate(java.sql.Date.valueOf("2022-08-06"));
		
		
		List<OrderDetailVO> testList = new ArrayList<OrderDetailVO>(); // 準備置入orderdetail筆數
		OrderDetailVO odXX = new OrderDetailVO();   // orderdetail1
		odXX.setItemserialnumber(87878701);
		odXX.setOrderdetailprice(2000);
		odXX.setOrderdetailquantity(2);
		odXX.setRefundreason("");
		odXX.setOrderdetailstatus(2);

		OrderDetailVO odyy = new OrderDetailVO();   // orderdetail2
		odyy.setItemserialnumber(87878702);
		odyy.setOrderdetailprice(1000);
		odyy.setOrderdetailquantity(1);
		odyy.setRefundreason("");
		odyy.setOrderdetailstatus(1);

		testList.add(odXX);
		testList.add(odyy);
		
		dao.insertWithOrderDetail(orderMainFileVO , testList);
		return "訂單主檔+細項新增成功";
	
	}
}

