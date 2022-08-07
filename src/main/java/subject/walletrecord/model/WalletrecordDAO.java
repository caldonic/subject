package subject.walletrecord.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;



public class WalletrecordDAO implements WalletrecordDAO_interface{
	private static DataSource ds = null;
	static {
		try {
			Context ctx = new InitialContext();
			ds = (DataSource) ctx.lookup("java:comp/env/jdbc/MySQL");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}

	private static final String GET_ALL_STMT = 
			"SELECT w.*, m.gold_remaining from wallet_record w join member m on w.member_serial_number = m.member_serial_number;";
	
	@Override
	public List<WalletrecordVO> getAll() {
		List<WalletrecordVO> list = new ArrayList<WalletrecordVO>();
		WalletrecordVO walletrecordVO = null;

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {

			con = ds.getConnection();
			pstmt = con.prepareStatement(GET_ALL_STMT);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				// empVO 也稱為 Domain objects
				walletrecordVO = new WalletrecordVO();
				walletrecordVO.setWalletrecordnumber(rs.getInt("wallet_record_number"));
				walletrecordVO.setMemberserialnumber(rs.getInt("member_serial_number"));
				walletrecordVO.setOrderserialnumber(rs.getInt("order_serial_number"));
				walletrecordVO.setWalletrecordtime(rs.getDate("wallet_record_time"));
				walletrecordVO.setGoldadjustmentamount(rs.getInt("gold_adjustment_amount"));
				walletrecordVO.setWalletrecordnote(rs.getString("wallet_record_note"));
				walletrecordVO.setGoldremaining(rs.getInt("gold_remaining"));		
					
				list.add(walletrecordVO); // Store the row in the list
			}

			// Handle any driver errors
		} catch (SQLException se) {
			throw new RuntimeException("A database error occured. "
					+ se.getMessage());
			// Clean up JDBC resources
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException se) {
					se.printStackTrace(System.err);
				}
			}
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException se) {
					se.printStackTrace(System.err);
				}
			}
			if (con != null) {
				try {
					con.close();
				} catch (Exception e) {
					e.printStackTrace(System.err);
				}
			}
		}
		return list;
	}

	
	


}