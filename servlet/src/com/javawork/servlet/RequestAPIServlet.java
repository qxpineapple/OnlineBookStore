package com.javawork.servlet;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import net.sf.json.JSON;
import net.sf.json.JSONObject;



public class RequestAPIServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setCharacterEncoding("UTF-8");
        resp.setHeader("Content-Type","text/html;charset=UTF-8");
        System.out.println("1");

        //构建map对象,并且把需要发送给前端的东西添加进入
        Map<String,String> params=new HashMap<>();


        String flag = req.getParameter("name");

        String text = "";
        if(flag.equals("狼图腾")){
            text ="{\"name1\":\"狼图腾\",\"price\":23}";
            params.put("name1","kylin");
            params.put("password","123456");
        }


        //java对象变成json对象
//        JSONObject jsonObject=JSONObject.fromObject(params);

        //json对象转换成json字符串
//        String jsonStr=jsonObject.toString();
//        System.out.println(jsonStr);
//        JSONObject jsonObject = new JSONObject();
//        System.out.println("2");
//        jsonObject.put("username","yct");
        PrintWriter out = resp.getWriter();
        out.print(text);
    }
}
