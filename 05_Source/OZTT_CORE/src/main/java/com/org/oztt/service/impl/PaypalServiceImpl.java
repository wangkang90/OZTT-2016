package com.org.oztt.service.impl;

import org.springframework.stereotype.Service;

import com.org.oztt.service.BaseService;
import com.org.oztt.service.PaypalService;

@Service
public class PaypalServiceImpl extends BaseService implements PaypalService {

    public static String PPMODE               = "sandbox";

    public static String URL_LIVE_ACCOUNT     = "linliuanqdzb@163.com";                         // 生产账号

    public static String URL_SANDBOX_ACCOUNT  = "linliuanqdzb@163.com";                         // 沙盒测试账号

    public static String URL_LIVE_CODE_URL    = "https://www.paypal.com/cgi-bin/webscr";        // 生产付款页面

    public static String URL_SANDBOX_CODE_URL = "https://www.sandbox.paypal.com/cgi-bin/webscr"; // 沙盒付款页面

    public static String ORDERNAME            = "";                                             // 订单摘要的头部说明

    public static String CURRENCY_CODE        = "USD";                                           // 当前货币种类

    /**
     * 
     * @param orderId 订单号
     * @param price   付款价格
     * @param returnUrl 返回URL
     * @param notifyUrl 通知URL
     * @param cancelReturn 取消URL
     * @return
     * @throws Exception
     */
    @Override
    public String buildRequest(String orderId, String price, String returnUrl, String notifyUrl, String cancelReturn) throws Exception {

        StringBuffer sbHtml = new StringBuffer();
        sbHtml.append("<html>");
        sbHtml.append("<head>");
        sbHtml.append("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">");
        sbHtml.append("<title>goto paypal</title>");
        sbHtml.append("</head>");
        sbHtml.append("<body>"); 
        sbHtml.append("<form name=\"fomr\" action=\"" + URL_SANDBOX_CODE_URL + "\" method=\"post\">"); // 不能省略
        sbHtml.append("<input type='hidden' name='cmd' value='_xclick'>"); // 不能省略
        sbHtml.append("<input type='hidden' name='business' value='" + URL_SANDBOX_ACCOUNT + "'>"); // 贝宝帐号
        sbHtml.append("<input type='hidden' name='item_name' value='" + ORDERNAME + "'>"); // payment for
        sbHtml.append("<input type='hidden' name='amount' value='" + price + "'>"); // 订单金额
        sbHtml.append("<input type='hidden' name='currency_code' value='"+CURRENCY_CODE+"'>"); // 货币
        sbHtml.append("<input type='hidden' name='return' value='"+returnUrl+"'>"); // 付款后页面
        sbHtml.append("<input type='hidden' name='invoice' value='"+orderId+"'>"); // 订单号
        sbHtml.append("<input type='hidden' name='charset' value='utf-8'>"); // 字符集
        sbHtml.append("<input type='hidden' name='no_shipping' value='1'>"); // 不要求客户提供收货地址
        sbHtml.append("<input type='hidden' name='no_note' value=''>"); // 付款说明
        sbHtml.append("<input type='hidden' name='notify_url' value='"+notifyUrl+"'>");
        sbHtml.append("<input type='hidden' name='rm' value='2'>");
        sbHtml.append("<input type='hidden' name='cancel_return' value='"+cancelReturn+"'>");
        sbHtml.append("<input type='submit' style='display:none;' value='Go to Paypal'>"); // 按钮
        sbHtml.append("</form><br /><script type='text/javascript'>document.fomr.submit();</script>");
        sbHtml.append("</body>");
        sbHtml.append("</html>");
        return sbHtml.toString();

    }
}
