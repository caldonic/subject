package subject.dao;

import java.util.List;

import subject.vo.Coupon;

public interface CouponDao {
	Coupon insert(Coupon coupon);

	Coupon update(Coupon coupon);

	boolean remove(Integer couponserialnumber);

	Integer selectcouponserialnumber(String couponname);

	List<Coupon> selectall();

	Coupon selectone(Coupon couponname);

	String selectcouponname(String couponname);

}