package com.atguigu.pojo;

public class BookDetail {
    private Integer id;    //书的id
    private String author;
    private String press;   //出版社
    private String time;  //出版时间
    private String introduction;  //简介

    public BookDetail() {
    }

    public BookDetail(Integer id, String author, String press, String time, String introduction) {
        this.id = id;
        this.author = author;
        this.press = press;
        this.time = time;
        this.introduction = introduction;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getPress() {
        return press;
    }

    public void setPress(String press) {
        this.press = press;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }

    @Override
    public String toString() {
        return "BookDetail{" +
                "id=" + id +
                ", author='" + author + '\'' +
                ", press='" + press + '\'' +
                ", time='" + time + '\'' +
                ", introduction='" + introduction + '\'' +
                '}';
    }
}
