package jp.ken.rental.model;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;

public class ItemModel {
	private String itemNo;
	private String title;
	private String type;
	private String category;
	private Integer quantity;
	private String image;
	private int historyNo;
	private int orderNo;
	private int orderItem;
	private Timestamp orderDate;
	//顧客注文用
	private int ordersItem;
	private Timestamp ordersDate;
	private int rentalNo;

	private static final SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");

	public static java.sql.Date parseDate(String stringDate){
		try {
			java.util.Date date = dateFormat.parse(stringDate);
			long time = date.getTime();
			return new java.sql.Date(time);
		  	}catch(ParseException e) {
		  		e.printStackTrace();
		  		return null;
		  	}
	}

	public String getItemNo() {
		return itemNo;
	}

	public String getTitle() {
		return title;
	}

	public String getType() {
		return type;
	}

	public String getCategory() {
		return category;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public String getImage() {
		return image;
	}

	public int getHistoryNo() {
		return historyNo;
	}

	public int getOrderNo() {
		return orderNo;
	}

	public int getOrderItem() {
		return orderItem;
	}

	public Timestamp getOrderDate() {
		return orderDate;
	}

	public int getOrdersItem() {
		return ordersItem;
	}

	public Timestamp getOrdersDate() {
		return ordersDate;
	}

	public int getRentalNo() {
		return rentalNo;
	}

	public void setItemNo(String itemNo) {
		this.itemNo = itemNo;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public void setType(String type) {
		this.type = type;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public void setHistoryNo(int historyNo) {
		this.historyNo = historyNo;
	}

	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}

	public void setOrderItem(int orderItem) {
		this.orderItem = orderItem;
	}

	public void setOrderDate(Timestamp orderDate) {
		this.orderDate = orderDate;
	}

	public void setOrdersItem(int ordersItem) {
		this.ordersItem = ordersItem;
	}

	public void setOrdersDate(Timestamp ordersDate) {
		this.ordersDate = ordersDate;
	}

	public void setRentalNo(int rentalNo) {
		this.rentalNo = rentalNo;
	}
}
