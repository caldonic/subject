package subject.dao.impl;

import java.io.Serializable;
import java.util.Date;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import model.hibernate.HibernateUtil;
import subject.dao.CouponDao;
import subject.vo.Coupon;

public class CouponDaoImpl implements CouponDao {
	private SessionFactory sessionFactory;

	public CouponDaoImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public CouponDaoImpl() {
		
	}

	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	}

//select方法
	@Override
	public Coupon selectbycouponserialnumber(Integer couponserialnumber) {
		return this.getSession().get(Coupon.class, couponserialnumber);
	}

//insert方法
	@Override
	public Coupon insert(Coupon coupon) {
		if (coupon != null && coupon.getCouponserialnumber() != null) {
			Coupon temp = this.getSession().get(Coupon.class, coupon.getCouponserialnumber());
			if (temp == null) {
				Serializable pk = this.getSession().save(coupon);
				return coupon;
			}
		}
		return null;
	}

//update方法
	@Override
	public Coupon update(Coupon coupon) {
		if (coupon != null && coupon.getCouponserialnumber() != null) { // 如果傳入參數或是id不是空值
			Coupon temp = this.getSession().get(Coupon.class, coupon.getCouponserialnumber()); // 把該筆資料撈出
			if (temp != null) {
				return (Coupon) this.getSession().merge(coupon);

			}
		}
		return null;
	}

//delete方法
	@Override
	public boolean remove(Integer couponserialnumber) {
		if (couponserialnumber != null) {
			Coupon temp = this.getSession().get(Coupon.class, couponserialnumber);
			if (temp != null) {
				this.getSession().remove(temp);
				return true;
			}

		}
		return false;
	}

	public static void main(String arg[]) {
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.getCurrentSession();
		Transaction tra = session.beginTransaction();
		CouponDao dao = new CouponDaoImpl(sessionFactory);

// select測試
		Coupon select = dao.selectbycouponserialnumber(1);
		System.out.println("查詢結果:" + select);
// insert測試
		Coupon insert = new Coupon();
		insert.setCouponserialnumber(6);
		insert.setCouponname("hibernateTest");
		insert.setStartdate(new Date(2022 - 07 - 01));
		insert.setEnddate(new Date(2022 - 07 - 10)); // java之後 int 支援(123,123,123)=(123-123-123),因此出現不可輸入int參數
		insert.setRefundpercent((float) 0.03);
		Coupon insetResult = dao.insert(insert);
		System.out.println("insetResult=" + insetResult);
// update測試
//		Coupon update = new Coupon();
//		update.setCouponserialnumber(6);
//		update.setCouponname("marry");
//		update.setStartdate(new Date(2022 - 07 - 01));
//		update.setEnddate(new Date(2022 - 07 - 10)); // java之後 int 支援(123,123,123)=(123-123-123),因此出現不可輸入int參數
//		update.setRefundpercent((float) 0.03);
//		Coupon updateResult = dao.update(update);
//		System.out.println("updateResult=" + updateResult);
//delete測試
//		boolean remove =dao.remove(6);
//		System.out.println("remove="+remove);
//		
		tra.commit();
		HibernateUtil.closeSessionFactory();
	}
}
