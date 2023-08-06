/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

/**
 *
 * @author ASUS
 */
public class Catogory {

    private String id;
    private String Name;

    public Catogory() {
        connect();
    }

    public Catogory(String id, String Name) {
        this.id = id;
        this.Name = Name;
        connect();
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

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public ArrayList<Catogory> getListCatogory() {
        ArrayList<Catogory> data = new ArrayList<Catogory>();
        try {
            String strSelect = "Select * from Catogories";
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                String ID = rs.getString(1);
                String Name = rs.getString(2);

                data.add(new Catogory(ID, Name));
            }
        } catch (Exception e) {
            System.out.println("getCato:" + e.getMessage());
        }
        return data;
    }


    public ArrayList<Catogory> getListCatogoryOfNews(String parameter) {
        ArrayList<Catogory> data = new ArrayList<Catogory>();
        try {
            String strSelect = "select ct.ID, ct.Name from Catogories ct, Catogories_News cn where ct.ID = cn.ID_Catogories and cn.ID_News = '"+parameter+"'";
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                String ID = rs.getString(1);
                String Name = rs.getString(2);

                data.add(new Catogory(ID, Name));
            }
        } catch (Exception e) {
            System.out.println("getCato:" + e.getMessage());
        }
        return data;
    }

}
