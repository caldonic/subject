package subject.service.impl;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Objects;

import com.orderDetail.model.OrderDetailDAO;
import com.orderDetail.model.OrderDetailDAO_interface;
import com.orderDetail.model.OrderDetailVO;

import subject.dao.CouponDao;
import subject.dao.OrderMainFileHibernateDao;
import subject.dao.impl.CouponDaoImpl;
import subject.dao.impl.OrderMainFileHibernateDaoImpl;
import subject.service.OrderMainFileHibernateService;
import subject.vo.OrderMainFileHibernate;
import suject.cart.Cart;
import suject.cart.Cartlist;

public class OrderMainFileHibernateServiceImpl implements OrderMainFileHibernateService {
	private CouponDao couponDao;
	private OrderMainFileHibernateDao orderMainFileHibernateDao;
	private OrderDetailDAO orderDetailDAO;
	Calendar calendar = Calendar.getInstance();
	Cart cart;

	public OrderMainFileHibernateServiceImpl() {
		couponDao = new CouponDaoImpl();
		orderMainFileHibernateDao = new OrderMainFileHibernateDaoImpl();
		orderDetailDAO = new OrderDetailDAO();
	}

	public String orderMaininsert(String couponname) {
		Integer orderserialnumber = null;
//	    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd :hh:mm:ss");
//		Date curtime= strToDateLong(dateFormat.format(calendar.getTime()));
		if (couponname == null || Objects.equals(couponname, "")) {
			OrderMainFileHibernate orderMainFileHibernate = new OrderMainFileHibernate();
			orderMainFileHibernate.setMemberserialnumber(1636001);
			orderMainFileHibernate.setSellerserialnumber(1000);
			orderMainFileHibernate.setOrderstatusnumber("1");
			orderMainFileHibernate.setSellerevaluationstar(2);
			orderMainFileHibernate.setMemberevaluationstar(4);
			orderMainFileHibernate.setSellerevaluationdescription("這很賣家賣的東西普普");
			orderMainFileHibernate.setMemberevaluationdescription("這個買家很好");
//			orderMainFileHibernate.setMemberevaluationphoto();
			orderMainFileHibernate.setOrderamount(9999999);
			orderMainFileHibernate.setOrderdate(calendar.getTime());
			Serializable pk1 = orderMainFileHibernateDao.insert(orderMainFileHibernate);
			System.out.println("id1=" + ((OrderMainFileHibernate) pk1).getOrderserialnumber());
			return "新增成功";

		} else {
			OrderMainFileHibernate orderMainFileHibernate = new OrderMainFileHibernate();
			orderMainFileHibernate.setMemberserialnumber(1636001);
			orderMainFileHibernate.setSellerserialnumber(1000);
			orderMainFileHibernate.setOrderstatusnumber("1");
			orderMainFileHibernate.setCouponserialnumber(couponDao.selectcouponserialnumber(couponname));
			// orderMainFileHibernate.setCouponserialnumber(5);
			orderMainFileHibernate.setSellerevaluationstar(2);
			orderMainFileHibernate.setMemberevaluationstar(4);
			orderMainFileHibernate.setSellerevaluationdescription("這很賣家賣的東西普普");
			orderMainFileHibernate.setMemberevaluationdescription("這個買家很好");
			// orderMainFileHibernate.setMemberevaluationphoto();
			orderMainFileHibernate.setOrderamount(9999999);
			orderMainFileHibernate.setOrderdate(calendar.getTime());
			Serializable pk2 = orderMainFileHibernateDao.insert(orderMainFileHibernate);
			System.out.println("id2=" + ((OrderMainFileHibernate) pk2).getOrderserialnumber());
			orderserialnumber = ((OrderMainFileHibernate) pk2).getOrderserialnumber();
//			return "新增成功";
			/// ====================
			if (orderserialnumber != null) {
//				List<OrderDetailVO> testList = new ArrayList<OrderDetailVO>(); // 準備置入orderdetail筆數
				for (int i = 0; i < cart.cartlist.size(); i++) { // 一般用法
//					System.out.println("cartobj=" + cart.cartlist);
//				System.out.println("cartobj=" + cartlist);

					OrderDetailVO odXX = new OrderDetailVO(); // orderdetail1
					odXX.setOrderserialnumber(orderserialnumber);
					odXX.setItemserialnumber(87001);
					odXX.setOrderdetailprice(2000);
					odXX.setOrderdetailquantity(2);
					odXX.setRefundreason("");
					odXX.setOrderdetailstatus(2);

//				OrderDetailVO odyy = new OrderDetailVO(); // orderdetail2
//				odyy.setOrderserialnumber(orderserialnumber);
//				odyy.setItemserialnumber(87878702);
//				odyy.setOrderdetailprice(1000);
//				odyy.setOrderdetailquantity(1);
//				odyy.setRefundreason("");
//				odyy.setOrderdetailstatus(1);
//					testList.add(odXX);
					orderDetailDAO.insert(odXX);
				}
          
//			testList.add(odyy);
//				

				
//				orderDetailDAO.insert(odyy);
				return "訂單主檔+細項新增成功";
			}
			return "訂單主檔新增成功";
		}

	}

//	 public static Date strToDateLong(String strDate) {
//		    SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//		    ParsePosition pos = new ParsePosition(0);
//		    Date strtodate = formatter.parse(strDate, pos);
//		    return strtodate;
//		 }

}
