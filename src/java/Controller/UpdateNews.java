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
public class UpdateNews extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        boolean check = true;
        String checkerrormess = "";
        String name = "", desc = "", Date = "", image = "";
        try {
            SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd");
            long millis = System.currentTimeMillis();
            Date date = new Date(millis);
            java.util.Date dob2 = f.parse(req.getParameter("date"));
            if (!date.after(dob2)) {
                check = false;
                throw new EOFException();
            } else {
                Date = req.getParameter("date");
            }
        } catch (Exception e) {
            checkerrormess += "<br>Wrong input date!";
        }
        name = req.getParameter("name");
        desc = req.getParameter("desc");
        image = req.getParameter("image");

        if (!check) {
            String ID_News = req.getParameter("IdNews");
            News nw = new News();
            nw = nw.getDetailNewsByIdNews(ID_News);
            req.setAttribute("ThisNews", nw);
            req.getRequestDispatcher("UpdateNews.jsp").forward(req, resp);
        } else {
            System.out.println("have a check");
            System.out.println();
            String ID_News = req.getParameter("IdNews");
            News nw = new News();
            HttpSession session = req.getSession();
            String username = session.getAttribute("username").toString();
            nw = nw.getDetailNewsByIdNews(ID_News);
            nw.update(nw.getId(), name, desc, Date, image);
            ArrayList<News> data = nw.getListNewsByUserID(username);
            req.setAttribute("data", data);
            req.setAttribute("ThisNews", nw);
            req.getRequestDispatcher("ListNewsByUsers.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String ID_News = req.getParameter("IdNews");
        News nw = new News();
        nw = nw.getDetailNewsByIdNews(ID_News);
        req.setAttribute("ThisNews", nw);
        req.getRequestDispatcher("UpdateNews.jsp").forward(req, resp);
    }

}
