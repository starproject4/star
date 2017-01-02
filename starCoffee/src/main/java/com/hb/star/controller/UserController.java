package com.hb.star.controller;


import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.hb.star.model.UserDao;
import com.hb.star.model.UserVo;

@Controller
@RequestMapping("/members")
public class UserController {

	@Autowired
	private SqlSession sqlSession;
	
	//ȸ������ ������
	@RequestMapping(value="/joinform")
	public void joinForm(){
		
	}
	
	@RequestMapping(value="/userInsert", method=RequestMethod.POST)
	public String UserInsert(UserVo bean){	//ȸ������
		//System.out.println(">>>"+bean);
		
		UserDao mapper = sqlSession.getMapper(UserDao.class);
		mapper.insertOne(bean);
		
		return "redirect:/";
	}
	
	@RequestMapping(value="/idck", method=RequestMethod.POST)
	public String idCk(Model model,@RequestParam("id") String id){	//id �ߺ�üũ
		
		UserDao mapper = sqlSession.getMapper(UserDao.class);
		UserVo result = mapper.selectOne(id);
		model.addAttribute("bean", result);
		
		return "/members/idck";
	}
	
	//�α��� ������
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public void loginForm(){
		
	}
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String login(Model model, UserVo bean, HttpSession session){

		UserDao mapper = sqlSession.getMapper(UserDao.class);
		UserVo result = mapper.login(bean);
		
		if(result !=null){
			//�α��� ����
//			System.out.println(":>"+result.getId());
			session.setAttribute("result", true);
			session.setAttribute("id", result.getId());
			session.setAttribute("grade", result.getGrade());
		}else{
			result=null;
		}
		model.addAttribute("bean", result);
		
		return "/members/idck";
	}
	
	//id ã��
	@RequestMapping(value="sid")
	public void sid(){
		
	}
	
	@RequestMapping(value="searchid", method=RequestMethod.POST)
	public String searchid(Model model, UserVo bean, HttpSession session){
		
		UserDao mapper = sqlSession.getMapper(UserDao.class);
		UserVo result = mapper.searchid(bean);
		model.addAttribute("bean", result);
		
		return "/members/idck";
	}
	
	//�α׾ƿ�
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String logout(HttpSession session){
		session.invalidate();
		return "redirect:/";
	}
	
	//ȸ�� ������
	@RequestMapping(value="/mypage", method=RequestMethod.GET)
	public String mypage(Model model, HttpSession session){
		String id = (String)session.getAttribute("id");
		UserDao mapper = sqlSession.getMapper(UserDao.class);
		UserVo result = mapper.selectOne(id);
		model.addAttribute("bean", result);
		
		return "/members/mypage";
	}
	
	//ȸ�� ��������
	@RequestMapping(value="/updateform", method=RequestMethod.POST)
	public String update(Model model, HttpSession session){
		String id = (String)session.getAttribute("id");
		UserDao mapper = sqlSession.getMapper(UserDao.class);
		UserVo result = mapper.selectOne(id);
		model.addAttribute("bean", result);
		
		return "/members/update";
	}
	
	@RequestMapping(value="/userUpdate", method=RequestMethod.POST)
	public String userUpdate(UserVo bean){
//		System.out.println(">"+bean);
		UserDao mapper = sqlSession.getMapper(UserDao.class);
		mapper.updateOne(bean);
		
		return "redirect:/members/mypage";
	}
	
	//ȸ�� Ż��
	@RequestMapping(value="/delete", method=RequestMethod.POST)
	public String userDelete(@RequestParam("idx") String id, HttpSession session){
		session.invalidate();
		UserDao mapper = sqlSession.getMapper(UserDao.class);
		mapper.deleteOne(id);
		
		return "redirect:/";
	}
}