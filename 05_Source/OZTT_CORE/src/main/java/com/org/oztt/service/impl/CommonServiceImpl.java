package com.org.oztt.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.apache.commons.collections.CollectionUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

import com.org.oztt.base.common.MyCategroy;
import com.org.oztt.base.common.MyMap;
import com.org.oztt.contants.SysCodeConstants;
import com.org.oztt.dao.TGoodsClassficationDao;
import com.org.oztt.dao.TSysCodeDao;
import com.org.oztt.entity.TGoodsClassfication;
import com.org.oztt.entity.TSysCode;
import com.org.oztt.service.BaseService;
import com.org.oztt.service.CommonService;

@Service
public class CommonServiceImpl extends BaseService implements CommonService {

	private static List<MyMap> sexMapList = null;
	
	private static List<MyMap> educationMapList = null;
	
	@Resource
	private TSysCodeDao tSysCodeDao;
	
	@Resource
	private TGoodsClassficationDao tGoodsClassficationDao;
	
	public List<MyMap> getSex() throws Exception {
		if (sexMapList == null) {
			sexMapList = entityList2mapList(tSysCodeDao.selectByCodeId(SysCodeConstants.SEX_CODE));
		}
		return sexMapList;
	}

	public List<MyMap> getEducation() throws Exception {
		if (educationMapList == null) {
			educationMapList = entityList2mapList(tSysCodeDao.selectByCodeId(SysCodeConstants.EDUCTION_CODE));
		}
		return educationMapList;
	}
	

	private List<MyMap> entityList2mapList(List<TSysCode> list) {
		List<MyMap> select = new ArrayList<MyMap>();
		if (list != null && list.size() > 0) {
			for (int i = 0; i < list.size(); i++) {
				MyMap my = new MyMap();
				my.setKey(list.get(i).getCodedetailid());
				my.setValue(list.get(i).getCodedetailname());
				select.add(my);
			}
		}
		return select;
	}
	
	
	// 将目录分层结构取出
	private static List<MyCategroy> categoryList = new ArrayList<MyCategroy>();
	
	/**
	 * 获取菜单目录结构
	 */
	public List<MyCategroy> getMyCategroy() throws Exception {
		if (CollectionUtils.isEmpty(categoryList)) {
			List<TGoodsClassfication> faList = tGoodsClassficationDao.getAllFatherkey();
			if (!CollectionUtils.isEmpty(faList)) {
				for (TGoodsClassfication fa : faList) {
					categoryList.add(getNextCategory(fa));
				}
			}
			return categoryList;
		} else {
			return categoryList;
		}
	}
	
	public MyCategroy getNextCategory(TGoodsClassfication classFication) {
		MyCategroy reCa = new MyCategroy();
		TGoodsClassfication copyDesc = new TGoodsClassfication();
		BeanUtils.copyProperties(classFication, copyDesc);
		reCa.setFatherClass(copyDesc);
		// 接着检索出子类信息
		List<TGoodsClassfication> childrenList = tGoodsClassficationDao.getChildrenKey(classFication.getClassid());
		List<MyCategroy> cList = new ArrayList<MyCategroy>();
		for (TGoodsClassfication c : childrenList) {
			MyCategroy ca1Child = new MyCategroy();
			ca1Child.setFatherClass(c);
			List<MyCategroy> childClass = getNextCategory(c).getChildrenClass();
			if (!CollectionUtils.isEmpty(childClass)){
				ca1Child.setChildrenClass(childClass);
			}
			cList.add(ca1Child);
		}
		reCa.setChildrenClass(cList);
		return reCa;
		
	}

}
