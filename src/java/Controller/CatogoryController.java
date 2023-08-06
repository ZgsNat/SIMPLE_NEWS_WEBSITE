/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controller;

import Model.Catogory;
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
public class CatogoryController extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if(req.getParameter("ID_News")==null){
        Catogory ct = new Catogory();
        ArrayList<Catogory> data = new ArrayList<>();
        data = ct.getListCatogory();
        req.setAttribute("data", data);
//        req.getRequestDispatcher("Catogory.jsp").forward(req, resp);
        }else{
            Catogory ct = new Catogory();
            ArrayList<Catogory> dataCato = new ArrayList<>();
            dataCato = ct.getListCatogoryOfNews(req.getParameter("ID_News"));
            req.setAttribute("dataCato", dataCato);
        }
    }
    
    
    
}
