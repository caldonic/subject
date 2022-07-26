package subject.dao.impl;

import java.io.Serializable;
import java.util.List;

import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import model.hibernate.HibernateUtil;
import subject.dao.CouponDao;
import subject.vo.Coupon;

public class CouponDaoImpl implements CouponDao {
	private SessionFactory sessionFactory = HibernateUtil.getSessionFactory();  //從controller移到這

	public CouponDaoImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	public CouponDaoImpl() {
	}

//select方法(利用名稱查流水號)

//	String couponhql = "select couponserialnumber from Coupon where couponname = :couponname "; //HQL
	public Integer selectbycouponname(String couponname) {
		CriteriaBuilder criteriaBuilder = this.getSession().getCriteriaBuilder();
		CriteriaQuery<Integer> criteriaQuery = criteriaBuilder.createQuery(Integer.class);
		// FROM Coupon
		Root<Coupon> root = criteriaQuery.from(Coupon.class);
		// SELECT couponserialnumber
		criteriaQuery = criteriaQuery.select(root.get("couponserialnumber"));
		// couponname= name
		Predicate p1 = criteriaBuilder.equal(root.get("couponname"), couponname);
		// where couponname
		criteriaQuery = criteriaQuery.where(p1);

		TypedQuery<Integer> typedQuery = this.getSession().createQuery(criteriaQuery);
		Integer result = typedQuery.getSingleResult();
		return result;

//		Integer resultscouponid = getSession().createQuery(couponhql, Integer.class)  //HQL
//				.setParameter("couponname", couponname).uniqueResult();
//		return resultscouponid;
	}

	// selectALll
	@Override
	public List<Coupon> selectall() {
		CriteriaBuilder criteriaBuilder = this.getSession().getCriteriaBuilder();
		CriteriaQuery<Coupon> criteriaQuery = criteriaBuilder.createQuery(Coupon.class);
		// FROM Coupon
		Root<Coupon> root = criteriaQuery.from(Coupon.class);

		TypedQuery<Coupon> typedQuery = this.getSession().createQuery(criteriaQuery);
		List<Coupon> result = typedQuery.getResultList();
		return result;
	}

	// selectone
	String couponhq2 = "from Coupon where couponname = :couponname "; // HQL

	@Override
	public Coupon selectone(Coupon coupon) {
		Coupon resultone = getSession().createQuery(couponhq2, Coupon.class) // HQL
				.setParameter("couponname", coupon.getCouponname())
				.uniqueResult();
		return resultone;
	}

//insert方法
	@Override
	public Coupon insert(Coupon coupon) {
		Serializable pk = getSession().save(coupon);
		return coupon;
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

//	public static void main(String arg[]) {
//		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
//		Session session = sessionFactory.getCurrentSession();
//		Transaction tra = session.beginTransaction();
//		CouponDao dao = new CouponDaoImpl(sessionFactory);
//
//// select測試
//		Integer ID = dao.selectbycouponname("fathersday");
//		System.out.println("ID=" + ID);
//
//// insert測試
//		Coupon insert = new Coupon();
//		insert.setCouponname("hibernateTest10");
//		insert.setStartdate(new Date(2021 - 07 - 01));
//		insert.setEnddate(new Date(2022 - 07 - 10)); // java之後 int 支援(123,123,123)=(123-123-123),因此出現不可輸入int參數
//		insert.setRefundpercent((float) 0.03);
//		Coupon insetResult = dao.insert(insert);
//		System.out.println("insetResult=" + insetResult);
//
//// update測試
////		Coupon update = new Coupon();
////		update.setCouponserialnumber(12);
////		update.setCouponname("marry");
////		update.setStartdate(new Date(2022 - 07 - 01));
////		update.setEnddate(new Date(2022 - 07 - 10)); // java之後 int 支援(123,123,123)=(123-123-123),因此出現不可輸入int參數
////		update.setRefundpercent((float) 0.03);
////		Coupon updateResult = dao.update(update);
////		System.out.println("updateResult=" + updateResult);
//
////delete測試(Error)
//		boolean remove = dao.remove(12);
//		System.out.println("remove=" + remove);
//
//		tra.commit();
//		HibernateUtil.closeSessionFactory();
//	}
}
