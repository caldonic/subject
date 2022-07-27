package subject.service.impl;

import subject.dao.CouponDao;
import subject.dao.CouponRecordDao;
import subject.dao.impl.CouponDaoImpl;
import subject.dao.impl.CouponRecordDaoImpl;
import subject.service.CouponVerifyService;
import subject.vo.Coupon;
import subject.vo.CouponRecord;

//用過coupon直接insert使用紀錄
public class CouponVerifyServiceImpl implements CouponVerifyService {
	private CouponDao couponDao;
	private CouponRecordDao couponRecordDao;
	Coupon coupon;

	public CouponVerifyServiceImpl() {
		couponDao = new CouponDaoImpl();
		couponRecordDao = new CouponRecordDaoImpl();
	}

	@Override
	public String Couponverify(String couponname) {
//		String couponname=coupon.getCouponname();
		if (couponname.equals(couponDao.selectcouponname(couponname))) {
			if (couponRecordDao.selectbyrecordpk(couponname, 1636001) == null) { // 應getMemberserialnumber()
				CouponRecord couponRecord = new CouponRecord();
				couponRecord.setCouponserialnumber(couponDao.selectcouponserialnumber(couponname));
				couponRecord.setMemberserialnumber(1636001);
				couponRecord.setCouponrecordstatus(1);
				couponRecordDao.insert(couponRecord);
				return "使用成功";
			} else {
				return "此優惠券已被您使用";
			}
		}
		return "查無此優惠券";
	}

}
