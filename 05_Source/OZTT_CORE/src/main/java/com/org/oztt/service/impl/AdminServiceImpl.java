package com.org.oztt.service.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.org.oztt.contants.CommonConstants;
import com.org.oztt.dao.TAdminBasicInfoDao;
import com.org.oztt.dao.TAdminLoginHisDao;
import com.org.oztt.dao.TAdminLoginInfoDao;
import com.org.oztt.entity.TAdminBasicInfo;
import com.org.oztt.entity.TAdminLoginHis;
import com.org.oztt.entity.TAdminLoginInfo;
import com.org.oztt.service.AdminService;
import com.org.oztt.service.BaseService;

@Service
public class AdminServiceImpl extends BaseService implements AdminService {

    @Resource
    private TAdminLoginInfoDao tAdminLoginInfoDao;

    @Resource
    private TAdminLoginHisDao  tAdminLoginHisDao;

    @Resource
    private TAdminBasicInfoDao tAdminBasicInfoDao;

    @Override
    public TAdminLoginInfo userLogin(String loginId, String password) throws Exception {
        Map<String, String> paramMap = new HashMap<String, String>();
        paramMap.put("username", loginId);
        paramMap.put("password", password);
        return tAdminLoginInfoDao.userLogin(paramMap);
    }

    @Override
    public boolean loginOut(String userId) throws Exception {
        // TODO Auto-generated method stub
        return false;
    }

    @Override
    public boolean insertLoginHisAndUpdateStatus(TAdminLoginHis tAdminLoginHis) throws Exception {
        tAdminLoginHis.setLogintimestamp(new Date());
        Integer records = tAdminLoginHisDao.insert(tAdminLoginHis);
        if (records <= 0) {
            return false;
        }
        // 改变登录状态
        TAdminLoginInfo info = this.selectByAdminNo(tAdminLoginHis.getAdminno());
        info.setLoginstatus(CommonConstants.HAS_LOGINED_STATUS);
        info.setUpdtimestamp(new Date());
        info.setUpdpgmid("OZ_TT_AD_LG");
        info.setUpduserkey(tAdminLoginHis.getAdminno());
        records = tAdminLoginInfoDao.updateByPrimaryKey(info);
        if (records <= 0)
            return false;
        return true;
    }

    @Override
    public TAdminLoginInfo selectByAdminNo(String adminNo) throws Exception {
        return tAdminLoginInfoDao.selectByAdminNo(adminNo);
    }

    @Override
    public TAdminBasicInfo selectBaseInfoByAdminNo(String adminNo) throws Exception {
        return tAdminBasicInfoDao.selectBaseInfoByAdminNo(adminNo);
    }

}
