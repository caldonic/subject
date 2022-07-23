package subject.vo;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "COUPON")
public class Coupon {
	@Id
	@Column(name = "COUPON_SERIAL_NUMBER") // 建議要寫
	private Integer couponserialnumber;
	@Column(name = "COUPON_NAME")
	private String couponname;
	@Column(name = "START_DATE")
	private Date startdate;
	@Column(name = "END_DATE")
	private Date enddate;
	@Column(name = "REFUND_PERCENT")
	private Float refundpercent;

	@Override
	public String toString() {
		Date date = new Date();
		SimpleDateFormat spl = new SimpleDateFormat("yyyy-MM-dd");
		String temp = spl.format(date);
		String temp2 = spl.format(date);
		try {
			date = spl.parse(temp);
			date = spl.parse(temp2);
		} catch (ParseException e) {
			e.printStackTrace();
		}

		if (startdate != null) {
			temp = spl.format(startdate);
		}
		if (enddate != null) {
			temp2 = spl.format(enddate);
		}

		return "Coupon [couponserialnumber=" + couponserialnumber + ", couponname=" + couponname + ", startdate="
				+ temp + ", enddate=" + temp2  + ", refundpercent=" + refundpercent + "]";
	}

	public Integer getCouponserialnumber() {
		return couponserialnumber;
	}

	public void setCouponserialnumber(Integer couponserialnumber) {
		this.couponserialnumber = couponserialnumber;
	}

	public String getCouponname() {
		return couponname;
	}

	public void setCouponname(String couponname) {
		this.couponname = couponname;
	}

	public Date getStartdate() {
		return startdate;
	}

	public void setStartdate(Date startdate) {
		this.startdate = startdate;
	}

	public Date getEnddate() {
		return enddate;
	}

	public void setEnddate(Date enddate) {
		this.enddate = enddate;
	}

	public Float getRefundpercent() {
		return refundpercent;
	}

	public void setRefundpercent(Float refundpercent) {
		this.refundpercent = refundpercent;
	}

}
