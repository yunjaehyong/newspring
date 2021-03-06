package co.kr.swempire.yjh.web;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;





import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.sun.istack.internal.logging.Logger;

import co.kr.swempire.yjh.service.YjhService;
import co.kr.swempire.yjh.vo.UploadVO;
import co.kr.swempire.yjh.vo.YjhVO;

@Controller
public class YjhController {

	
	private static final String FILE_SERVER_PATH = "D:/upload";
	private static final String FILE_SERVER_PATH1 = "D:/downloadFile";
	
	@Autowired
	YjhService yjhService;
	
	
	@RequestMapping("/index")
	public String index(HttpServletRequest req) {
		
		return "index";
	}
	
	@RequestMapping("/uploadfile")
	public String upload(HttpServletRequest req) {
		
		return "uploadfile";
	}
	
	
	

	
	
	@RequestMapping("/filedownload")
	public String filedownload(HttpServletRequest req) {

		return "filedownload";
	}
	@RequestMapping("/readlist")
	public String readList(HttpServletRequest req) {
		YjhVO vo = new YjhVO();
		
	List<YjhVO> list = yjhService.readList();
	vo.getRate();
	
	req.setAttribute("yjhlist", list);
		
		return "readlist";
	}
	
	@RequestMapping("/include/top")
	public String top(HttpServletRequest req) {
		
		return "/include/top";
	}
	
	
	@RequestMapping("selectpage")
	public String selectTest(HttpServletRequest req, HttpSession session, Model model){
		int rate = Integer.parseInt(req.getParameter("rate"));
		YjhVO vo = new YjhVO();
		session=req.getSession();
		req.getParameter("rate");
		
		vo.setRate(rate);
		Map<Object,Object> list = yjhService.updateTest(vo);
		model.addAttribute("test",list);
		return "selectpage";
		
	}
	@RequestMapping("/insertpage")
	public String insertTest(HttpServletRequest req) {
		
		YjhVO vo = new YjhVO();
		
		return "insertpage";
	}
	@ResponseBody
	@RequestMapping("/insertDataAjax")
	public Map<Object, Object> insertDataAjax(HttpServletRequest req){
		HashMap<Object,Object> map1 = new HashMap<Object,Object>();
		YjhVO vo = new YjhVO();
		boolean result = false;
		
		vo.setId(req.getParameter("id"));
		vo.setPw(req.getParameter("pw"));
		vo.setUser_name(req.getParameter("user_name"));
		vo.setTitle(req.getParameter("title"));
		vo.setBoard_context(req.getParameter("board_context"));
		int a = yjhService.insertData(vo);
		
		if(a>0) {
			result = true;
		}
		map1.put("result",result );
		map1.put("msg","ok");
		
		return map1;
	}
	@RequestMapping( value= "/updatepage", method= {RequestMethod.POST,RequestMethod.GET})
	public String updateTest(HttpServletRequest req, HttpSession session, Model model){
		int rate = Integer.parseInt(req.getParameter("rate"));
		YjhVO vo = new YjhVO();
		session=req.getSession();
		req.getParameter("rate");
		
		vo.setRate(rate);
		Map<Object,Object> list = yjhService.updateTest(vo);
		model.addAttribute("yjhlist",list);
		
		return "/updatepage";
		
	}
	@ResponseBody
	@RequestMapping("/updateDataAjax")
	public Map<String, Object> updateDataAjax(HttpServletRequest req,HttpSession session,Locale locale,
			@RequestParam Map<String, Object> params){
		YjhVO vo = new YjhVO();
		boolean result = false;
		
		int a = this.yjhService.updateData(params);
		
		if(a>0) {
			result = true;
		}
		params.put("result",result );
		params.put("msg","ok");
		
		return params;
	}
	
	@ResponseBody
	@RequestMapping("/deleteDataAjax")
	public Map<String, Object> deleteDataAjax(HttpServletRequest req,HttpSession session,Locale locale,
			@RequestParam Map<String, Object> params){
		Map<String,Object> rmap = new HashMap<String,Object>();
		
		boolean result = false;
		int rate = Integer.parseInt(req.getParameter("rate"));
		YjhVO vo = new YjhVO();
		
		vo.setRate(rate);
		
		int a = yjhService.deleteData(params);
		
		if(a > 0) {
			result = true;
		}else {
			rmap.put("msg", "????");
		}
		rmap.put("result", result);
		return rmap;
	}
	


	
	

	
}
