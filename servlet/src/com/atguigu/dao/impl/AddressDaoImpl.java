package com.atguigu.dao.impl;

import com.atguigu.dao.AddressDao;
import com.atguigu.pojo.Address;


public class AddressDaoImpl extends BaseDao implements AddressDao {
    @Override
    public int addAddress(Address address) {
        String sql = "insert into book..t_address (id, receiver, representativeReceiver, email, phone, province, city, street, detail) values (?,?,?,?,?,?,?,?,?)";
        int update = update(sql,address.getId(),address.getReceiver(),address.getRepresentativeReceiver(),address.getEmail(),address.getPhone(),address.getProvince(),address.getCity(),address.getStreet(),address.getDetail());
        return update;
    }

    @Override
    public int deleteAddressById(Integer id) {
        String sql = "delete from book..t_address where addressId = ?";
        return update(sql, id);
    }

    @Override
    public int updateAddress(Address address) {
        String sql = "update book..t_address set id=?, receiver=?, representativeReceiver=?, email=?, phone=?, province=?, city=?, street=?, detail=? where addressId = ?";
        return update(sql,address.getId(),address.getReceiver(),address.getRepresentativeReceiver(),address.getEmail(),address.getPhone(),address.getProvince(),address.getCity(),address.getStreet(),address.getDetail(),address.getAddressId());
    }

    @Override
    public Address queryAddressByUserId(Integer userId) {
        String sql = "select * from book..t_address where id = "+userId;
        return queryForOne(Address.class, sql);
    }
}
