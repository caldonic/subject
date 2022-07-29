package subject.service;

import subject.vo.Coupon;

public interface CouponVerifyService {

	String Couponverify(String couponname);
	Float Couponrefundpercent(String couponname);
	Integer Couponserialnumber(String couponname);

}