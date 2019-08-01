package servlet;

import java.io.IOException;
import java.io.PrintWriter;

public class LoginServlet extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        String name = request.getParameter("name");
        String password = request.getParameter("password");
        response.setContentType("text/html");
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        if(name != null && password != null){
            if(name.equals("bigjim")&&password.equals("666666")){
                out.println("登陆成功！");
            }else{
                out.println("信息错误！");
                out.println("aaa");
                out.println("bbbb");
            }
        }
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        System.out.println("get请求");
    }
}
