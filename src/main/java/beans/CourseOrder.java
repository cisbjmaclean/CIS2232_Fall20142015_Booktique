package beans;

import java.sql.Date;

public class CourseOrder {
	private int amount;
	private int courseId;
	private int programId;
	private long isbn;

	private Date date;
	private double shippingFee;
	private double cost;
	private double retailCost;
	private int staffId;
	private double handlingFee;

	private String notes;

	public CourseOrder() {

	}

	public CourseOrder handlingFee(double fee) {
		this.handlingFee = fee;
		return this;
	}

	public CourseOrder staff(int id) {
		this.staffId = id;
		return this;
	}

	public CourseOrder retailCost(double cost) {
		this.retailCost = cost;
		return this;
	}

	public CourseOrder cost(double cost) {
		this.cost = cost;
		return this;
	}

	public CourseOrder shippingFee(double fee) {
		this.shippingFee = fee;
		return this;
	}

	public CourseOrder date(Date date) {
		this.date = date;
		return this;
	}

	public CourseOrder amount(int amount) {
		this.amount = amount;
		return this;
	}

	public CourseOrder id(int courseId) {
		this.courseId = courseId;
		return this;
	}

	public CourseOrder program(int id) {
		this.programId = id;
		return this;
	}

	public CourseOrder isbn(long isbn) {
		this.isbn = isbn;
		return this;
	}

	public CourseOrder notes(String notes) {
		this.notes = notes;
		return this;
	}

	public String getNotes() {
		return notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public int getCourseId() {
		return courseId;
	}

	public void setCourseId(int courseId) {
		this.courseId = courseId;
	}

	public int getProgramId() {
		return programId;
	}

	public void setProgramId(int programId) {
		this.programId = programId;
	}

	public long getIsbn() {
		return isbn;
	}

	public void setIsbn(long isbn) {
		this.isbn = isbn;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public double getShippingFee() {
		return shippingFee;
	}

	public void setShippingFee(double shippingFee) {
		this.shippingFee = shippingFee;
	}

	public double getCost() {
		return cost;
	}

	public void setCost(double cost) {
		this.cost = cost;
	}

	public double getRetailCost() {
		return retailCost;
	}

	public void setRetailCost(double retailCost) {
		this.retailCost = retailCost;
	}

	public int getStaffId() {
		return staffId;
	}

	public void setStaffId(int staffId) {
		this.staffId = staffId;
	}

	public double getHandlingFee() {
		return handlingFee;
	}

	public void setHandlingFee(double handlingFee) {
		this.handlingFee = handlingFee;
	}
}
