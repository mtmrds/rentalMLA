package jp.ken.rental.model;


public class ItemModel {
	  private String itemNo;//Integerから変更
	  private String title;
	  private String type;
	  private String category;
	  private Integer quantity;
	  private int cNo;

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
	public int getcNo() {
		return cNo;
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
	public void setcNo(int cNo) {
		this.cNo = cNo;
	}
 }
