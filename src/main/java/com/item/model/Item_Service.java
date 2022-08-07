package com.item.model;

import java.util.List;
import java.util.Map;

public class Item_Service {

	private Item_DAO_interface dao;

	public Item_Service() {
		dao = new Item_DAO();
	}

//	public Item_VO addEmp(String item_name, String item_description, Integer item_price, Integer item_stock, Integer seller_serial_number,String item_category_number,String item_status_number
//			) {
//
//		Item_VO item_VO = new Item_VO();
//
//		item_VO.setItem_name(item_name);
//		item_VO.setItem_description(item_description);
//		item_VO.setItem_price(item_price);
//		item_VO.setItem_stock(item_stock);
//		item_VO.setSeller_serial_number(seller_serial_number);
//		item_VO.setItem_category_number(item_category_number);
//		item_VO.setItem_status_number(item_status_number);
//		dao.insert(item_VO);
//
//		return item_VO;
//	}

//	public Item_VO updateEmp(String item_category_main_name, String item_category_area_name, String item_category_detail_name
//			) {
//
//		Item_VO item_VO = new Item_VO();
//
//		item_VO.setItem_category_main_name(item_category_main_name);
//		item_VO.setItem_category_area_name(item_category_area_name);
//		item_VO.setItem_category_detail_name(item_category_detail_name);
//		dao.update(item_VO);
//
//		return item_VO;
//	}
//
//	public void deleteEmp(Integer item_category_number) {
//		dao.delete(item_category_number);
//	}
//
	public Item_VO getOneEmp(Integer item_serial_number) {
		return dao.findByPrimaryKey(item_serial_number);
	}
//
	public List<Item_VO> getAll() {
		return dao.getAll();
	}
//	
//	public List<Item_VO> getAll(Map<String, String[]> map) {
//		return dao.getAll(map);
//	}
}
