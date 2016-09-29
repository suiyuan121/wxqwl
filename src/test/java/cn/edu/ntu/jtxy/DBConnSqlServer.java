package cn.edu.ntu.jtxy;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBConnSqlServer {

	public static final String DBDRIVER = "org.postgresql.Driver";
	public static final String DBURL = "jdbc:postgresql://103.241.50.12:5432/wxqwl";
	public static final String DBUSER = "postgres";
	public static final String DBPASS = "wxqwl2016";

	public static void main(String[] args) {

		Connection con = null;
		try {
			Class.forName(DBDRIVER);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}

		try {
			con = DriverManager.getConnection(DBURL, DBUSER, DBPASS);
			String sql = "select * from user";
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				System.out.println(rs.getObject(1));
			}
			ps.close();

			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

}
