/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author ASUS
 */
public class Count_News {

    private String Dem;
    private String IdNews;

    public Count_News() {
        connect();
    }

    public Count_News(String Dem, String IdNews) {
        this.Dem = Dem;
        this.IdNews = IdNews;
        connect();
    }

    public String getDem() {
        return Dem;
    }

    public void setDem(String Dem) {
        this.Dem = Dem;
    }

    public String getIdNews() {
        return IdNews;
    }

    public void setIdNews(String IdNews) {
        this.IdNews = IdNews;
    }
    Connection cnn;//ket noi
    Statement stm;//thuc thi cac cau lenh sql
    PreparedStatement pstm;
    ResultSet rs;//luu tru xu ly du lieu

    private void connect() {
        try {
            cnn = (new DBContext()).connection;
            if (cnn != null) {
                //System.err.println("Connect success");
            } else {
                System.out.println("Connect fail");
            }
        } catch (Exception e) {
        }
    }

    public int getCountByIdNews(String IDnews) {
        try {
            String strSelect = "select Dem from Count_News where ID_News = '" + IDnews + "'";
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                int Dem = rs.getInt(1);
                return Dem;
            }
        } catch (Exception e) {
            System.out.println("getNameByAccount:" + e.getMessage());
        }
        return 0;
    }
    //update Count_News set Dem = ? where ID_News = ?

    public void updatecountnews(int Dem, String IDnews) {
        try {
            String strUpdate = "update Count_News set Dem = ? where ID_News = ?";
            pstm = cnn.prepareStatement(strUpdate);

            pstm.setInt(1, Dem);
            pstm.setString(2, IDnews);
            pstm.execute();
        } catch (Exception e) {
            System.out.println("Update:" + e.getMessage());
        }
    }

}
