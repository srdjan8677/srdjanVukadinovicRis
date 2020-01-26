package model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the item database table.
 * 
 */
@Entity
@NamedQuery(name="Item.findAll", query="SELECT i FROM Item i")
public class Item implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int idItem;

	private String description;

	private String name;

	//bi-directional many-to-one association to Bid
	@OneToMany(mappedBy="item")
	private List<Bid> bids1;

	//bi-directional many-to-one association to Image
	@OneToMany(mappedBy="item")
	private List<Image> images;

	//bi-directional many-to-many association to Bid
	@ManyToMany
	@JoinTable(
		name="bid_has_item"
		, joinColumns={
			@JoinColumn(name="item_idItem")
			}
		, inverseJoinColumns={
			@JoinColumn(name="bid_idBid")
			}
		)
	private List<Bid> bids2;

	//bi-directional many-to-one association to Category
	@ManyToOne
	private Category category;

	//bi-directional many-to-one association to Serviceuser
	@ManyToOne
	@JoinColumn(name="User_idUser")
	private Serviceuser serviceuser;

	public Item() {
	}

	public int getIdItem() {
		return this.idItem;
	}

	public void setIdItem(int idItem) {
		this.idItem = idItem;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<Bid> getBids1() {
		return this.bids1;
	}

	public void setBids1(List<Bid> bids1) {
		this.bids1 = bids1;
	}

	public Bid addBids1(Bid bids1) {
		getBids1().add(bids1);
		bids1.setItem(this);

		return bids1;
	}

	public Bid removeBids1(Bid bids1) {
		getBids1().remove(bids1);
		bids1.setItem(null);

		return bids1;
	}

	public List<Image> getImages() {
		return this.images;
	}

	public void setImages(List<Image> images) {
		this.images = images;
	}

	public Image addImage(Image image) {
		getImages().add(image);
		image.setItem(this);

		return image;
	}

	public Image removeImage(Image image) {
		getImages().remove(image);
		image.setItem(null);

		return image;
	}

	public List<Bid> getBids2() {
		return this.bids2;
	}

	public void setBids2(List<Bid> bids2) {
		this.bids2 = bids2;
	}

	public Category getCategory() {
		return this.category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public Serviceuser getServiceuser() {
		return this.serviceuser;
	}

	public void setServiceuser(Serviceuser serviceuser) {
		this.serviceuser = serviceuser;
	}

}