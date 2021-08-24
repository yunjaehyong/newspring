package co.kr.swempire.yjh.web;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import co.kr.swempire.yjh.service.YjhService;
import co.kr.swempire.yjh.vo.UploadVO;

@Controller
@RequestMapping("/common")
public class CommonController{
	
	private static final String FILE_SERVER_PATH = "D:/upload";
	
	@Autowired
	YjhService yjhService;

	@RequestMapping(value="/upload") 
	public String uploadfile(UploadVO vo) throws IOException { 
			// 파일 업로드 처리
			String filename=null;
			MultipartFile uploadFile = vo.getUploadFile();
			if (!uploadFile.isEmpty()) {
				String originalFileName = uploadFile.getOriginalFilename();
				String ext = FilenameUtils.getExtension(originalFileName);	//확장자 구하기
				UUID uuid = UUID.randomUUID();	//UUID 구하기
				filename=uuid+"."+ext;
				uploadFile.transferTo(new File("D:\\upload\\" + filename));
			}
			vo.setFile_name(filename);
			yjhService.uploadFile(vo);
			
			System.out.println(vo);
			
			return "upload"; 
	}
	


	
}
