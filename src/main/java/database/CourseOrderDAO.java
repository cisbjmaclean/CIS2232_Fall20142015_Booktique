package database;

import beans.CourseOrder;
import util.ConnectionUtils;
import util.DbUtils;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class CourseOrderDAO {
	private static final String RETRIEVE_COURSE_ORDERS = "SELECT * FROM course_order";

	private static final String INSERT_COURSE_ORDER = "INSERT INTO course_order (course_id, course_order_qty, course_order_notes, course_ordered_date_ordered," +
			"program_account_id, book_isbn, course_order_shipping_fee, course_order_cost, course_order_retail, staff_id, course_order_handling_fee " +
			") VALUES (?,?,?,?,?,?,?,?,?,?,?)";

	public static void insertOrder(CourseOrder order) throws SQLException {
		Connection conn = null;
		try {
			conn = ConnectionUtils.getConnection();
			PreparedStatement statement = conn.prepareStatement(INSERT_COURSE_ORDER);

			statement.setInt(1,order.getCourseId());
			statement.setInt(2,order.getAmount());
			statement.setString(3, order.getNotes());
			statement.setDate(4, new Date(System.currentTimeMillis()));
			statement.setInt(5, order.getProgramId());
			statement.setLong(6, order.getIsbn());
			statement.setDouble(7, order.getShippingFee());
			statement.setDouble(8, order.getCost());
			statement.setDouble(9, order.getRetailCost());
			statement.setInt(10, order.getStaffId());
			statement.setDouble(11,order.getHandlingFee());

			statement.executeUpdate();

			System.out.println(order.toString());
		} catch (SQLException e) {
			throw e;

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DbUtils.close(conn);
		}
	}

}
