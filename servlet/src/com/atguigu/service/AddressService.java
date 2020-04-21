package com.atguigu.service;

import com.atguigu.pojo.Address;

public interface AddressService {
    void addAddress(Address address);
    void updateAddress(Address address);
    Address queryAddressByUserId(int userId);

}
