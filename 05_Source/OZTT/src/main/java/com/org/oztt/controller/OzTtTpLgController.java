package com.org.oztt.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.org.oztt.contants.CommonConstants;
import com.org.oztt.entity.TCustomerLoginHis;
import com.org.oztt.entity.TCustomerLoginInfo;
import com.org.oztt.formDto.OzTtTpLgDto;
import com.org.oztt.service.CustomerService;

@Controller
@RequestMapping("/OZ_TT_TP_LG")
public class OzTtTpLgController extends BaseController {

	@Resource
	private CustomerService customerService;
	/**
	 * 登录页
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "init", method = RequestMethod.GET)
	public String gotoMain(Model model) {
		try {
			model.addAttribute("ozTtTpLgDto", new OzTtTpLgDto());
			return "/OZ_TT_TP_LG";
		} catch (Exception e) {
			e.printStackTrace();
			logger.error(e.getMessage());
			return CommonConstants.ERROR_PAGE;
		}
	}
	
	/**
	 * 用户登录操作
	 * @param model
	 * @param request
	 * @param session
	 * @param loginFormDto
	 * @return
	 */
	@RequestMapping("login")
	public String login(Model model, HttpServletRequest request, HttpSession session, @ModelAttribute OzTtTpLgDto ozTtTpLgDto) {
		try {
			// 进入登录画面
			String username = ozTtTpLgDto.getUsername();
			String password = ozTtTpLgDto.getPassword();
			TCustomerLoginInfo tCustomerLoginInfo = customerService.userLogin(username, password);
			if (tCustomerLoginInfo == null) {
				// 没有取到数据,清空密码
				ozTtTpLgDto = new OzTtTpLgDto();
				ozTtTpLgDto.setUsername(username);
				// 错误信息
				model.addAttribute("ozTtTpLgDto", ozTtTpLgDto);
				model.addAttribute("cannotLogin", "1");
				return "/OZ_TT_TP_LG";
			}

			// 可以取到数据，将所用的数据放入session 中
			session.setAttribute(CommonConstants.SESSION_CUSTOMERNO, tCustomerLoginInfo.getCustomerno());
			
			// 登录成功插入历史记录
			if (CommonConstants.HAS_LOGINED_STATUS.equals(tCustomerLoginInfo.getLoginstatus())) {
				// 用户已经登录着，这时不需要插入历史数据也不需要更新登录表
				
			} else {
				// 插入历史登录数据并且更新登录状态
				TCustomerLoginHis tCustomerLoginHis = new TCustomerLoginHis();
				tCustomerLoginHis.setCustomerno(tCustomerLoginInfo.getCustomerno());
				customerService.insertLoginHisAndUpdateStatus(tCustomerLoginHis);
			}

			// 当前用户已经登录, 直接跳转到主菜单画面。
			// 这里当用户已经登录的时候，就不需要再插入历史记录了。

			return "redirect:/main/init";
		} catch (Exception e) {
			e.printStackTrace();
			logger.error(e.getMessage());
			return CommonConstants.ERROR_PAGE;
		}
		
	}	
	
}
