package com.yi.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yi.domain.SpmsVO;
import com.yi.service.SpmsService;


@Controller
public class SPMSController {

	@Autowired // 주입받기
	SpmsService service;
	
	//등록
	@RequestMapping(value = "/ncs/register", method = RequestMethod.GET)
	public String registerGet() {
		return "/spms/register";
	}
	
	
	@RequestMapping(value = "/ncs/register", method = RequestMethod.POST)
	public String registerPost(SpmsVO vo) throws Exception {
		service.create(vo);
		return "redirect:/ncs/list";
	}	
	
	//리스트
	@RequestMapping(value = "/ncs/list", method = RequestMethod.GET)
	public String list(Model model) throws Exception { //모델이 이 함수가 가지고 있는 리스트를 반환
		List<SpmsVO> list = service.list();
		//System.out.println(list);
		model.addAttribute("list",list);
		return "/spms/list";
	}
	
	//디테일
	@RequestMapping(value = "/ncs/detail", method = RequestMethod.GET)
	public String read(int projectNo, Model model) throws Exception {
		SpmsVO vo = service.readByNo(projectNo);
		model.addAttribute("detail", vo);
		return "/spms/detail";
	}
	
	//수정- 수정화면 보여주고
	@RequestMapping(value = "/ncs/update", method = RequestMethod.GET)
	public String updateGet(int projectNo,Model model) throws Exception{
		
		SpmsVO vo = service.readByNo(projectNo);
		model.addAttribute("spms", vo);
		
		return "/spms/modify";
	}
	
	//수정 - 리스트로 가기
	@RequestMapping(value = "/ncs/update", method = RequestMethod.POST)
	public String updatePost(SpmsVO vo) throws Exception{
		service.update(vo);
		System.out.println(vo);
		return  "redirect:/ncs/list";
	}
	
	//삭제
	@RequestMapping(value = "/ncs/delete", method = RequestMethod.GET)
	public String delete(int projectNo) throws Exception{
		service.delete(projectNo);
		return "redirect:/ncs/list";
	}
}
