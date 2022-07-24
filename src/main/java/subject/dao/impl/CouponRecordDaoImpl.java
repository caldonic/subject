package subject.dao.impl;

import java.io.Serializable;
import java.util.List;
import java.util.Objects;

import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import model.hibernate.HibernateUtil;
import subject.dao.CouponDao;
import subject.dao.CouponRecordDao;
import subject.vo.Coupon;
import subject.vo.CouponRecord;

public class CouponRecordDaoImpl implements CouponRecordDao {
	private SessionFactory sessionFactory;

	public CouponRecordDaoImpl() {

	}
	public CouponRecordDaoImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	}

//select方法(比對紀錄、查詢該會員使用優惠券狀態)
	String couponrecordhql = "select couponrecordstatus from CouponRecord where couponserialnumber = :couponserialnumber and memberserialnumber = :memberserialnumber";
	CouponDao coupon;
//	@Override
//	public List<Integer> selectbyrecordpk(Integer couponserialnumber, Integer memberserialnumber) {
//		List<Integer> resultscouponrecord = getSession().createQuery(couponrecordhql, Integer.class)
//				.setParameter("couponserialnumber", couponserialnumber)
//				.setParameter("memberserialnumber", memberserialnumber).list();
//		return resultscouponrecord;
	@Override
	public Integer selectbyrecordpk(String couponname, Integer memberserialnumber) {
		coupon = new CouponDaoImpl(sessionFactory);
	
		Integer resultscouponrecord = getSession().createQuery(couponrecordhql, Integer.class)
				.setParameter("couponserialnumber", coupon.selectbycouponname(couponname))
				.setParameter("memberserialnumber", memberserialnumber).uniqueResult();	
		return resultscouponrecord;
	}


////insert方法(消費者使用時新增紀錄)
	@Override
	public CouponRecord insert(CouponRecord couponRecord) {
		if (couponRecord != null && couponRecord.getCouponserialnumber() != null) {
			CouponRecord temp = this.getSession().get(CouponRecord.class, couponRecord.getCouponserialnumber());
			if (temp == null) {
				Serializable pk = this.getSession().save(couponRecord);
				return couponRecord;
			}
		}
		return null;
	}



	public static void main(String[] args) {
		
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.getCurrentSession();

		Transaction tra = session.beginTransaction();
		CouponRecordDao dao = new CouponRecordDaoImpl(sessionFactory);

		Integer T = dao.selectbyrecordpk("lanternfestival", 1636001);
		System.out.println("T=" + T);
		
		
		tra.commit();
		HibernateUtil.closeSessionFactory();
	}

}
