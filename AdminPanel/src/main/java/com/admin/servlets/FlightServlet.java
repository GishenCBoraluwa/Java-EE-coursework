package com.admin.servlets;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import com.admin.bean.Flight;
import adminpanel.admin.database.*;

@WebServlet("/")
public class FlightServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private FlightDao flightDao;
    
    public void init() {
        flightDao = new FlightDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getServletPath();

        try {
            switch (action) {
            case "/new":
                showNewForm(request, response);
                break;
            case "/insert":
                insertFlight(request, response);
                break;
            case "/delete":
                deleteFlight(request, response);
                break;
            case "/edit":
                showEditForm(request, response);
                break;
            case "/update":
                updateFlight(request, response);
                break;
            default:
                listFlight(request, response);
                break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }

    private void listFlight(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        List<Flight> listFlight = flightDao.selectAllFlights();
        request.setAttribute("listFlight", listFlight);
        RequestDispatcher dispatcher = request.getRequestDispatcher("flight-list.jsp");
        dispatcher.forward(request, response);
    }

    private void showNewForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("flight-form.jsp");
        dispatcher.forward(request, response);
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Flight existingFlight = flightDao.selectFlight(id);
        RequestDispatcher dispatcher = request.getRequestDispatcher("flight-form.jsp");
        request.setAttribute("flight", existingFlight);
        dispatcher.forward(request, response);

    }

    private void insertFlight(HttpServletRequest request, HttpServletResponse response) 
            throws SQLException, IOException {
        String start = request.getParameter("start");
        String finish = request.getParameter("finish");
        String date = request.getParameter("date");
        String time = request.getParameter("time");
        Flight newFlight = new Flight(start, finish, date, time);
        flightDao.insertFlight(newFlight);
        response.sendRedirect("list");
    }

    private void updateFlight(HttpServletRequest request, HttpServletResponse response) 
            throws SQLException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String start = request.getParameter("start");
        String finish = request.getParameter("finish");
        String date = request.getParameter("date");
        String time = request.getParameter("time");

        Flight book = new Flight(id, start, finish, date, time);
        flightDao.updateFlight(book);
        response.sendRedirect("list");
    }

    private void deleteFlight(HttpServletRequest request, HttpServletResponse response) 
            throws SQLException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        flightDao.deleteFlight(id);
        response.sendRedirect("list");

    }


}
