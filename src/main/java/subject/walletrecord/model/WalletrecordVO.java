package subject.walletrecord.model;

import java.util.Date;

import com.google.protobuf.Timestamp;

public class WalletrecordVO implements java.io.Serializable{
	
	
		private Integer walletrecordnumber;
		private Integer memberserialnumber;
		private Integer orderserialnumber;
		private Date walletrecordtime;
		private Integer goldadjustmentamount;
		private String walletrecordnote;
		private Integer goldremaining;
		
		@Override
		public String toString() {
			return "WalletrecordVO [walletrecordnumber=" + walletrecordnumber + ", memberserialnumber="
					+ memberserialnumber + ", orderserialnumber=" + orderserialnumber + ", walletrecordtime="
					+ walletrecordtime + ", goldadjustmentamount=" + goldadjustmentamount + ", walletrecordnote="
					+ walletrecordnote + ", goldremaining=" + goldremaining + "]";
		}
		public Integer getWalletrecordnumber() {
			return walletrecordnumber;
		}
		public void setWalletrecordnumber(Integer walletrecordnumber) {
			this.walletrecordnumber = walletrecordnumber;
		}
		public Integer getMemberserialnumber() {
			return memberserialnumber;
		}
		public void setMemberserialnumber(Integer memberserialnumber) {
			this.memberserialnumber = memberserialnumber;
		}
		public Integer getOrderserialnumber() {
			return orderserialnumber;
		}
		public void setOrderserialnumber(Integer orderserialnumber) {
			this.orderserialnumber = orderserialnumber;
		}
		public Date getWalletrecordtime() {
			return walletrecordtime;
		}
		public void setWalletrecordtime(Date walletrecordtime) {
			this.walletrecordtime = walletrecordtime;
		}
		public Integer getGoldadjustmentamount() {
			return goldadjustmentamount;
		}
		public void setGoldadjustmentamount(Integer goldadjustmentamount) {
			this.goldadjustmentamount = goldadjustmentamount;
		}
		public String getWalletrecordnote() {
			return walletrecordnote;
		}
		public void setWalletrecordnote(String walletrecordnote) {
			this.walletrecordnote = walletrecordnote;
		}
		public Integer getGoldremaining() {
			return goldremaining;
		}
		public void setGoldremaining(Integer goldremaining) {
			this.goldremaining = goldremaining;
		}
		
}
