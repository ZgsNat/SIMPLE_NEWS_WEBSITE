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
import java.io.EOFException;
import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

/**
 *
 * @author ASUS
 */
public class RegisterController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        boolean check = true;
        String errormess = "";
        String username = "", password = "", name = "", gender = "", dob = "", isauthor = "";
        String checkerrormess = "";
        try {
            username = req.getParameter("username");
            User u = new User(username, " ");
            if (username.contains(" ") ||u.checkUserExist() && req.getParameter("UPDATE") == null) {
                check = false;
                throw new EOFException();
            }
        } catch (Exception e) {
            checkerrormess = "Existed Account or Wrong input username!";
        }
        try {
            password = req.getParameter("password");
            String repassword = req.getParameter("repassword");
            if(req.getParameter("UPDATE") == null)
            if (!password.equals(repassword) || password.isEmpty() || repassword.isEmpty() || password.contains(" ")) {
                check = false;
                throw new EOFException();
            }
        } catch (Exception e) {
            checkerrormess += "<br>Password not match!";
        }

        try {
            name = req.getParameter("name");
            gender = req.getParameter("gender");
            if (gender.equals("Male") || gender.equals("1")) {
                gender = "1";
            } else {
                gender = "0";
            }
        } catch (Exception e) {
            check = false;
        }
        try {
            isauthor = "0";
        } catch (Exception e) {
            check = false;
        }
        try {
            SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd");
            long millis = System.currentTimeMillis();
            Date date = new Date(millis);
            java.util.Date dob2 = f.parse(req.getParameter("dob"));
            if (!date.after(dob2)) {
                check = false;
                throw new EOFException();
            }else{
                dob = req.getParameter("dob");
            } 
        } catch (Exception e) {
            checkerrormess += "<br>Wrong input date!";
        }
        System.out.println(check);
        if (req.getParameter("UPDATE") != null) {
            if (check) {
                System.out.println("update");
                User u = new User(username, password, name, gender, dob, isauthor);
                u.update(username, password, name, gender, dob, isauthor);
                HttpSession session = req.getSession();
                session.setAttribute("account", u);
                req.setAttribute("user", u);
                req.getRequestDispatcher("DetailUser.jsp").forward(req, resp);  
            } else {
                System.out.println("Noupdate");
                User u = new User(username,"");
                u = u.getUserDetail();
                HttpSession session = req.getSession();
                session.setAttribute("account", u);
                req.setAttribute("user", u);
                req.getRequestDispatcher("DetailUser.jsp").forward(req, resp);
            }
            return;
        }

        if (!check) {
            req.setAttribute("check", checkerrormess);
            req.getRequestDispatcher("Register.jsp").forward(req, resp);
        } else {
            User u = new User(username, password, name, gender, dob, isauthor);
            u.insert(username, password, name, gender, dob, isauthor);
            HttpSession session = req.getSession();
            session.setAttribute("account", u);
            session.setAttribute("username", username);
            session.setAttribute("password", password);
            session.setAttribute("isauthor", isauthor);
//            HttpSession session = req.getSession();
//            session.setAttribute("account", u);
//            String nameU = u.getNameByAccount();
//            req.setAttribute("name", nameU);
//            ArrayList<User> data = u.getListUser();
//            req.setAttribute("data", data);
            req.setAttribute("user", u);
            req.getRequestDispatcher("DetailUser.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }

}
