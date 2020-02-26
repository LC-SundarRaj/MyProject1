package in.nit.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="whuser_tab")
public class WhUserType {
	@Id
	@GeneratedValue
	@Column(name="userId")
	private Integer userId;
	@Column(name="userType")	
	private String userType;
	@Column(name="userCode")	
	private String userCode; 
	@Column(name="userFor")	
	private String userFor; 
	@Column(name="userMail")	
	private String userMail; 
	@Column(name="userContact")	
	private String userContact; 
	@Column(name="userIdType")	
	private String userIdType; 
	@Column(name="otherIdType")	
	private String otherIdType; 
	@Column(name="idNum")	
	private String IDNumber;
	
	
	//0-param Const
	public WhUserType() {
		super();
	}

	//setters & getters
	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getUserType() {
		return userType;
	}

	public void setUserType(String userType) {
		this.userType = userType;
	}

	public String getUserCode() {
		return userCode;
	}

	public void setUserCode(String userCode) {
		this.userCode = userCode;
	}

	public String getUserFor() {
		return userFor;
	}

	public void setUserFor(String userFor) {
		this.userFor = userFor;
	}

	public String getUserMail() {
		return userMail;
	}

	public void setUserMail(String userMail) {
		this.userMail = userMail;
	}

	public String getUserContact() {
		return userContact;
	}

	public void setUserContact(String userContact) {
		this.userContact = userContact;
	}

	public String getUserIdType() {
		return userIdType;
	}

	public void setUserIdType(String userIdType) {
		this.userIdType = userIdType;
	}

	public String getOtherIdType() {
		return otherIdType;
	}

	public void setOtherIdType(String otherIdType) {
		this.otherIdType = otherIdType;
	}

	public String getIDNumber() {
		return IDNumber;
	}

	public void setIDNumber(String iDNumber) {
		IDNumber = iDNumber;
	}

	@Override
	public String toString() {
		return "WHUserType [userId=" + userId + ", userType=" + userType + ", userCode=" + userCode + ", userFor="
				+ userFor + ", userMail=" + userMail + ", userContact=" + userContact + ", userIdType=" + userIdType
				+ ", otherIdType=" + otherIdType + ", IDNumber=" + IDNumber + "]";
	} 
	
	
	
}
