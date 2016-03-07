package com.org.oztt.dao;

import com.org.oztt.entity.TNoAnnouncement;

public interface TNoAnnouncementDao {
    /**
     * 根据主键删除记录
     */
    int deleteByPrimaryKey(Long no);

    /**
     * 保存记录,不管记录里面的属性是否为空
     */
    int insert(TNoAnnouncement record);

    /**
     * 保存属性不为空的记录
     */
    int insertSelective(TNoAnnouncement record);

    /**
     * 根据主键查询记录
     */
    TNoAnnouncement selectByPrimaryKey(Long no);

    /**
     * 根据主键更新属性不为空的记录
     */
    int updateByPrimaryKeySelective(TNoAnnouncement record);

    /**
     * 根据主键更新记录
     */
    int updateByPrimaryKey(TNoAnnouncement record);
}