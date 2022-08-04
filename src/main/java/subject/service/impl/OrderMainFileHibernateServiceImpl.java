package subject.service.impl;

import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import subject.dao.CouponDao;
import subject.dao.OrderMainFileHibernateDao;
import subject.dao.impl.CouponDaoImpl;
import subject.dao.impl.OrderMainFileHibernateDaoImpl;
import subject.service.OrderMainFileHibernateService;
import subject.vo.OrderMainFileHibernate;
import suject.cart.Cart;

public class OrderMainFileHibernateServiceImpl implements OrderMainFileHibernateService {
	private CouponDao couponDao;
	private OrderMainFileHibernateDao orderMainFileHibernateDao;
	Cart cart;
	Calendar calendar = Calendar.getInstance();

	public OrderMainFileHibernateServiceImpl() {
		couponDao = new CouponDaoImpl();
		orderMainFileHibernateDao = new OrderMainFileHibernateDaoImpl();
	}

	public String orderMaininsert(String couponname) {
//	    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd :hh:mm:ss");
//		Date curtime= strToDateLong(dateFormat.format(calendar.getTime()));
		OrderMainFileHibernate orderMainFileHibernate = new OrderMainFileHibernate();
		orderMainFileHibernate.setMemberserialnumber(1636001);
		orderMainFileHibernate.setSellerserialnumber(1000);
		orderMainFileHibernate.setOrderstatusnumber("1");
		orderMainFileHibernate.setCouponserialnumber(couponDao.selectcouponserialnumber(couponname));
//		orderMainFileHibernate.setCouponserialnumber(5);
		orderMainFileHibernate.setSellerevaluationstar(2);
		orderMainFileHibernate.setMemberevaluationstar(4);
		orderMainFileHibernate.setSellerevaluationdescription("這很賣家賣的東西普普");
		orderMainFileHibernate.setMemberevaluationdescription("這個買家很好");
//		orderMainFileHibernate.setMemberevaluationphoto();
		orderMainFileHibernate.setOrderamount(9999999);
		orderMainFileHibernate.setOrderdate(calendar.getTime());
		orderMainFileHibernateDao.insert(orderMainFileHibernate);
		return "新增成功!";
	}

//	 public static Date strToDateLong(String strDate) {
//		    SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//		    ParsePosition pos = new ParsePosition(0);
//		    Date strtodate = formatter.parse(strDate, pos);
//		    return strtodate;
//		 }

}
