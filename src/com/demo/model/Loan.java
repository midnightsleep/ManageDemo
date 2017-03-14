package com.demo.model;

/**
 * 
 * @ClassName:     Loan.java
 * @Description:   TODO() 
 * 
 * @author         Administrator
 * @version        V1.0  
 * @Date           2017-3-13 下午8:37:08
 */
public class Loan {
	private String acountId;
	private String name;
	private String idCard;
	private String phone;
	private int loanMoney;
	private int loanType;
	private int isMarried;
	private String matePhone;
	private String photo;
	private String linkman;
	private int loanTime;
	private int status;
	private double hasReplay;
	private double notReplay;

	/**
	 * 
	 * @Title:        Loan
	 * @Description:    TODO(构造方法)
	 * @param:    
	 * @throws
	 */
	public Loan() {
	}

	/**
	 * 
	 * @Title:        Loan
	 * @Description:    TODO(构造方法)
	 * @param:    @param accountId
	 * @param:    @param name
	 * @param:    @param idCard
	 * @param:    @param phone
	 * @param:    @param loanMoney
	 * @param:    @param loanType
	 * @param:    @param isMarried
	 * @param:    @param matePhone
	 * @param:    @param photo
	 * @param:    @param linkman
	 * @param:    @param loanTime
	 * @param:    @param status
	 * @param:    @param hasReplay
	 * @param:    @param notReplay
	 * @throws
	 */
	public Loan(String acountId, String name, String idCard, String phone,
			int loanMoney, int loanType, int isMarried, String matePhone,
			String photo, String linkman, int loanTime, int status,
			double hasReplay, double notReplay) {
		this.acountId = acountId;
		this.name = name;
		this.idCard = idCard;
		this.phone = phone;
		this.loanMoney = loanMoney;
		this.loanType = loanType;
		this.isMarried = isMarried;
		this.matePhone = matePhone;
		this.photo = photo;
		this.linkman = linkman;
		this.loanTime = loanTime;
		this.status = status;
		this.hasReplay = hasReplay;
		this.notReplay = notReplay;
	}

	public String getAccountId() {
		return acountId;
	}

	public void setAccountId(String acountId) {
		this.acountId = acountId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getIdCard() {
		return idCard;
	}

	public void setIdCard(String idCard) {
		this.idCard = idCard;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public int getLoanMoney() {
		return loanMoney;
	}

	public void setLoadMoney(int loanMoney) {
		this.loanMoney = loanMoney;
	}

	public int getLoanType() {
		return loanType;
	}

	public void setLoanType(int loanType) {
		this.loanType = loanType;
	}

	public int getIsMarried() {
		return isMarried;
	}

	public void setIsMarried(int isMarried) {
		this.isMarried = isMarried;
	}

	public String getMatePhone() {
		return matePhone;
	}

	public void setMatePhone(String matePhone) {
		this.matePhone = matePhone;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public String getLinkman() {
		return linkman;
	}

	public void setLinkman(String linkman) {
		this.linkman = linkman;
	}

	public int getLoanTime() {
		return loanTime;
	}

	public void setLoanTime(int loanTime) {
		this.loanTime = loanTime;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public double getHasReplay() {
		return hasReplay;
	}

	public void setHasReplay(double hasReplay) {
		this.hasReplay = hasReplay;
	}

	public double getNotReplay() {
		return notReplay;
	}

	public void setNotReplay(double notReplay) {
		this.notReplay = notReplay;
	}

}
