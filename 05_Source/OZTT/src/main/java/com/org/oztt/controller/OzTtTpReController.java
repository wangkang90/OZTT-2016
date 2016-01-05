package com.org.oztt.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.org.oztt.base.util.DateFormatUtils;
import com.org.oztt.contants.CommonConstants;
import com.org.oztt.formDto.OzTtTpReDto;
import com.org.oztt.service.CustomerService;

@Controller
@RequestMapping("/OZ_TT_TP_RE")
public class OzTtTpReController extends BaseController {

	@Resource
	private CustomerService customerService;
	/**
	 * 注册页
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "init", method = RequestMethod.GET)
	public String init(Model model) {
		model.addAttribute("ozTtTpReDto", new OzTtTpReDto());
		return "/OZ_TT_TP_RE";
	}
	
	/**
	 * 用户的注册
	 * @param model
	 * @param request
	 * @param session
	 * @param ozTtTpReDto
	 * @return
	 */
	@RequestMapping("register")
	public String login(Model model, HttpServletRequest request, HttpSession session, @ModelAttribute OzTtTpReDto ozTtTpReDto) {
		try{
			ozTtTpReDto.setBirthday(DateFormatUtils.strToYYYYMMDDNoCa(ozTtTpReDto.getBirthday()));
			customerService.insertRegister(ozTtTpReDto);
			return "redirect:/OZ_TT_TP_LG/init";
		}catch(Exception e){
			e.printStackTrace();
			logger.error(e.getMessage());
			return CommonConstants.ERROR_PAGE;
		}
	}
	
	
}
