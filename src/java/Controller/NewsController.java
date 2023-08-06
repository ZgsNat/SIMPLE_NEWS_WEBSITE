/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controller;

import Model.Catogory;
import Model.News;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;

/**
 *
 * @author ASUS
 */
public class NewsController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        String Username = session.getAttribute("username").toString();
        
        DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
        Calendar cal = Calendar.getInstance();
        
        String date = dateFormat.format(cal.getTime());
        String name = req.getParameter("name");
        String desc = req.getParameter("desc");
        String detail = req.getParameter("detail");
        String imagepath = req.getParameter("image");
        News nw = new News();
        nw.addnews(name,desc,detail,imagepath,Username,date);
        nw = nw.getLastDetailNews();
        String[] catogory = req.getParameterValues("catogory");
        for (int i = 0; i < catogory.length; i++) {
            System.out.println("letgo" + nw.getId());
            nw.addtoCatoNews(catogory[i],nw.getId());
            nw.addCountToView(0,nw.getId());
        }
        Catogory ct = new Catogory();
        ArrayList<Catogory> data = new ArrayList<>();
        data = ct.getListCatogory();
        req.setAttribute("data", data);
        req.getRequestDispatcher("PostNews.jsp").forward(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String ID_News = req.getParameter("IdNews");
        News nw = new News();
        nw = nw.getDetailNewsByIdNews(ID_News);
        req.setAttribute("ThisNews", nw);
    }

}
