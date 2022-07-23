package subject.vo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "COUPON_RECORD")
public class CouponRecord implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@Column(name = "COUPON_SERIAL_NUMBER")
	private Integer couponserialnumber;

	@Id
	@Column(name = "MEMBER_SERIAL_NUMBER")
	private Integer memberserialnumber;
	
	@Column(name = "COUPON_RECORD_STATUS")
	private Integer couponrecordstatus;

	public CouponRecord() {

	}

	@Override
	public String toString() {
		return "CouponRecord [couponserialnumber=" + couponserialnumber + ", memberserialnumber=" + memberserialnumber
				+ ", couponrecordstatus=" + couponrecordstatus + "]";
	}

	public Integer getCouponserialnumber() {
		return couponserialnumber;
	}

	public void setCouponserialnumber(Integer couponserialnumber) {
		this.couponserialnumber = couponserialnumber;
	}

	public Integer getMemberserialnumber() {
		return memberserialnumber;
	}

	public void setMemberserialnumber(Integer memberserialnumber) {
		this.memberserialnumber = memberserialnumber;
	}

	public Integer getCouponrecordstatus() {
		return couponrecordstatus;
	}

	public void setCouponrecordstatus(Integer couponrecordstatus) {
		this.couponrecordstatus = couponrecordstatus;
	}

}
