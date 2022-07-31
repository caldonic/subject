package subject.dao.impl;

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

import subject.dao.WalletrecordDao;
import subject.vo.Walletrecord;

public class WalletrecordDaoImpl implements WalletrecordDao{
	private static DataSource ds = null;
	static { 
		try {
			Context ctx = new InitialContext();
			ds = (DataSource) ctx.lookup("java:comp/env/jdbc/letitgo");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}

	private static final String selectGoldremaining =
			"select gold_remaining from member where member_serial_number = ?;";
	@Override
	public Walletrecord selectGoldremaining(Integer goldremaining) {
		Walletrecord walletrecord = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {   

			con = ds.getConnection();
			pstmt = con.prepareStatement(selectGoldremaining);

			pstmt.setInt(1, goldremaining);

			rs = pstmt.executeQuery();

			while (rs.next()) {
				walletrecord = new Walletrecord();
				walletrecord.setGoldremaining(rs.getInt("gold_remaining"));
			}

		} catch (SQLException se) {
			throw new RuntimeException("A database error occured. "
					+ se.getMessage());
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
		return walletrecord;
	}

	 
	
	
	
	private static final String GET_ALL_STMT = 
			"SELECT w.*, m.gold_remaining from wallet_record w join member m on w.member_serial_number = m.member_serial_number;";

	
	@Override
	public List<Walletrecord> getAll() {
		List<Walletrecord> list = new ArrayList<Walletrecord>();
		Walletrecord walletrecord = null;

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {

			con = ds.getConnection();
			pstmt = con.prepareStatement(GET_ALL_STMT);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				walletrecord = new Walletrecord();
				walletrecord.setWalletrecordnumber(rs.getInt("wallet_record_number"));
				walletrecord.setMemberserialnumber(rs.getInt("member_serial_number"));
				walletrecord.setOrderserialnumber(rs.getInt("order_serial_number"));
				walletrecord.setWalletrecordtime(rs.getDate("wallet_record_time"));
				walletrecord.setGoldadjustmentamount(rs.getInt("gold_adjustment_amount"));
				walletrecord.setWalletrecordnote(rs.getString("wallet_record_note"));
				walletrecord.setGoldremaining(rs.getInt("gold_remaining"));		
					
				list.add(walletrecord); // Store the row in the list
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
