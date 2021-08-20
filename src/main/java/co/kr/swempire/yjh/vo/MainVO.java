package co.kr.swempire.yjh.vo;

import java.util.Date;

public class MainVO {

	int num;
	String user_name;
	String title;
	@Override
	public String toString() {
		return "MainVO [num=" + num + ", user_name=" + user_name + ", title=" + title + ", board_context="
				+ board_context + ", ya_date=" + ya_date + "]";
	}
	String board_context;
	Date ya_date;
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
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
	public Date getYa_date() {
		return ya_date;
	}
	public void setYa_date(Date ya_date) {
		this.ya_date = ya_date;
	}
}
