package baitaplon.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="Product")

public class Product {

	@Id
	@Column(name="proId")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int proId;
	@Column(name="proName")
	private String proName;
	@Column(name="price")
	private float price;
	@Column(name="image")
	private String image;
	@ManyToOne
	@JoinColumn(name = "CateId",referencedColumnName = "CateId")
	private Category cateId ;
	public Product(int proId, String proName, float price, String image, Category cateId) {
		super();
		this.proId = proId;
		this.proName = proName;
		this.price = price;
		this.image = image;
		this.cateId = cateId;
	}
	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getProId() {
		return proId;
	}
	public void setProId(int proId) {
		this.proId = proId;
	}
	public String getProName() {
		return proName;
	}
	public void setProName(String proName) {
		this.proName = proName;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public Category getCategory() {
		return cateId;
	}
	public void setCategoy(Category category) {
		this.cateId = cateId;
	}
	
	
	
}
