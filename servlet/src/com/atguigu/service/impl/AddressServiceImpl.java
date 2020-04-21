package com.atguigu.service.impl;

import com.atguigu.dao.AddressDao;
import com.atguigu.dao.impl.AddressDaoImpl;
import com.atguigu.pojo.Address;
import com.atguigu.service.AddressService;

public class AddressServiceImpl implements AddressService {
    private AddressDao addressDao = new AddressDaoImpl();
    @Override
    public void addAddress(Address address) {
        addressDao.addAddress(address);
    }

    @Override
    public void updateAddress(Address address) {
        addressDao.updateAddress(address);
    }

    @Override
    public Address queryAddressByUserId(int userId) {
        return addressDao.queryAddressByUserId(userId);
    }
}
