package subject.dao;

import subject.vo.Coupon;

public interface CouponDao {

	Coupon selectbycouponserialnumber(Integer couponserialnumber);
	Coupon insert(Coupon coupon);
	Coupon update(Coupon coupon);
	boolean remove(Integer couponserialnumber);

}