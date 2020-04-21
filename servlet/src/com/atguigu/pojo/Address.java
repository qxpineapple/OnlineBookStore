package com.atguigu.pojo;

public class Address {
    private Integer addressId;  //地址Id，自增
    private Integer id;     //用户id，必须存在
    private String receiver;   //收件人
    private String representativeReceiver;  //代收人
    private String email;  //邮箱
    private String phone;  //电话
    private String province;  //省份
    private String city;  //市级
    private String street;  //街道、公司、镇
    private String detail;  //详细地址

    public Address() {
    }

    public Address(Integer addressId, Integer id, String receiver, String representativeReceiver, String email, String phone, String province, String city, String street, String detail) {
        this.addressId = addressId;
        this.id = id;
        this.receiver = receiver;
        this.representativeReceiver = representativeReceiver;
        this.email = email;
        this.phone = phone;
        this.province = province;
        this.city = city;
        this.street = street;
        this.detail = detail;
    }

    public Integer getAddressId() {
        return addressId;
    }

    public void setAddressId(Integer addressId) {
        this.addressId = addressId;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getReceiver() {
        return receiver;
    }

    public void setReceiver(String receiver) {
        this.receiver = receiver;
    }

    public String getRepresentativeReceiver() {
        return representativeReceiver;
    }

    public void setRepresentativeReceiver(String representativeReceiver) {
        this.representativeReceiver = representativeReceiver;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    @Override
    public String toString() {
        return "Address{" +
                "addressId=" + addressId +
                ", userId=" + id +
                ", receiver='" + receiver + '\'' +
                ", representativeReceiver='" + representativeReceiver + '\'' +
                ", email='" + email + '\'' +
                ", phone='" + phone + '\'' +
                ", province='" + province + '\'' +
                ", city='" + city + '\'' +
                ", street='" + street + '\'' +
                ", detail='" + detail + '\'' +
                '}';
    }
}
