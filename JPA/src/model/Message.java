package model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the message database table.
 * 
 */
@Entity
@NamedQuery(name="Message.findAll", query="SELECT m FROM Message m")
public class Message implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int idMessage;

	private String content;

	//bi-directional many-to-one association to Serviceuser
	@ManyToOne
	@JoinColumn(name="idUserSender")
	private Serviceuser serviceuser1;

	//bi-directional many-to-one association to Serviceuser
	@ManyToOne
	@JoinColumn(name="idUserReceiver")
	private Serviceuser serviceuser2;

	public Message() {
	}

	public int getIdMessage() {
		return this.idMessage;
	}

	public void setIdMessage(int idMessage) {
		this.idMessage = idMessage;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Serviceuser getServiceuser1() {
		return this.serviceuser1;
	}

	public void setServiceuser1(Serviceuser serviceuser1) {
		this.serviceuser1 = serviceuser1;
	}

	public Serviceuser getServiceuser2() {
		return this.serviceuser2;
	}

	public void setServiceuser2(Serviceuser serviceuser2) {
		this.serviceuser2 = serviceuser2;
	}

}