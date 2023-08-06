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
import java.io.IOException;
import java.util.ArrayList;

/**
 *
 * @author ASUS
 */
public class DescNewsController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ArrayList<News> data = new ArrayList<News>();
        if (req.getParameter("headersearch") != null) {
            News nw = new News();
            data = nw.getListNews();
            req.setAttribute("datahearder", data);
        }
        if (req.getParameter("idCato") == null) {
            News nw = new News();
            data = nw.getListNews();
            req.setAttribute("dataNews", data);
        } else {
            System.out.println(req.getParameter("idCato"));
            News nw = new News();
            data = nw.getListNewsByCatoId(req.getParameter("idCato"));
            req.setAttribute("dataNews", data);
        }
        if (req.getParameter("Relativetopic") == null) {
            News topcrnews = new News();
            ArrayList<News> datatopcrnews = new ArrayList<News>();
            datatopcrnews = topcrnews.getTop4News();
            req.setAttribute("datatop", datatopcrnews);
        } else {
            News topcrnews = new News();
            ArrayList<News> datatopcrnews = new ArrayList<News>();
            datatopcrnews = topcrnews.getTop4NewsRelative(req.getParameter("IdNews"));
            req.setAttribute("Relativetopic", req.getParameter("Relativetopic"));
            req.setAttribute("datatop", datatopcrnews);
        }

    }

}
