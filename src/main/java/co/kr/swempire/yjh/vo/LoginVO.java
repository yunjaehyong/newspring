package co.kr.swempire.yjh.vo;

public class LoginVO {

	int loin;
	String login_id;
	String login_pw;
	@Override
	public String toString() {
		return "loginVO [loin=" + loin + ", login_id=" + login_id + ", login_pw=" + login_pw + "]";
	}
	public int getloin() {
		return loin;
	}
	public void setloin(int loin) {
		this.loin = loin;
	}
	public String getlogin_Id() {
		return login_id;
	}
	public void setId(String login_id) {
		this.login_id = login_id;
	}
	public String getlogin_pw() {
		return login_pw;
	}
	public void setlogin_pw(String login_pw) {
		this.login_pw = login_pw;
	}
}
