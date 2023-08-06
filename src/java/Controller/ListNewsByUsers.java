/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controller;

import Model.News;
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
public class ListNewsByUsers extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = "", name = "", date = "", desc = "", detail = "", image = "";
        boolean checkCondi = true;
        String Check = "";
        try {
            name = req.getParameter("name");
        } catch (Exception e) {
            checkCondi = false;
            Check += "Error Name!" + "<br>";
        }
        try {
            SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd");
            long millis = System.currentTimeMillis();
            Date Date = new Date(millis);
            java.util.Date dob2 = f.parse(req.getParameter("date"));
            if (!Date.after(dob2)) {
                checkCondi = false;
                throw new EOFException();
            } else {
                date = req.getParameter("date");
            }
        } catch (Exception e) {
            Check += "Wrong input date!<br>";
        }
        try {
            desc = req.getParameter("desc");
            detail = req.getParameter("detail");
        } catch (Exception e) {
            checkCondi = false;
            Check += "wrong input Desc or Detail!";
        }
        try {
            desc = req.getParameter("image");
        } catch (Exception e) {
            checkCondi = false;
            Check += "wrong input image!";
        }

        if (!checkCondi) {

        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            if (req.getParameter("mod").equals("1")) {
                News nw = new News();
                String IDnews = req.getParameter("id");
                nw.delete(IDnews);
                HttpSession session = req.getSession();
                String username = session.getAttribute("username").toString();
                ArrayList<News> data = nw.getListNewsByUserID(username);
                req.setAttribute("data", data);
                req.getRequestDispatcher("ListNewsByUsers.jsp").forward(req, resp);
                return;
            }
        } catch (Exception e) {
        }
        if (req.getParameter("isAdmin") != null) {
            News nw = new News();
            ArrayList<News> data = nw.getListNews();
            req.setAttribute("data", data);
            req.getRequestDispatcher("ListNewsByUsers.jsp").forward(req, resp);
            return;
        }
        HttpSession session = req.getSession();
        String username = session.getAttribute("username").toString();
        News nw = new News();
        ArrayList<News> data = nw.getListNewsByUserID(username);
        req.setAttribute("data", data);
        req.getRequestDispatcher("ListNewsByUsers.jsp").forward(req, resp);
    }

}
