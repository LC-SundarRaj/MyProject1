package in.nit.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="part_tab")
public class Part {

	@Id
	@GeneratedValue
	@Column(name="pid")
	private Integer prtId;
	private String prtCode;
	
	private double prtWdth;
	private double prtLngth;
	private double prtHgt;
	
	private double baseCost;
	private String curr;
	
	@ManyToOne
	@JoinColumn(name="uomIdFk")
	private Uom uomOb; //has-a
	
	private String note;

	public Part() {
		super();
	}

	//setters & Getters
	public Integer getPrtId() {
		return prtId;
	}


	public void setPrtId(Integer prtId) {
		this.prtId = prtId;
	}

	public String getPrtCode() {
		return prtCode;
	}

	public void setPrtCode(String prtCode) {
		this.prtCode = prtCode;
	}

	public double getPrtWdth() {
		return prtWdth;
	}

	public void setPrtWdth(double prtWdth) {
		this.prtWdth = prtWdth;
	}

	public double getPrtLngth() {
		return prtLngth;
	}

	public void setPrtLngth(double prtLngth) {
		this.prtLngth = prtLngth;
	}

	public double getPrtHgt() {
		return prtHgt;
	}

	public void setPrtHgt(double prtHgt) {
		this.prtHgt = prtHgt;
	}

	public double getBaseCost() {
		return baseCost;
	}

	public void setBaseCost(double baseCost) {
		this.baseCost = baseCost;
	}

	public String getCurr() {
		return curr;
	}

	public void setCurr(String curr) {
		this.curr = curr;
	}

	public Uom getUomOb() {
		return uomOb;
	}

	public void setUomOb(Uom uomOb) {
		this.uomOb = uomOb;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}
	
	
	@Override
	public String toString() {
		return "Part [prtId=" + prtId + ", prtCode=" + prtCode + ", prtWdth=" + prtWdth + ", prtLngth=" + prtLngth
				+ ", prtHgt=" + prtHgt + ", baseCost=" + baseCost + ", curr=" + curr + ", uomOb=" + uomOb + ", note="
				+ note + "]";
	}
	
}
