package subject.dao;

import java.util.List;

import subject.vo.Coupon;

public interface CouponDao {
	Coupon insert(Coupon coupon);

	Coupon update(Coupon coupon);

	boolean remove(Integer couponserialnumber);

	List<Integer> selectbycouponname(String couponname);
	
//	boolean remove(String string);
}