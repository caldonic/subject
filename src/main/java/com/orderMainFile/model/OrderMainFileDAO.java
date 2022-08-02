package com.orderMainFile.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.*;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import com.orderDetail.model.OrderDetailDAO;
import com.orderDetail.model.OrderDetailVO;

public class OrderMainFileDAO implements OrderMainFileDAO_interface{

	// 一個應用程式中,針對一個資料庫 ,共用一個DataSource即可
	private static DataSource ds = null;
	static {
		try {
			Context ctx = new InitialContext();
			ds = (DataSource) ctx.lookup("java:comp/env/jdbc/object");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}

	// 暫時拿掉member_evaluation_photo, 
	private static final String INSERT_STMT = 
		"INSERT INTO order_main_file (member_serial_number, seller_serial_number, order_status_number, coupon_serial_number, seller_evaluation_star, member_evaluation_star, seller_evaluation_description, member_evaluation_description, order_amount, order_date) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
	private static final String GET_ALL_STMT = 
		"SELECT order_serial_number, member_serial_number, seller_serial_number, order_status_number, coupon_serial_number, seller_evaluation_star, member_evaluation_star, seller_evaluation_description, member_evaluation_description, order_amount, order_date FROM order_main_file order by order_serial_number";
	private static final String GET_ONE_STMT = 
		"SELECT order_serial_number, member_serial_number, seller_serial_number, order_status_number, coupon_serial_number, seller_evaluation_star, member_evaluation_star, seller_evaluation_description, member_evaluation_description, order_amount, order_date FROM order_main_file where order_serial_number = ?";
	private static final String DELETE = 
		"DELETE FROM order_main_file where order_serial_number = ?";
	private static final String UPDATE = 
		"UPDATE order_main_file set member_serial_number = ?, seller_serial_number = ?, order_status_number = ?, coupon_serial_number = ?, seller_evaluation_star = ?, member_evaluation_star = ?, seller_evaluation_description = ?, member_evaluation_description = ?, order_amount = ?, order_date = ? where order_serial_number = ?";

	// 訂單流水編號join訂單明細
	private static final String GET_OrderDetail_STMT = 
		"SELECT d.order_serial_number,d.item_serial_number,d.order_detail_price,d.order_detail_quantity,d.refund_reason,d.order_detail_status from order_main_file o join order_detail d on o.order_serial_number = d.order_serial_number\r\n"
		+ "WHERE d.order_serial_number";
	
	
	
	// 訂單流水編號join訂單明細
	@Override
	public List<OrderDetailVO> findByOrderDetail(Integer orderserialnumber) {

		List<OrderDetailVO>list = new ArrayList<OrderDetailVO>();
		OrderDetailVO orderDetailVO =null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {

			con = ds.getConnection();
			pstmt = con.prepareStatement(GET_OrderDetail_STMT);

			pstmt.setInt(1, orderserialnumber);

			rs = pstmt.executeQuery();

			while (rs.next()) {
				// orderDetailVO 也稱為 Domain objects
				orderDetailVO = new OrderDetailVO();
				orderDetailVO.setOrderserialnumber(rs.getInt("order_serial_number"));
				orderDetailVO.setItemserialnumber(rs.getInt("item_serial_number"));
				orderDetailVO.setOrderdetailprice(rs.getInt("order_detail_price"));
				orderDetailVO.setOrderdetailquantity(rs.getInt("order_detail_quantity"));
				orderDetailVO.setRefundreason(rs.getString("refund_reason"));
				orderDetailVO.setOrderdetailstatus(rs.getInt("order_detail_status"));

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
	
	// 同時新增訂單主檔及訂單明細
	@Override
	public Integer insertWithOrderDetail(OrderMainFileVO orderMainFileVO , List<OrderDetailVO> list) {

		Connection con = null;
		PreparedStatement pstmt = null;
		Integer newOrderserialnumber = null;

		try {
			con = ds.getConnection();	
			// 1●設定於 pstm.executeUpdate()之前
    		con.setAutoCommit(false);
			
    		// 先新增訂單主檔
			String cols[] = {"1"};
			pstmt = con.prepareStatement(INSERT_STMT , cols);			

			pstmt.setInt(1, orderMainFileVO.getMemberserialnumber());
			pstmt.setInt(2, orderMainFileVO.getSellerserialnumber());
			pstmt.setString(3, orderMainFileVO.getOrderstatusnumber());
			pstmt.setInt(4, orderMainFileVO.getCouponserialnumber());
			pstmt.setInt(5, orderMainFileVO.getSellerevaluationstar());
			pstmt.setInt(6, orderMainFileVO.getMemberevaluationstar());
			pstmt.setString(7, orderMainFileVO.getSellerevaluationdescription());
			pstmt.setString(8, orderMainFileVO.getMemberevaluationdescription());
//			pstmt.setBytes(9, orderMainFileVO.getMemberevaluationphoto());
			pstmt.setInt(9, orderMainFileVO.getOrderamount());
			pstmt.setDate(10, orderMainFileVO.getOrderdate());

Statement stmt=	con.createStatement();
stmt.executeUpdate("set auto_increment_offset=1;");    //自增主鍵-初始值
stmt.executeUpdate("set auto_increment_increment=1;"); //自增主鍵-遞增
			pstmt.executeUpdate();
			//掘取對應的自增主鍵值
			ResultSet rs = pstmt.getGeneratedKeys();
			if (rs.next()) {
				newOrderserialnumber = rs.getInt(1);
				System.out.println("自增主鍵值= " + newOrderserialnumber +"第一筆訂單");
			} else {
				System.out.println("未取得自增主鍵值");
			}
			rs.close();
			// 再同時新增訂單明細
			OrderDetailDAO dao = new OrderDetailDAO();
			System.out.println("list.size()-A="+list.size());
			for (OrderDetailVO orderDetailVO : list) {
				orderDetailVO.setOrderserialnumber(new Integer(newOrderserialnumber)) ;
				dao.insert2(orderDetailVO,con);
			}

			// 2●設定於 pstm.executeUpdate()之後
			con.commit();
			con.setAutoCommit(true);
//			System.out.println("list.size()-B="+list.size());
//			System.out.println("新增訂單流水編號" + newOrderserialnumber + "時,共有訂單明細" + list.size()
//					+ "筆同時被新增");
//			
		} catch (SQLException se) {
			if (con != null) {
				try {
					// 3●設定於當有exception發生時之catch區塊內
					System.err.print("Transaction is being ");
					System.err.println("rolled back-由-dept");
					con.rollback();
				} catch (SQLException excep) {
					throw new RuntimeException("rollback error occured. "
							+ excep.getMessage());
				}
			}
			throw new RuntimeException("A database error occured. "
					+ se.getMessage());
			// Clean up JDBC resources
		} finally {
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
		return newOrderserialnumber;
	}
	
	
	@Override
	public void insert(OrderMainFileVO orderMainFileVO) {

		Connection con = null;
		PreparedStatement pstmt = null;

		try {

			con = ds.getConnection();
			pstmt = con.prepareStatement(INSERT_STMT);

			pstmt.setInt(1, orderMainFileVO.getMemberserialnumber());
			pstmt.setInt(2, orderMainFileVO.getSellerserialnumber());
			pstmt.setString(3, orderMainFileVO.getOrderstatusnumber());
			pstmt.setInt(4, orderMainFileVO.getCouponserialnumber());
			pstmt.setInt(5, orderMainFileVO.getSellerevaluationstar());
			pstmt.setInt(6, orderMainFileVO.getMemberevaluationstar());
			pstmt.setString(7, orderMainFileVO.getSellerevaluationdescription());
			pstmt.setString(8, orderMainFileVO.getMemberevaluationdescription());
//			pstmt.setBytes(9, orderMainFileVO.getMemberevaluationphoto());
			pstmt.setInt(9, orderMainFileVO.getOrderamount());
			pstmt.setDate(10, orderMainFileVO.getOrderdate());

			pstmt.executeUpdate();

			// Handle any SQL errors
		} catch (SQLException se) {
			throw new RuntimeException("A database error occured. "
					+ se.getMessage());
			// Clean up JDBC resources
		} finally {
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

	}

	@Override
	public void update(OrderMainFileVO orderMainFileVO) {

		Connection con = null;
		PreparedStatement pstmt = null;

		try {

			con = ds.getConnection();
			pstmt = con.prepareStatement(UPDATE);
			
			pstmt.setInt(1, orderMainFileVO.getMemberserialnumber());
			pstmt.setInt(2, orderMainFileVO.getSellerserialnumber());
			pstmt.setString(3, orderMainFileVO.getOrderstatusnumber());
			pstmt.setInt(4, orderMainFileVO.getCouponserialnumber());
			pstmt.setInt(5, orderMainFileVO.getSellerevaluationstar());
			pstmt.setInt(6, orderMainFileVO.getMemberevaluationstar());
			pstmt.setString(7, orderMainFileVO.getSellerevaluationdescription());
			pstmt.setString(8, orderMainFileVO.getMemberevaluationdescription());
//			pstmt.setBytes(9, orderMainFileVO.getMemberevaluationphoto());
			pstmt.setInt(9, orderMainFileVO.getOrderamount());
			pstmt.setDate(10, orderMainFileVO.getOrderdate());
			pstmt.setInt(11, orderMainFileVO.getOrderserialnumber());

			pstmt.executeUpdate();

			// Handle any driver errors
		} catch (SQLException se) {
			throw new RuntimeException("A database error occured. "
					+ se.getMessage());
			// Clean up JDBC resources
		} finally {
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

	}

	@Override
	public void delete(Integer orderserialnumber) {

		Connection con = null;
		PreparedStatement pstmt = null;

		try {

			con = ds.getConnection();
			pstmt = con.prepareStatement(DELETE);

			pstmt.setInt(1, orderserialnumber);

			pstmt.executeUpdate();

			// Handle any driver errors
		} catch (SQLException se) {
			throw new RuntimeException("A database error occured. "
					+ se.getMessage());
			// Clean up JDBC resources
		} finally {
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

	}

	@Override
	public OrderMainFileVO findByOrderPK(Integer orderserialnumber) {

		OrderMainFileVO orderMainFileVO = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {

			con = ds.getConnection();
			pstmt = con.prepareStatement(GET_ONE_STMT);

			pstmt.setInt(1, orderserialnumber);

			rs = pstmt.executeQuery();

			while (rs.next()) {
				// orderMainFileVO 也稱為 Domain objects
				orderMainFileVO = new OrderMainFileVO();
				orderMainFileVO.setOrderserialnumber(rs.getInt("order_serial_number"));
				orderMainFileVO.setMemberserialnumber(rs.getInt("member_serial_number"));
				orderMainFileVO.setSellerserialnumber(rs.getInt("seller_serial_number"));
				orderMainFileVO.setOrderstatusnumber(rs.getString("order_status_number"));
				orderMainFileVO.setCouponserialnumber(rs.getInt("coupon_serial_number"));
				orderMainFileVO.setSellerevaluationstar(rs.getInt("seller_evaluation_star"));
				orderMainFileVO.setMemberevaluationstar(rs.getInt("member_evaluation_star"));
				orderMainFileVO.setSellerevaluationdescription(rs.getString("seller_evaluation_description"));
				orderMainFileVO.setMemberevaluationdescription(rs.getString("member_evaluation_description"));
//				orderMainFileVO.setMemberevaluationphoto(rs.getBytes("member_evaluation_photo"));
				orderMainFileVO.setOrderamount(rs.getInt("order_amount"));
				orderMainFileVO.setOrderdate(rs.getDate("order_date"));
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
		return orderMainFileVO;
	}

	@Override
	public List<OrderMainFileVO> getAll() {
		List<OrderMainFileVO> list = new ArrayList<OrderMainFileVO>();
		OrderMainFileVO orderMainFileVO = null;

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {

			con = ds.getConnection();
			pstmt = con.prepareStatement(GET_ALL_STMT);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				// orderMainFileVO 也稱為 Domain objects
				orderMainFileVO = new OrderMainFileVO();
				orderMainFileVO.setOrderserialnumber(rs.getInt("order_serial_number"));
				orderMainFileVO.setMemberserialnumber(rs.getInt("member_serial_number"));
				orderMainFileVO.setSellerserialnumber(rs.getInt("seller_serial_number"));
				orderMainFileVO.setOrderstatusnumber(rs.getString("order_status_number"));
				orderMainFileVO.setCouponserialnumber(rs.getInt("coupon_serial_number"));
				orderMainFileVO.setSellerevaluationstar(rs.getInt("seller_evaluation_star"));
				orderMainFileVO.setMemberevaluationstar(rs.getInt("member_evaluation_star"));
				orderMainFileVO.setSellerevaluationdescription(rs.getString("seller_evaluation_description"));
				orderMainFileVO.setMemberevaluationdescription(rs.getString("member_evaluation_description"));
//				orderMainFileVO.setMemberevaluationphoto(rs.getBytes("member_evaluation_photo"));
				orderMainFileVO.setOrderamount(rs.getInt("order_amount"));
				orderMainFileVO.setOrderdate(rs.getDate("order_date"));
				list.add(orderMainFileVO); // Store the row in the list
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