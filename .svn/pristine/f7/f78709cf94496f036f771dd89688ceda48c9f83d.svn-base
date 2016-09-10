package cn.edu.ntu.jtxy;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBConnSqlServer {

    public static final String DBDRIVER = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
    public static final String DBURL    = "jdbc:sqlserver://210.29.65.230:1433;DatabaseName=wechatjt";
    public static final String DBUSER   = "jtxy";
    public static final String DBPASS   = "jtxy2016";

    public static void main(String[] args) {

        Connection con = null;
        try {
            Class.forName(DBDRIVER);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        try {
            con = DriverManager.getConnection(DBURL, DBUSER, DBPASS);
            String sql = "select * from jt_access_token";
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                System.out.println(rs.getString(1));
            }
            ps.close();

            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

}
