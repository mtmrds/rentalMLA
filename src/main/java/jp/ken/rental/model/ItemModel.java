package jp.ken.rental.model;


public class ItemModel {
	  private String itemNo;//Integerから変更
	  private String title;
	  private String type;
	  private String category;
	  private Integer quantity;
	  private String image;
	  private int cNo;
	  private int tNo;

	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
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
	public int getcNo() {
		return cNo;
	}
	public int gettNo() {
		return tNo;
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
	public void settNo(int tNo) {
		this.tNo = tNo;
	}
 }
