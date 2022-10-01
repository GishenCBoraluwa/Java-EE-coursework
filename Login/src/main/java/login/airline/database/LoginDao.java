package login.airline.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.airline.bean.LoginBean;

public class LoginDao {
	
	private String dbUrl = "jdbc:mysql://localhost:3308/userdb?useSSL=false";
	private String dbUname = "root";
	private String dbPassword = "lahirurajith123";
	private String dbDriver = "com.mysql.cj.jdbc.Driver";
	
	public void loadDriver(String dbDriver)
	{
		try {
			Class.forName(dbDriver);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public Connection getConnection() throws SQLException
	{

		try {
			Connection con = DriverManager.getConnection(dbUrl, dbUname, dbPassword);
			return con;
			
		} catch (SQLException e) {
			throw e;
		}
	}
	
	public boolean validate(LoginBean loginBean) throws SQLException
	{
		
		try {
			boolean status = false;
			
			loadDriver(dbDriver);
			Connection con = getConnection();
			
			String sql = "select * from user where email = ? and password =?";
			PreparedStatement ps;
			ps = con.prepareStatement(sql);
			ps.setString(1, loginBean.getEmail());
			ps.setString(2, loginBean.getPassword());
			ResultSet rs = ps.executeQuery();
			status = rs.next();
			return status;
		
		} catch (SQLException e) {
			throw e;
		}
		
	}
	}