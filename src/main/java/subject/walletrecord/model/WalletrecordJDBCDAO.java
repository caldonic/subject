package subject.walletrecord.model;
import java.util.*;

import subject.blacklist.model.BlacklistJDBCDAO;
import subject.blacklist.model.BlacklistVO;

import java.sql.*;
public class WalletrecordJDBCDAO implements WalletrecordDAO_interface {
	String driver = "com.mysql.cj.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/letitgo?serverTimezone=Asia/Taipei";
	String userid = "root";
	String passwd = "aa128360877";

	private static final String GET_ALL_STMT = 
			"SELECT w.*, m.gold_remaining from wallet_record w join member m on w.member_serial_number = m.member_serial_number;";

	public List<WalletrecordVO> getAll() {
		List<WalletrecordVO> list = new ArrayList<WalletrecordVO>();
		WalletrecordVO walletrecordVO = null;

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {

			Class.forName(driver);
			con = DriverManager.getConnection(url, userid, passwd);
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
		} catch (ClassNotFoundException e) {
			throw new RuntimeException("Couldn't load database driver. "
					+ e.getMessage());
			// Handle any SQL errors
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

	public static void main(String[] args) {

		WalletrecordJDBCDAO dao = new WalletrecordJDBCDAO();


		// 查詢
		List<WalletrecordVO> list = dao.getAll();
		for (WalletrecordVO xWalletrecord : list) {
			System.out.print(xWalletrecord.getWalletrecordnumber() + ",");
			System.out.print(xWalletrecord.getMemberserialnumber() + ",");
			System.out.print(xWalletrecord.getOrderserialnumber() + ",");
			System.out.print(xWalletrecord.getWalletrecordtime() + ",");
			System.out.print(xWalletrecord.getGoldadjustmentamount() + ",");
			System.out.print(xWalletrecord.getWalletrecordnote() + ",");
			System.out.print(xWalletrecord.getGoldremaining() + ",");
			
			System.out.println();
		}
	}
}
