package co.kr.swempire.yjh.vo;

import org.springframework.web.multipart.MultipartFile;

public class UploadVO {

	int inx;
	String file_name;
	MultipartFile uploadFile;
	public int getInx() {
		return inx;
	}
	public void setInx(int inx) {
		this.inx = inx;
	}
	public String getFile_name() {
		return file_name;
	}
	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}
	public MultipartFile getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}
	@Override
	public String toString() {
		return "UploadVO [inx=" + inx + ", file_name=" + file_name + ", uploadFile=" + uploadFile + "]";
	}

	
	
	
	
	
	
}
