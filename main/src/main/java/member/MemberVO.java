package member;

import java.sql.Date;

public class MemberVO {
	private String user_id;
	private String user_pwd;
	private String user_name;
	private String gender;
	private String birthYear;
	private String birthMonth;
	private String birthDay;
	private String calendar; 
	private String hp1; private String hp2; private String hp3; private String smsyn;
	private String mail_ID; private String mail_Domain; private String emailyn;
	private String zipcode; private String roadAddr; private String jibunAddr; private String namujiAddr;
	private Date joinDate;
	
	
	public MemberVO() {
		System.out.println("MemberVO 생성자 호출");
	}


	/**
	 * @return the user_id
	 */
	public String getUser_id() {
		return user_id;
	}


	/**
	 * @param user_id the user_id to set
	 */
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}


	/**
	 * @return the user_pwd
	 */
	public String getUser_pwd() {
		return user_pwd;
	}


	/**
	 * @param user_pwd the user_pwd to set
	 */
	public void setUser_pwd(String user_pwd) {
		this.user_pwd = user_pwd;
	}





	/**
	 * @return the user_name
	 */
	public String getUser_name() {
		return user_name;
	}


	/**
	 * @param user_name the user_name to set
	 */
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}


	/**
	 * @return the gender
	 */
	public String getGender() {
		return gender;
	}


	/**
	 * @param gender the gender to set
	 */
	public void setGender(String gender) {
		this.gender = gender;
	}


	/**
	 * @return the birthYear
	 */
	public String getBirthYear() {
		return birthYear;
	}


	/**
	 * @param birthYear the birthYear to set
	 */
	public void setBirthYear(String birthYear) {
		this.birthYear = birthYear;
	}


	/**
	 * @return the birthMonth
	 */
	public String getBirthMonth() {
		return birthMonth;
	}


	/**
	 * @param birthMonth the birthMonth to set
	 */
	public void setBirthMonth(String birthMonth) {
		this.birthMonth = birthMonth;
	}


	/**
	 * @return the birthDay
	 */
	public String getBirthDay() {
		return birthDay;
	}


	/**
	 * @param birthDay the birthDay to set
	 */
	public void setBirthDay(String birthDay) {
		this.birthDay = birthDay;
	}


	/**
	 * @return the calendar
	 */
	public String getCalendar() {
		return calendar;
	}


	/**
	 * @param calendar the calendar to set
	 */
	public void setCalendar(String calendar) {
		this.calendar = calendar;
	}


	/**
	 * @return the hp1
	 */
	public String getHp1() {
		return hp1;
	}


	/**
	 * @param hp1 the hp1 to set
	 */
	public void setHp1(String hp1) {
		this.hp1 = hp1;
	}


	/**
	 * @return the hp2
	 */
	public String getHp2() {
		return hp2;
	}


	/**
	 * @param hp2 the hp2 to set
	 */
	public void setHp2(String hp2) {
		this.hp2 = hp2;
	}


	/**
	 * @return the hp3
	 */
	public String getHp3() {
		return hp3;
	}


	/**
	 * @param hp3 the hp3 to set
	 */
	public void setHp3(String hp3) {
		this.hp3 = hp3;
	}


	/**
	 * @return the smsyn
	 */
	public String getSmsyn() {
		return smsyn;
	}


	/**
	 * @param smsyn the smsyn to set
	 */
	public void setSmsyn(String smsyn) {
		this.smsyn = smsyn;
	}


	/**
	 * @return the mail_ID
	 */
	public String getMail_ID() {
		return mail_ID;
	}


	/**
	 * @param mail_ID the mail_ID to set
	 */
	public void setMail_ID(String mail_ID) {
		this.mail_ID = mail_ID;
	}


	/**
	 * @return the mail_Domain
	 */
	public String getMail_Domain() {
		return mail_Domain;
	}


	/**
	 * @param mail_Domain the mail_Domain to set
	 */
	public void setMail_Domain(String mail_Domain) {
		this.mail_Domain = mail_Domain;
	}


	/**
	 * @return the emailyn
	 */
	public String getEmailyn() {
		return emailyn;
	}


	/**
	 * @param emailyn the emailyn to set
	 */
	public void setEmailyn(String emailyn) {
		this.emailyn = emailyn;
	}


	/**
	 * @return the zipcode
	 */
	public String getZipcode() {
		return zipcode;
	}


	/**
	 * @param zipcode the zipcode to set
	 */
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}


	/**
	 * @return the roadAddr
	 */
	public String getRoadAddr() {
		return roadAddr;
	}


	/**
	 * @param roadAddr the roadAddr to set
	 */
	public void setRoadAddr(String roadAddr) {
		this.roadAddr = roadAddr;
	}


	/**
	 * @return the jibunAddr
	 */
	public String getJibunAddr() {
		return jibunAddr;
	}


	/**
	 * @param jibunAddr the jibunAddr to set
	 */
	public void setJibunAddr(String jibunAddr) {
		this.jibunAddr = jibunAddr;
	}


	/**
	 * @return the namujiAddr
	 */
	public String getNamujiAddr() {
		return namujiAddr;
	}


	/**
	 * @param namujiAddr the namujiAddr to set
	 */
	public void setNamujiAddr(String namujiAddr) {
		this.namujiAddr = namujiAddr;
	}


	/**
	 * @return the joinDate
	 */
	public Date getJoinDate() {
		return joinDate;
	}


	/**
	 * @param joinDate the joinDate to set
	 */
	public void setJoinDate(Date joinDate) {
		this.joinDate = joinDate;
	}


	
	
	
}
