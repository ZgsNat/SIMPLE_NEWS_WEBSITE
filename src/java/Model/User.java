/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

/**
 *
 * @author ASUS
 */
public class User {

    private String username;
    private String password;
    private String name;
    private String Gender;
    private String dob;
    private String isAuthor;

    public User() {
        connect();
    }

    public User(String username, String password, String name, String Gender, String dob, String isAuthor) {
        this.username = username;
        this.password = password;
        this.name = name;
        this.Gender = Gender;
        this.dob = dob;
        this.isAuthor = isAuthor;
        connect();
    }
    public User(String username, String password) {
        this.username = username;
        this.password = password;
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

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGender() {
        return Gender;
    }

    public void setGender(String Gender) {
        this.Gender = Gender;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String isIsAuthor() {
        return isAuthor;
    }

    public void setIsAuthor(String isAuthor) {
        this.isAuthor = isAuthor;
    }

    public String getNameByAccount() {
        try {
            String strSelect = "Select * from Users "
                    + "where UserName = '" + username + "'";
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                String name = rs.getString(1);
                return name;
            }
        } catch (Exception e) {
            System.out.println("getNameByAccount:" + e.getMessage());
        }
        return "";
    }

    public ArrayList<User> getUser() {
        ArrayList<User> data = new ArrayList<User>();
        try {
            String strSelect = "Select * from Users "
                    + "where UserName =   '" + username + "'";
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                String UserName = rs.getString(1);
                String Password = rs.getString(2);
                String Name = rs.getString(3);
                String Gender = "Female";
                if (rs.getBoolean(4)) {
                    Gender = "Male";
                }
                SimpleDateFormat f = new SimpleDateFormat("dd-MM-yyyy");
                String Dob = "";
                if (rs.getDate(5) != null) {
                    Dob = f.format(rs.getDate(5));
                }
                String isauthor = rs.getString(6);
                data.add(new User(UserName, Password, Name, Gender, Dob, isauthor));
            }
        } catch (Exception e) {
            System.out.println("getNameByAccount:" + e.getMessage());
        }
        return data;
    }

    public ArrayList<User> getListUser() {
        ArrayList<User> data = new ArrayList<User>();
        try {
            String strSelect = "Select * from Users";
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                String UserName = rs.getString(1);
                String Password = rs.getString(2);
                String Name = rs.getString(3);
                String Gender = "Female";
                if (rs.getBoolean(4)) {
                    Gender = "Male";
                }
                SimpleDateFormat f = new SimpleDateFormat("dd-MM-yyyy");
                String Dob = "";
                if (rs.getDate(5) != null) {
                    Dob = f.format(rs.getDate(5));
                }
                String isauthor = rs.getString(6);
                data.add(new User(UserName, Password, Name, Gender, Dob, isauthor));
            }
        } catch (Exception e) {
            System.out.println("getUser:" + e.getMessage());
        }
        return data;
    }

    public User getUserDetail() {
        try {
            String strSelect = "select * from Users where UserName = '"+username+"'";
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                String UserName = rs.getString(1);
                String Password = rs.getString(2);
                String Name = rs.getString(3);
                String Gender = "Female";
                if (rs.getBoolean(4)) {
                    Gender = "Male";
                }
                SimpleDateFormat f = new SimpleDateFormat("dd-MM-yyyy");
                String Dob = "";
                if (rs.getDate(5) != null) {
                    Dob = f.format(rs.getDate(5));
                }
                String isauthor = rs.getString(6);
                return new User(UserName, Password, Name, Gender, Dob, isauthor);
            }
        } catch (Exception e) {
            System.out.println("getNameByAccount:" + e.getMessage());
        }
        return null;
    }

    public boolean checkUser() {
        try {
            String strSelect = "Select * from Users "
                    + "where UserName =? and Password =?";
            // + "and Password=?";
            pstm = cnn.prepareStatement(strSelect);
            pstm.setString(1, username);
            pstm.setString(2, password);
            //pstm.setString(2, password);
            rs = pstm.executeQuery();
            while (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            System.out.println("checkUser:" + e.getMessage());
        }
        return false;
    }

    public boolean checkUserExist() {
        try {
            String strSelect = "Select * from Users "
                    + "where UserName =?";
            // + "and Password=?";
            pstm = cnn.prepareStatement(strSelect);
            pstm.setString(1, username);
            rs = pstm.executeQuery();
            while (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            System.out.println("checkUser:" + e.getMessage());
        }
        return false;
    }

    public void insert(String username, String password, String name, String gender, String dob, String isauthor) {
        try {
            String strUpdate = "insert into Users values(?,?,?,?,?,?)";
            pstm = cnn.prepareStatement(strUpdate);

            pstm.setString(1, username);
            pstm.setString(2, password);
            pstm.setString(3, name);
            pstm.setInt(4, Integer.parseInt(gender));
            pstm.setString(5, dob);
            pstm.setString(6, isauthor);
            pstm.execute();
        } catch (Exception e) {
            System.out.println("Insert:" + e.getMessage());
        }
    }

    public void update(String username, String password, String name, String gender, String dob, String isauthor) {
                try {
            String strUpdate = "Update Users set Name = ?, Gender =?, DOB =? where Username = ?";
            pstm = cnn.prepareStatement(strUpdate);

            pstm.setString(1, name);
            pstm.setInt(2, Integer.parseInt(gender));
            pstm.setString(3, dob);
            pstm.setString(4, username);
            pstm.execute();
        } catch (Exception e) {
            System.out.println("Update:" + e.getMessage());
        }
    }

}
