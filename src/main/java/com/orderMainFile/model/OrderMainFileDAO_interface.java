package com.orderMainFile.model;

import java.util.List;

import com.orderDetail.model.OrderDetailVO;

public interface OrderMainFileDAO_interface {
	
		public void insert(OrderMainFileVO orderMainFileVO);
		public void update(OrderMainFileVO orderMainFileVO);
		public void delete(Integer orderserialnumber);
		public OrderMainFileVO findByOrderPK(Integer orderserialnumber);
		public List<OrderMainFileVO> getAll();
		public List<OrderDetailVO> findByOrderDetail(Integer orderserialnumber);
		//萬用複合查詢(傳入參數型態Map)(回傳 List)
		//public List<EmpVO> getAll(Map<String, String[]> map);
		
		// 同時新增訂單主檔及訂單明細
		public Integer insertWithOrderDetail(OrderMainFileVO orderMainFileVO, List<OrderDetailVO> list);
}
