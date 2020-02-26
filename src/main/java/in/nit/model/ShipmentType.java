package in.nit.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="ship_tab")
public class ShipmentType {

	@Id
	@GeneratedValue(generator = "sGen")
	@GenericGenerator(name="sGen", strategy = "increment")
	@Column(name="sid")
	private Integer shipId;
	@Column(name="smode")
	private String shipMode;
	@Column(name="scode")
	private String shipCode;
	@Column(name="enabs")
	private String enabShip;
	@Column(name="sgrade")
	private String shipGrade;
	@Column(name="sdesc")
	private String shipDesc;
	
	public ShipmentType() {
		super();
	}

	//One-param Constructor
	public ShipmentType(Integer id) {
		super();
		this.shipId = id;
	}

	

	public Integer getShipId() {
		return shipId;
	}

	public void setShipId(Integer shipId) {
		this.shipId = shipId;
	}

	public String getShipMode() {
		return shipMode;
	}

	public void setShipMode(String shipMode) {
		this.shipMode = shipMode;
	}

	public String getShipCode() {
		return shipCode;
	}

	public void setShipCode(String shipCode) {
		this.shipCode = shipCode;
	}

	public String getEnabShip() {
		return enabShip;
	}

	public void setEnabShip(String enabShip) {
		this.enabShip = enabShip;
	}

	public String getShipGrade() {
		return shipGrade;
	}

	public void setShipGrade(String shipGrade) {
		this.shipGrade = shipGrade;
	}

	public String getShipDesc() {
		return shipDesc;
	}

	public void setShipDesc(String shipDesc) {
		this.shipDesc = shipDesc;
	}

	@Override
	public String toString() {
		return "ShipmentType [shipId=" + shipId + ", shipMode=" + shipMode + ", shipCode=" + shipCode + ", enabShip=" + enabShip
				+ ", shipGrade=" + shipGrade + ", shipDesc=" + shipDesc + "]";
	}
	
	
}
