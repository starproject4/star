package com.hb.star.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.activation.CommandMap;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.hb.star.model.EventDao;
import com.hb.star.model.EventVo;

@Controller
@RequestMapping("/event")
public class EventController {
	
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("")
	public String eventList(Model model, HttpSession session) {
		System.out.println("test중");
		EventDao mapper = sqlSession.getMapper(EventDao.class);
		List list = mapper.selectAll();
		System.out.println(list.size());
		model.addAttribute("alist", list);
		model.addAttribute("session", session.getAttribute("grade"));
		return "/event/eventList";
	}
	
	@RequestMapping("/write")
	public String eventWrite() {
		
		return "/event/eventWrite";
	}
	
	@RequestMapping(value="/insert", method=RequestMethod.POST)
	public String eventInsert(EventVo bean, @RequestParam("file") List<MultipartFile> file, HttpServletRequest req) {
		EventDao mapper = sqlSession.getMapper(EventDao.class);
		System.out.println("filesize:"+file.size());
		String rootPath = req.getRealPath("/");
		String attachPath = "resources/imgs/upload/";
		System.out.println("네임:"+file.size());
		System.out.println("네임:"+file.toString());
		System.out.println("리얼패스:"+req.getRealPath("/"));
		System.out.println("index1:"+file.get(0).getOriginalFilename());
//		System.out.println("index2:"+file.get(1).getOriginalFilename());
//		System.out.println("index3:"+file.get(2).getOriginalFilename());
		int no=0;
		for(int i=0; i<file.size(); i++){
			String orgfnm=file.get(i).getOriginalFilename();
			String newfnm;
			File f = new File(rootPath+attachPath+orgfnm);
			System.out.println();
			System.out.println("f.exists():"+f.exists());
			if(f.exists()){
				System.out.println("f.exists():있다");
				newfnm=System.currentTimeMillis()+"_"+orgfnm;
				f = new File(rootPath+attachPath+newfnm);
			}else{
				System.out.println("f.exists():없다");
				newfnm=orgfnm;			
			}
			bean.setOriginalfilename(orgfnm);
			bean.setNewfilename(newfnm);
			if(i!=0){
				bean.setSub_no(no);
				System.out.println("setSub_no:"+bean.getSub_no());
			}
			mapper.insertOne(bean);
			if(i==0){
				no=mapper.selectNo();
				System.out.println("no:"+no);
			}
			try {
				file.get(i).transferTo(f);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			System.currentTimeMillis();
			System.out.println(f);
			System.out.println(file);
		}
		return "redirect:/event";
	}
	
	@RequestMapping("/detail")
	public String eventDetail(@RequestParam("no") int no, Model model, HttpSession session){
		EventDao mapper = sqlSession.getMapper(EventDao.class);
		model.addAttribute("bean", mapper.selectOne(no));
		List list=mapper.selectImg(no);
		System.out.println("img:"+list);
		model.addAttribute("imgList", list);
		model.addAttribute("session", session.getAttribute("grade"));
		return "/event/eventDetail";
	}
	
	@RequestMapping("/edit")
	public String eventEdit(Model model, @RequestParam("no") int no){
		EventDao mapper = sqlSession.getMapper(EventDao.class);
		model.addAttribute("bean", mapper.selectOne(no));	
		List list = mapper.selectImg(no);
		System.out.println("list:"+list);
		model.addAttribute("imgList", list);
		return "/event/eventEdit";
	}
	
	@RequestMapping(value="/update", method=RequestMethod.POST)
	public String eventUpdate(EventVo bean, @RequestParam("file") List<MultipartFile> file, @RequestParam("fname") List fname, HttpServletRequest req){
		EventDao mapper = sqlSession.getMapper(EventDao.class);
		int no=bean.getNo();
			System.out.println("filesize:"+file.size());
			System.out.println("bean.no:"+bean.getNo());
			if(file.size()==1){
				System.out.println("file:"+bean.getContent());			
				System.out.println("file:"+bean.getOriginalfilename());			
				System.out.println("file:"+bean.getNewfilename());			
				bean.setOriginalfilename(bean.getOriginalfilename());
				bean.setNewfilename(bean.getNewfilename());
				System.out.println("if테스트:"+bean);
				mapper.updateOne(bean);
			}else{
				for(int i=0; i<file.size(); i++){
//				System.out.println("file:"+file.get(i).getOriginalFilename());						
//				System.out.println("file:"+bean.getOriginalfilename());			
//				System.out.println("file:"+bean.getNewfilename());
				String rootPath = req.getRealPath("/");
				String attachPath = "resources/imgs/upload/";
//				System.out.println("리얼패스:"+req.getRealPath("/"));
//				System.out.println("리얼패스:"+file.get(i).getOriginalFilename());
				String orgfnm=file.get(i).getOriginalFilename();
				String newfnm;
				File f = new File(rootPath+attachPath+orgfnm);
				System.out.println();
				System.out.println("f.exists():"+f.exists());
				if(f.exists()){
					System.out.println("f.exists():있다");
					newfnm=System.currentTimeMillis()+"_"+orgfnm;
					f = new File(rootPath+attachPath+newfnm);
				}else{
					System.out.println("f.exists():없다");
					newfnm=orgfnm;			
				}
				bean.setOriginalfilename(orgfnm);
				bean.setNewfilename(newfnm);
				if(i==0){
					System.out.println("i=0:"+bean);
					mapper.updateOne(bean);
				}else{
					bean.setSub_no(no);
					System.out.println("setSub_no:"+bean.getSub_no());
					System.out.println("i!=0:"+bean);
					mapper.insertOne(bean);
				}
				try {
					file.get(i).transferTo(f);
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
				System.currentTimeMillis();
				System.out.println(f);
				System.out.println(file);
				
			}
		}
			for(int i=0; i<fname.size(); i++){
				mapper.deleteEdit((String)fname.get(i));
				System.out.println("fname:"+fname.get(i));			
			}
		
		return "redirect:/event";
	}
	
	
	@RequestMapping("/delete")
	public String deleteOne(@RequestParam("no") ArrayList<String> list) {
		EventDao mapper = sqlSession.getMapper(EventDao.class);
		for(int i=0; i<list.size(); i++){
			System.out.println(list.get(i));
			mapper.deleteOne(Integer.parseInt(list.get(i)));
		}
		return "redirect:/event";
	}
	
}
