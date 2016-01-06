package com.org.oztt.service.impl;

import java.util.Date;

import javax.annotation.Resource;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;

import com.org.oztt.base.util.DateFormatUtils;
import com.org.oztt.contants.CommonConstants;
import com.org.oztt.dao.TCustomerBasicInfoDao;
import com.org.oztt.dao.TCustomerLoginHisDao;
import com.org.oztt.dao.TCustomerLoginInfoDao;
import com.org.oztt.dao.TNoCustomerDao;
import com.org.oztt.entity.TCustomerBasicInfo;
import com.org.oztt.entity.TCustomerLoginHis;
import com.org.oztt.entity.TCustomerLoginInfo;
import com.org.oztt.entity.TNoCustomer;
import com.org.oztt.formDto.OzTtTpFpDto;
import com.org.oztt.formDto.OzTtTpReDto;
import com.org.oztt.service.BaseService;
import com.org.oztt.service.CustomerService;

@Service
public class CustomerServiceImpl extends BaseService implements CustomerService {

    @Resource
    private TCustomerLoginInfoDao tCustomerLoginInfoDao;

    @Resource
    private TCustomerLoginHisDao  tCustomerLoginHisDao;

    @Resource
    private TNoCustomerDao        tNoCustomerDao;

    @Resource
    private TCustomerBasicInfoDao tCustomerBasicInfoDao;

    public TCustomerLoginInfo userLogin(String loginId, String password) throws Exception {
        TCustomerLoginInfo info = new TCustomerLoginInfo();
        info.setLoginid(loginId);
        info.setLoginpass(password);
        return tCustomerLoginInfoDao.userLogin(info);

    }

    public boolean insertLoginHisAndUpdateStatus(TCustomerLoginHis tCustomerLoginHis) throws Exception {
        tCustomerLoginHis.setLogintimestamp(new Date());
        Integer records = tCustomerLoginHisDao.insert(tCustomerLoginHis);
        if (records <= 0) {
            return false;
        }
        // 改变登录状态
        TCustomerLoginInfo info = this.selectByCustomerNo(tCustomerLoginHis.getCustomerno());
        info.setLoginstatus(CommonConstants.HAS_LOGINED_STATUS);
        info.setUpdtimestamp(new Date());
        info.setUpdpgmid("OZ_TT_TP_LG");
        info.setUpduserkey(tCustomerLoginHis.getCustomerno());
        records = tCustomerLoginInfoDao.updateByPrimaryKey(info);
        if (records <= 0)
            return false;
        return true;
    }

    public boolean loginOut(String userId) throws Exception {
        // TODO Auto-generated method stub
        return false;
    }

    public boolean insertRegister(OzTtTpReDto ozTtTpReDto) throws Exception {
        String maxCustomer = this.getMaxCustomerNo();

        // 客户号最大值的保存
        TNoCustomer tNoCustomer = new TNoCustomer();
        tNoCustomer.setDate(DateFormatUtils.getNowTimeFormat("yyyyMMdd"));
        tNoCustomer.setMaxno(maxCustomer);
        tNoCustomerDao.insertSelective(tNoCustomer);

        // 可用登录信息的保存
        TCustomerLoginInfo tCustomerLoginInfo = new TCustomerLoginInfo();
        tCustomerLoginInfo.setAddtimestamp(new Date());
        tCustomerLoginInfo.setAdduserkey(maxCustomer);
        tCustomerLoginInfo.setCustomerno(maxCustomer);
        tCustomerLoginInfo.setDeleteflg(CommonConstants.IS_NOT_DELETE);
        tCustomerLoginInfo.setLoginid(ozTtTpReDto.getEmail());
        tCustomerLoginInfo.setLoginpass(ozTtTpReDto.getPassword());
        tCustomerLoginInfo.setLoginstatus(CommonConstants.LOGIN_STATUS_NORMAL);
        tCustomerLoginInfoDao.insertSelective(tCustomerLoginInfo);

        // 人员基本信息
        TCustomerBasicInfo tCustomerBasicInfo = new TCustomerBasicInfo();
        tCustomerBasicInfo.setAddtimestamp(new Date());
        tCustomerBasicInfo.setAdduserkey(maxCustomer);
        tCustomerBasicInfo.setBirthday(ozTtTpReDto.getBirthday());
        tCustomerBasicInfo.setCngivenname(ozTtTpReDto.getCngivenname());
        tCustomerBasicInfo.setCnsurname(ozTtTpReDto.getCnsurname());
        tCustomerBasicInfo.setCustomerno(maxCustomer);
        tCustomerBasicInfo.setDeleteflg(CommonConstants.IS_NOT_DELETE);
        tCustomerBasicInfo.setEducation(ozTtTpReDto.getEducation());
        tCustomerBasicInfo.setEnfirstname(ozTtTpReDto.getEnfirstname());
        tCustomerBasicInfo.setEnlastname(ozTtTpReDto.getEnlastname());
        tCustomerBasicInfo.setEnmiddlename(ozTtTpReDto.getEnmiddlename());
        tCustomerBasicInfo.setHeadpic(ozTtTpReDto.getHeadpic());
        tCustomerBasicInfo.setIdcardno(ozTtTpReDto.getIdcardno());
        tCustomerBasicInfo.setMarriage(ozTtTpReDto.getMarriage());
        tCustomerBasicInfo.setNickname(ozTtTpReDto.getNickname());
        tCustomerBasicInfo.setOccupation(ozTtTpReDto.getOccupation());
        tCustomerBasicInfo.setPassportno(ozTtTpReDto.getPassportno());
        tCustomerBasicInfo.setSex(ozTtTpReDto.getSex());
        tCustomerBasicInfoDao.insertSelective(tCustomerBasicInfo);

        return true;
    }

    public String getMaxCustomerNo() throws Exception {
        String maxNo = tNoCustomerDao.getMaxCustomerNo();
        String nowDateString = DateFormatUtils.getNowTimeFormat("yyyyMMdd");
        Integer len = CommonConstants.FIRST_NUMBER.length();
        if (maxNo == null) {
            return nowDateString + CommonConstants.FIRST_NUMBER;
        }
        else {
            return nowDateString
                    + StringUtils.leftPad(String.valueOf(Integer.valueOf(maxNo.substring(len)) + 1), len, "0");
        }
    }

    public TCustomerLoginInfo selectByEmail(String email) throws Exception {
        return tCustomerLoginInfoDao.selectByEmail(email);
    }

    public TCustomerLoginInfo selectByCustomerNo(String customerNo) throws Exception {
        return tCustomerLoginInfoDao.selectByCustomerNo(customerNo);
    }

    public boolean updatePassword(OzTtTpFpDto ozTtTpFpDto) throws Exception {
        TCustomerLoginInfo info = this.selectByCustomerNo(ozTtTpFpDto.getCustomerNo());
        info.setLoginpass(ozTtTpFpDto.getNewPassword());
        info.setUpdtimestamp(new Date());
        info.setUpdpgmid("OZ_TT_TP_FP");
        info.setUpduserkey(ozTtTpFpDto.getCustomerNo());
        Integer records = tCustomerLoginInfoDao.updateByPrimaryKey(info);
        if (records == 0)
            return false;
        return true;
    }

}
