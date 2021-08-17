package co.kr.swempire.yjh.vo;

import java.util.Date;

public class YjhVO {

	int rate;
	String id;
	String pw;
	String user_name;
	String title;
	String board_context;
	Date to_date;
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public int getRate() {
		return rate;
	}
	public void setRate(int rate) {
		this.rate = rate;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getBoard_context() {
		return board_context;
	}
	public void setBoard_context(String board_context) {
		this.board_context = board_context;
	}
	public Date getTo_date() {
		return to_date;
	}
	public void setTo_date(Date to_date) {
		this.to_date = to_date;
	}
	@Override
	public String toString() {
		return "YjhVO [rate=" + rate + ", id=" + id + ", pw=" + pw + ", user_name=" + user_name + ", title=" + title
				+ ", board_context=" + board_context + ", to_date=" + to_date + "]";
	}
	
}
