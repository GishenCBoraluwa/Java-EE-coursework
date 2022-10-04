package login.airline.database;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;


import com.airline.bean.RegisterBean;

public class RegisterDao {
    
    private String dbUrl = "jdbc:mysql://localhost:3308/userdb?useSSL=false";
    private String dbUname = "root";
    private String dbPassword = "lahirurajith123";
    private String dbDriver = "com.mysql.cj.jdbc.Driver";
    
    protected void loadDriver(String dbDriver)
    {
        try {
            Class.forName(dbDriver);
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
    
    protected Connection getConnection()
    {
        Connection con = null;
        try {
            con = DriverManager.getConnection(dbUrl, dbUname, dbPassword);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return con;
    }
    
    public String insert(RegisterBean registerBean)
    {
        loadDriver(dbDriver);
        Connection con = getConnection();
        String result = "Data entered successfully";
        String sql = "insert into user values(?,?)";
        
        PreparedStatement ps;
        try {
        ps = con.prepareStatement(sql);
        ps.setString(1, registerBean.getEmail());
        ps.setString(2, registerBean.getPassword());
        ps.executeUpdate();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            result = "Data not entered";
        }
        return result;
    }
    
    
}
