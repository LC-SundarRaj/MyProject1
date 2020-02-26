package in.nit.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="uom_tab")
public class Uom {
	@Id
	@GeneratedValue
	@Column(name="uomId")
	private Integer uid;
	@Column(name="utype")
	private String uType;
	@Column(name="umodel")
	private String uModel;
	@Column(name="uDesc")
	private String uDesc;
	
	public Uom() {
		super();
	}

	

	public Uom(Integer uid) {
		super();
		this.uid = uid;
	}



	public Integer getUid() {
		return uid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
	}

	public String getuType() {
		return uType;
	}

	public void setuType(String uType) {
		this.uType = uType;
	}

	public String getuModel() {
		return uModel;
	}

	public void setuModel(String uModel) {
		this.uModel = uModel;
	}

	public String getuDesc() {
		return uDesc;
	}

	public void setuDesc(String uDesc) {
		this.uDesc = uDesc;
	}

	@Override
	public String toString() {
		return "Uom [uid=" + uid + ", uType=" + uType + ", uModel=" + uModel + ", uDesc=" + uDesc + "]";
	}
	
	
	
}
