package in.nit.model;

import java.util.List;

import javax.persistence.CollectionTable;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OrderColumn;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="order_tab")
public class Order {

	@Id
	@GeneratedValue(generator = "oGen")
	@GenericGenerator(name="oGen", strategy = "increment")
	@Column(name="oid")
	private Integer orderId;
	@Column(name="oMode")
	private String orderMode;
	@Column(name="oCode")
	private String orderCode;
	@Column(name="oMethod")
	private String orderMethod;
	
	@ElementCollection(fetch = FetchType.EAGER)
	@CollectionTable(name = "oacpt_tab", joinColumns = @JoinColumn(name="oid"))
	@OrderColumn(name = "pos")
	@Column(name="oAccept")
	private List<String> orderAccept;
	@Column(name="oDesc")
	private String orderDesc;

	//0-param constructor
	public Order() {
		super();
	}

	//1-param constructor
	public Order(Integer orderId) {
		super();
		this.orderId = orderId;
	}



	public Integer getOrderId() {
		return orderId;
	}

	public void setOrderId(Integer orderId) {
		this.orderId = orderId;
	}

	public String getOrderMode() {
		return orderMode;
	}

	public void setOrderMode(String orderMode) {
		this.orderMode = orderMode;
	}

	public String getOrderCode() {
		return orderCode;
	}

	public void setOrderCode(String orderCode) {
		this.orderCode = orderCode;
	}

	public String getOrderMethod() {
		return orderMethod;
	}

	public void setOrderMethod(String orderMethod) {
		this.orderMethod = orderMethod;
	}

	public List<String> getOrderAccept() {
		return orderAccept;
	}

	public void setOrderAccept(List<String> orderAccept) {
		this.orderAccept = orderAccept;
	}

	public String getOrderDesc() {
		return orderDesc;
	}

	public void setOrderDesc(String orderDesc) {
		this.orderDesc = orderDesc;
	}

	@Override
	public String toString() {
		return "Order [orderId=" + orderId + ", orderMode=" + orderMode + ", orderCode=" + orderCode + ", orderMethod="
				+ orderMethod + ", orderAccept=" + orderAccept + ", orderDesc=" + orderDesc + "]";
	}
	

	
	
	



}
