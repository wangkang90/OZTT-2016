package com.org.oztt.service;

import java.util.List;

import com.org.oztt.entity.TAddressInfo;

public interface AddressService {


    /**
     * 取得当前用户所有的地址
     * @param customerno
     * @return
     */
    public List<TAddressInfo> getAllAddress(String customerno, String deliveryMethod) throws Exception;
    
    /**
     * 获取地址
     * @param id
     * @return
     * @throws Exception
     */
    public TAddressInfo getAddressById(Long id) throws Exception;
    
    /**
     * 更新地址
     * @param record
     * @return
     * @throws Exception
     */
    public void updateAddress(TAddressInfo record) throws Exception;
    
    /**
     * 插入地址
     * @param record
     * @return
     * @throws Exception
     */
    public void insertAddress(TAddressInfo record) throws Exception;
    
    /**
     * 删除地址
     * @param record
     * @return
     * @throws Exception
     */
    public void deleteAddress(Long id) throws Exception;
}
