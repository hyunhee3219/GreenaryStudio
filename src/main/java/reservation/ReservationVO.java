package reservation;


public class ReservationVO {
	private String re_date;
	private String re_room;
	private String re_time;
	private String user_id;
	private int re_num;
	
	public ReservationVO() {
		System.out.println("ReservationVO 생성자 호출");
	}

	
	/**
	 * @return the re_date
	 */
	public String getRe_date() {
		return re_date;
	}


	/**
	 * @param re_date the re_date to set
	 */
	public void setRe_date(String re_date) {
		this.re_date = re_date;
	}


	/**
	 * @return the re_room
	 */
	public String getRe_room() {
		return re_room;
	}

	/**
	 * @param re_room the re_room to set
	 */
	public void setRe_room(String re_room) {
		this.re_room = re_room;
	}

	/**
	 * @return the re_time
	 */
	public String getRe_time() {
		return re_time;
	}

	/**
	 * @param re_time the re_time to set
	 */
	public void setRe_time(String re_time) {
		this.re_time = re_time;
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
	 * @return the re_num
	 */
	public int getRe_num() {
		return re_num;
	}

	/**
	 * @param re_num the re_num to set
	 */
	public void setRe_num(int re_num) {
		this.re_num = re_num;
	}

	
}
