import beans.CourseOrder;
import com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException;
import database.CourseOrderDAO;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import util.ConnectionUtils;
import util.DbUtils;

import java.sql.Connection;
import java.sql.Date;
import java.sql.SQLException;

import static org.junit.Assert.*;

public class CourseDAOTest {

	private Connection connection = null;

	@Before
	public void setup() {
		try {
			connection = ConnectionUtils.getDBConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}

		assertNotNull(connection);
	}

	@Test
	public void insertCourseTest() {
		CourseOrder order = new CourseOrder()
				.amount(1)
				.cost(505.5)
				.date(new Date(System.currentTimeMillis()))
				.handlingFee(5.5)
				.id(99999)
				.staff(420)
				.isbn(571676696)
				.notes("Such a good read!!")
				.program(49374)
				.retailCost(1205.50)
				.shippingFee(112.1);

		try {
			CourseOrderDAO.insertOrder(order);
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	@After
	public void cleanup() {
		DbUtils.close(connection);
	}

}
