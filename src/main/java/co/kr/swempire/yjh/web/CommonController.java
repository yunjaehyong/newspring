package co.kr.swempire.yjh.web;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/common")
public class CommonController{
	
	private static final String FILE_SERVER_PATH = "D:/upload";

	@RequestMapping("/upload")
	public String upload(@RequestParam("uploadFile") MultipartFile file, ModelAndView mv, Model model) throws IllegalStateException, IOException {
		if(!file.getOriginalFilename().isEmpty()) {
			file.transferTo(new File(FILE_SERVER_PATH, file.getOriginalFilename()));
			model.addAttribute("msg", "File uploaded successfully.");
		}else {
			model.addAttribute("msg", "Please select a valid mediaFile..");
		}
		
		return "/readlist";
	}
	
	private static final String FILE_SERVER_PATH1 = "D:/upload";

	@RequestMapping("/download")
	public ModelAndView download(@RequestParam HashMap<Object, Object> params, ModelAndView mv) {
		String fileName = (String) params.get("fileName");
		String fullPath = FILE_SERVER_PATH1 + "/" + fileName;
		File file = new File(fullPath);
		
		mv.setViewName("fileDownload");
		mv.addObject("fileDownload", file);
		return mv;
	}
}
