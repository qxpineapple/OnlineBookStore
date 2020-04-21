package com.atguigu.dao;

import com.atguigu.pojo.Address;

import java.util.List;

public interface AddressDao {
    public int addAddress(Address address);

    public int deleteAddressById(Integer id);

    public int updateAddress(Address address);

    public Address queryAddressByUserId(Integer userId);

}
