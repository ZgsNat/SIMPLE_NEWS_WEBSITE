/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author ASUS
 */
public class News {

    private String id;
    private String name;
    private String desc;
    private String detail;
    private String imagepath;
    private String user_author;
    private String date;

    public News() {
        connect();
    }

    public News(String id, String name, String desc, String detail, String imagepath, String user_author, String date) {
        this.id = id;
        this.name = name;
        this.desc = desc;
        this.detail = detail;
        this.imagepath = imagepath;
        this.user_author = user_author;
        this.date = date;
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
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public String getImagepath() {
        return imagepath;
    }

    public void setImagepath(String imagepath) {
        this.imagepath = imagepath;
    }

    public String getUser_author() {
        return user_author;
    }

    public void setUser_author(String user_author) {
        this.user_author = user_author;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public ArrayList<News> getListNews() {
        ArrayList<News> data = new ArrayList<News>();
        try {
            String strSelect = "select * from News order by Date desc";
            //top (3)
            strSelect = "select N.ID, N.[Name],N.[Desc], N.Detail, N.Image, N.User_author, N.Date from News N, Count_News CN where N.ID = CN.ID_News order by Dem desc ";
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                String id = rs.getString(1);
                String name = rs.getString(2);
                String desc = rs.getString(3);
                String detail = rs.getString(4);
                String imagepath = rs.getString(5);
                String author = rs.getString(6);
                String date = rs.getString(7);

                data.add(new News(id, name, desc, detail, imagepath, author, date));
            }
        } catch (Exception e) {
            System.out.println("getNewsList:" + e.getMessage());
        }
        return data;
    }
    //select top (3) N.ID, N.[Name],N.[Desc], N.Detail, N.Image, N.User_author, N.Date from News N, Count_News CN where N.ID = CN.ID_News order by Dem desc 
    public ArrayList<News> getListNewsByCatoId(String parameter) {
        ArrayList<News> data = new ArrayList<News>();
        try {
            String strSelect = "select nw.ID,nw.[Name],nw.[Desc],nw.Detail,nw.Image,nw.User_author,nw.Date from News nw, Catogories_News cn where nw.ID = cn.ID_News and cn.ID_Catogories ='" + parameter + "'";
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                String id = rs.getString(1);
                String name = rs.getString(2);
                String desc = rs.getString(3);
                String detail = rs.getString(4);
                String imagepath = rs.getString(5);
                String author = rs.getString(6);
                String date = rs.getString(7);

                data.add(new News(id, name, desc, detail, imagepath, author, date));
            }
        } catch (Exception e) {
            System.out.println("getNewsbyidcato:" + e.getMessage());
        }
        return data;
    }

    public News getDetailNewsByIdNews(String ID_News) {
        try {
            String strSelect = "select * from News where ID = '" + ID_News + "'";
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                String id = rs.getString(1);
                String name = rs.getString(2);
                String desc = rs.getString(3);
                String detail = rs.getString(4);
                String imagepath = rs.getString(5);
                String author = rs.getString(6);
                String date = rs.getString(7);

                return new News(id, name, desc, detail, imagepath, author, date);
            }
        } catch (Exception e) {
            System.out.println("getNewsidnews:" + e.getMessage());
        }
        return null;
    }

    public News getDetailNewsByNameNews(String nameNews) {
        try {
            String strSelect = "select * from News where [Name] = N'" + nameNews + "'";
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                String id = rs.getString(1);
                String name = rs.getString(2);
                String desc = rs.getString(3);
                String detail = rs.getString(4);
                String imagepath = rs.getString(5);
                String author = rs.getString(6);
                String date = rs.getString(7);

                return new News(id, name, desc, detail, imagepath, author, date);
            }
        } catch (Exception e) {
            System.out.println("getNewsidnews:" + e.getMessage());
        }
        return null;
    }

    public ArrayList<News> getTop4News() {
        ArrayList<News> data = new ArrayList<News>();
        try {
            String strSelect = "select top (4) * from News order by Date desc";
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                String id = rs.getString(1);
                String name = rs.getString(2);
                String desc = rs.getString(3);
                String detail = rs.getString(4);
                String imagepath = rs.getString(5);
                String author = rs.getString(6);
                String date = rs.getString(7);

                data.add(new News(id, name, desc, detail, imagepath, author, date));
            }
        } catch (Exception e) {
            System.out.println("getNewsTop:" + e.getMessage());
        }
        return data;
    }

    public ArrayList<News> getTop4NewsRelative(String parameter) {
        ArrayList<News> data = new ArrayList<News>();
        try {
            String strSelect = "select DISTINCT N.ID,N.[Name],N.[Desc],N.Detail,N.[Image],N.User_author,N.[Date]"
                    + " from News N,Catogories_News ct where N.ID = ct.ID_News"
                    + " and ID_Catogories in (select DISTINCT ID_Catogories"
                    + " from News N1,Catogories_News ct where N1.ID = ct.ID_News and N1.ID = '" + parameter + "')";
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                String id = rs.getString(1);
                String name = rs.getString(2);
                String desc = rs.getString(3);
                String detail = rs.getString(4);
                String imagepath = rs.getString(5);
                String author = rs.getString(6);
                String date = rs.getString(7);

                data.add(new News(id, name, desc, detail, imagepath, author, date));
            }
        } catch (Exception e) {
            System.out.println("getNewsRelative:" + e.getMessage());
        }
        return data;
    }

    public void addnews(String name, String desc, String detail, String imagepath, String Username, String date) {
        try {
            String strUpdate = "insert into News([Name], [Desc],Detail,[Image],User_author,[Date]) values(?,?,?,?,?,?)";
            pstm = cnn.prepareStatement(strUpdate);
            pstm.setString(1, name);
            pstm.setString(2, desc);
            pstm.setString(3, detail);
            pstm.setString(4, imagepath);
            pstm.setString(5, Username);
            pstm.setString(6, date);
            //pstm.setInt(5, CategoryID);
            //pstm.setBoolean(5, Discontinued);
            pstm.execute();
        } catch (Exception e) {
            System.out.println("Insert:" + e.getMessage());
        }
    }

    public void addtoCatoNews(String string, String id) {
        try {
            String strUpdate = "insert into Catogories_News values(?,?)";
            pstm = cnn.prepareStatement(strUpdate);
            pstm.setString(1, string);
            pstm.setString(2, id);
            //pstm.setInt(5, CategoryID);
            //pstm.setBoolean(5, Discontinued);
            pstm.execute();
        } catch (Exception e) {
            System.out.println("InsertCato:" + e.getMessage());
        }
    }

    public News getLastDetailNews() {
        try {
            String strSelect = "select top (1) * from News order by ID desc";
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                String id = rs.getString(1);
                String name = rs.getString(2);
                String desc = rs.getString(3);
                String detail = rs.getString(4);
                String imagepath = rs.getString(5);
                String author = rs.getString(6);
                String date = rs.getString(7);

                return new News(id, name, desc, detail, imagepath, author, date);
            }
        } catch (Exception e) {
            System.out.println("getNewsidnews:" + e.getMessage());
        }
        return null;
    }

    public ArrayList<News> getListNewsByUserID(String username) {
        ArrayList<News> data = new ArrayList<News>();
        try {
            String strSelect = "select * from News where User_author = '" + username + "' ";
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                String id = rs.getString(1);
                String name = rs.getString(2);
                String desc = rs.getString(3);
                String detail = rs.getString(4);
                String imagepath = rs.getString(5);
                String author = rs.getString(6);
                String date = rs.getString(7);

                data.add(new News(id, name, desc, detail, imagepath, author, date));
            }
        } catch (Exception e) {
            System.out.println("getNewsRelative:" + e.getMessage());
        }
        return data;
    }

    public void delete(String IDnews) {
        try {
            String strUpdate = "Delete from Catogories_News where ID_News = ?" +" Delete from Count_News where ID_News = ? "+ " Delete from News where ID = ?";
            pstm = cnn.prepareStatement(strUpdate);
            pstm.setString(1, IDnews);
            pstm.setString(2, IDnews);
            pstm.setString(3, IDnews);
            pstm.execute();
        } catch (Exception e) {
            System.out.println("Delete:" + e.getMessage());
        }
    }
    public void update(String id, String name, String desc, String Date, String image) {
        try {
            String strUpdate = "update News set [Name] = ?,[Desc] = ?, [Date] = ?, [Image] = ? where ID = ?";
            pstm = cnn.prepareStatement(strUpdate);
            pstm.setString(1, name);
            pstm.setString(2, desc);
            pstm.setString(3, Date);
            pstm.setString(4, image);
            pstm.setString(5, id);
            pstm.execute();
            System.out.println("updatesuccess");
        } catch (Exception e) {
            System.out.println("Updatefail:" + e.getMessage());
        }
    }

    public void addCountToView(int i, String id) {
        try {
            String strUpdate = "insert into Count_News values(?,?)";
            pstm = cnn.prepareStatement(strUpdate);
            pstm.setString(1, String.valueOf(i));
            pstm.setString(2, id);
            pstm.execute();
            System.out.println("Addsuccessed");
        } catch (Exception e) {
            System.out.println("Addfail:" + e.getMessage());
        }
    }

}
