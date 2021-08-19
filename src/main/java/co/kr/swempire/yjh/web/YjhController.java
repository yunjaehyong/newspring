package co.kr.swempire.yjh.web;

import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import co.kr.swempire.yjh.service.YjhService;
import co.kr.swempire.yjh.vo.YjhVO;

@Controller
public class YjhController {

	@Autowired
	YjhService yjhService;
	
	
	@RequestMapping("/index")
	public String index(HttpServletRequest req) {
		
		return "index";
	}
	@RequestMapping("/index2")
	public String index2(HttpServletRequest req) {
		YjhVO vo = new YjhVO();
		
	List<YjhVO> list = yjhService.index2();
	vo.getRate();
	
	req.setAttribute("yjhlist", list);
		
		return "index2";
	}
	
	@RequestMapping("/include/top")
	public String top(HttpServletRequest req) {
		
		return "/include/top";
	}
	
	
	@RequestMapping("yjh")
	public String yjh(HttpServletRequest req) {
		
		YjhVO vo = new YjhVO();
		
		List<YjhVO> list = yjhService.selectTest();
		
		
		
		req.setAttribute("yjhlist", list);
		System.out.println(list);
		return "yjh";
		
	}
	@RequestMapping("/insert")
	public String insertTest(HttpServletRequest req) {
		
		YjhVO vo = new YjhVO();
		
		return "insert";
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
	@RequestMapping( value= "/update", method= {RequestMethod.POST,RequestMethod.GET})
	public String updateTest(HttpServletRequest req, HttpSession session, Model model){
		int rate = Integer.parseInt(req.getParameter("rate"));
		YjhVO vo = new YjhVO();
		session=req.getSession();
		req.getParameter("rate");
		
		vo.setRate(rate);
		Map<Object,Object> list = yjhService.updateTest(vo);
		model.addAttribute("yjhlist",list);
		
		return "/update";
		
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
		YjhVO vo = new YjhVO();
		boolean result = false;
		
		int a = this.yjhService.deleteData(params);
		
		if(a>0) {
			result = true;
		}
		params.put("result",result );
		params.put("msg","수정이완료되었습니다.");
		
		return params;
	}
}
