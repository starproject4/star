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

import com.hb.star.model.ProductDao;
import com.hb.star.model.ProductVo;

@Controller
@RequestMapping("/product")
public class ProductController {
	
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("")
	public String productList(Model model, HttpSession session) {
		System.out.println("test중");
		ProductDao mapper = sqlSession.getMapper(ProductDao.class);
		List list = mapper.selectAll();
		System.out.println(list.size());
		model.addAttribute("alist", list);
		model.addAttribute("session", session.getAttribute("grade"));
		return "/product/productList";
	}
	
	@RequestMapping("/cup")
	public String productCoffee(Model model) {
		ProductDao mapper = sqlSession.getMapper(ProductDao.class);
		String cup = "컵";
		List list = mapper.selectList(cup);
		System.out.println(list.size());
		System.out.println(list);
		model.addAttribute("alist", list);
		model.addAttribute("title", "컵");
		return "/product/list";
	}
	
	@RequestMapping("/card")
	public String productBeverage(Model model) {
		ProductDao mapper = sqlSession.getMapper(ProductDao.class);
		String card = "카드";
		List list = mapper.selectList(card);
		System.out.println(list.size());
		System.out.println(list);
		model.addAttribute("alist", list);
		model.addAttribute("title", "카드");
		return "/product/list";
	}
	
	@RequestMapping("/accessory")
	public String productAccessory(Model model) {
		ProductDao mapper = sqlSession.getMapper(ProductDao.class);
		String accessory = "악세사리";
		List list = mapper.selectList(accessory);
		System.out.println(list.size());
		System.out.println(list);
		model.addAttribute("alist", list);
		model.addAttribute("title", "악세사리");
		return "/product/list";
	}
	
	@RequestMapping("/write")
	public String productWrite() {
		
		return "/product/productWrite";
	}
	
	@RequestMapping(value="/insert", method=RequestMethod.POST)
	public String productInsert(ProductVo bean, @RequestParam("file") MultipartFile file, HttpServletRequest req) {
		ProductDao mapper = sqlSession.getMapper(ProductDao.class);
		String rootPath = req.getRealPath("/");
		String attachPath = "resources/imgs/upload/";
		System.out.println("리얼패스:"+req.getRealPath("/"));
		System.out.println("리얼패스:"+file.getOriginalFilename());
		String orgfnm=file.getOriginalFilename();
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
		mapper.insertOne(bean);
		try {
			file.transferTo(f);
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		System.currentTimeMillis();
		System.out.println(bean.getCategory());
		System.out.println(f);
		System.out.println(file);
		return "redirect:/product";
	}
	
	@RequestMapping("/detail")
	public String productDetail(@RequestParam("no") int no, Model model, HttpSession session){
		ProductDao mapper = sqlSession.getMapper(ProductDao.class);
		model.addAttribute("bean", mapper.selectOne(no));
		model.addAttribute("session", session.getAttribute("grade"));
		return "/product/productDetail";
	}
	
	@RequestMapping("/edit")
	public String productEdit(Model model, @RequestParam("no") int no){
		ProductDao mapper = sqlSession.getMapper(ProductDao.class);
		model.addAttribute("bean", mapper.selectOne(no));		
		return "/product/productEdit";
	}
	
	@RequestMapping(value="/update", method=RequestMethod.POST)
	public String productUpdate(ProductVo bean, MultipartFile file, HttpServletRequest req){
		ProductDao mapper = sqlSession.getMapper(ProductDao.class);
		if(file.getOriginalFilename()==""){
			System.out.println("file:"+bean.getContent());			
			System.out.println("file:"+bean.getOriginalfilename());			
			System.out.println("file:"+bean.getNewfilename());			
			bean.setOriginalfilename(bean.getOriginalfilename());
			bean.setNewfilename(bean.getNewfilename());
		}else{
			System.out.println("file:"+file.getOriginalFilename());						
			System.out.println("file:"+bean.getOriginalfilename());			
			System.out.println("file:"+bean.getNewfilename());		
			
			String rootPath = req.getRealPath("/");
			String attachPath = "resources/imgs/upload/";
			System.out.println("리얼패스:"+req.getRealPath("/"));
			System.out.println("리얼패스:"+file.getOriginalFilename());
			String orgfnm=file.getOriginalFilename();
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
			try {
				file.transferTo(f);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			System.currentTimeMillis();
			System.out.println(bean.getCategory());
			System.out.println(f);
			System.out.println(file);
		}
		System.out.println("마지막테스트:"+bean);
		mapper.updateOne(bean);
		return "redirect:/product";
	}
	
	
	@RequestMapping("/delete")
	public String deleteOne(@RequestParam("no") ArrayList<String> list) {
		ProductDao mapper = sqlSession.getMapper(ProductDao.class);
		for(int i=0; i<list.size(); i++){
			System.out.println(list.get(i));
			mapper.deleteOne(Integer.parseInt(list.get(i)));
		}
		return "redirect:/product";
	}
	
}
