package com.org.oztt.dao;

import java.util.List;

import com.org.oztt.entity.TGoodsClassfication;

public interface TGoodsClassficationDao {
    /**
     * 根据主键删除记录
     */
    int deleteByPrimaryKey(Long no);

    /**
     * 保存记录,不管记录里面的属性是否为空
     */
    int insert(TGoodsClassfication record);

    /**
     * 保存属性不为空的记录
     */
    int insertSelective(TGoodsClassfication record);

    /**
     * 根据主键查询记录
     */
    TGoodsClassfication selectByPrimaryKey(Long no);

    /**
     * 根据主键更新属性不为空的记录
     */
    int updateByPrimaryKeySelective(TGoodsClassfication record);

    /**
     * 根据主键更新记录
     */
    int updateByPrimaryKey(TGoodsClassfication record);
    
    /**
     * 取得所有的父分类
     */
    List<TGoodsClassfication> getAllFatherkey();
    
    /**
     * 取得指定父类下面的所有子类
     */
    List<TGoodsClassfication> getChildrenKey(String fatherId);
    
    /**
     * 通过分类ID取得分类名称
     * @param classId
     * @return
     */
    TGoodsClassfication getGoodsClassficationByClassId(String classId);
}