package business;

import beans.Staff;
import database.StaffDAO;

import java.util.List;

public class StaffBO {

	public static List<Staff> getStaff() {
		return StaffDAO.getStaff();
	}

	public static void insertStaff(Staff staff) {
		StaffDAO.insertStaff(staff);
	}
}
