package com.atguigu.test;

import com.atguigu.dao.AddressDao;
import com.atguigu.dao.impl.AddressDaoImpl;
import com.atguigu.pojo.Address;
import org.junit.Test;


public class AddressDaoImplTest {

    AddressDao addressDao = new AddressDaoImpl();
    @Test
    public void addAddress() {
        addressDao.addAddress(new Address(null,1,"小明","张三","admin@admin","123456","湖北省","武汉市","洪山区","武汉大学信息学部"));
    }

    @Test
    public void deleteAddressById() {
        addressDao.deleteAddressById(1);
    }

    @Test
    public void updateAddress() {
        addressDao.updateAddress(new Address(1,1,"admin","sidalin","qweer@333.com","123452328","河北省","不知道什么市","真新镇","???"));
    }

    @Test
    public void queryAddressByUserId() {

    }
}