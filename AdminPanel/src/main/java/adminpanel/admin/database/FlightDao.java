package adminpanel.admin.database;

import com.admin.bean.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class FlightDao {
    private String jdbcURL = "jdbc:mysql://localhost:3308/userdb?useSSL=false";
    private String jdbcUsername = "root";
    private String jdbcPassword = "lahirurajith123";

    private static final String INSERT_FLIGHTS_SQL = "INSERT INTO flights" + "  (start, finish, date, time) VALUES "
            + " (?, ?, ?, ?);";

    private static final String SELECT_FLIGHT_BY_ID = "select id,start,finish,date,time from flights where id =?";
    private static final String SELECT_ALL_FLIGHTS = "select * from flights";
    private static final String DELETE_FLIGHTS_SQL = "delete from flights where id = ?;";
    private static final String UPDATE_FLIGHTS_SQL = "update flights set start = ?,finish= ?, date =?, time =? where id = ?;";

    public FlightDao() {
    }

    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return connection;
    }

    public void insertFlight(Flight flight) throws SQLException {
        System.out.println(INSERT_FLIGHTS_SQL);
        // try-with-resource statement will auto close the connection.
        try (Connection connection = getConnection();
                PreparedStatement preparedStatement = connection.prepareStatement(INSERT_FLIGHTS_SQL)) {
            preparedStatement.setString(1, flight.getStart());
            preparedStatement.setString(2, flight.getFinish());
            preparedStatement.setString(3, flight.getDate());
            preparedStatement.setString(4, flight.getTime());
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }
    }

    public Flight selectFlight(int id) {
        Flight flight = null;
        // Step 1: Establishing a Connection
        try (Connection connection = getConnection();
                // Step 2:Create a statement using connection object
                PreparedStatement preparedStatement = connection.prepareStatement(SELECT_FLIGHT_BY_ID);) {
            preparedStatement.setInt(1, id);
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
                String start = rs.getString("start");
                String finish = rs.getString("finish");
                String date = rs.getString("date");
                String time = rs.getString("time");
                flight = new Flight(id, start, finish, date, time);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return flight;
    }

    public List<Flight> selectAllFlights() {

        // using try-with-resources to avoid closing resources (boiler plate code)
        List<Flight> flights = new ArrayList<>();
        // Step 1: Establishing a Connection
        try (Connection connection = getConnection();

                // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_FLIGHTS);) {
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
                int id = rs.getInt("id");
                String start = rs.getString("start");
                String finish = rs.getString("finish");
                String date = rs.getString("date");
                String time = rs.getString("time");
                flights.add(new Flight(id, start, finish, date, time));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return flights;
    }

    public boolean deleteFlight(int id) throws SQLException {
        boolean rowDeleted;
        try (Connection connection = getConnection();
                PreparedStatement statement = connection.prepareStatement(DELETE_FLIGHTS_SQL);) {
            statement.setInt(1, id);
            rowDeleted = statement.executeUpdate() > 0;
        }
        return rowDeleted;
    }

    public boolean updateFlight(Flight flight) throws SQLException {
        boolean rowUpdated;
        try (Connection connection = getConnection();
                PreparedStatement statement = connection.prepareStatement(UPDATE_FLIGHTS_SQL);) {
            System.out.println("updated USer:"+statement);
            statement.setString(1, flight.getStart());
            statement.setString(2, flight.getFinish());
            statement.setString(3, flight.getDate());
            statement.setString(4, flight.getTime());
            statement.setInt(5, flight.getId());

            rowUpdated = statement.executeUpdate() > 0;
        }
        return rowUpdated;
    }

    private void printSQLException(SQLException ex) {
        for (Throwable e : ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}
