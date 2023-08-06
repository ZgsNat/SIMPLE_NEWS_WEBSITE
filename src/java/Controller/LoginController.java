/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controller;

import Model.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

/**
 *
 * @author ASUS
 */
public class LoginController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");

        //xu ly thong tin
        User u = new User(username, password);
        boolean check = u.checkUser();
        if (check == true) {
            u = u.getUserDetail();
            HttpSession session = req.getSession();
            session.setAttribute("account", u);
            session.setAttribute("username", username);
            session.setAttribute("password", password);
            session.setAttribute("isauthor", u.isIsAuthor());
            String name = u.getNameByAccount();
            req.setAttribute("name", name);
//           ArrayList<User> data = u.getListUser();
//           req.setAttribute("data", data);
            resp.sendRedirect("index.jsp");
            //req.getRequestDispatcher("index.jsp").forward(req, resp);
        } else {
            req.setAttribute("check", "Please check your Username or Password!");
            req.getRequestDispatcher("Login.jsp").forward(req, resp);
        }
        //ket qua tra ve 
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        String username = (String)session.getAttribute("username");
        System.out.println("that af" + username);
        String password = req.getParameter("password");
        User u = new User(username, password);
        u = u.getUserDetail();
        session.setAttribute("account", u);
        session.setAttribute("username", u.getUsername());
        session.setAttribute("password", password);
        session.setAttribute("isauthor", u.isIsAuthor());
        String name = u.getNameByAccount();
        req.setAttribute("name", name);
        req.getRequestDispatcher("index.jsp").forward(req, resp);
    }

}
