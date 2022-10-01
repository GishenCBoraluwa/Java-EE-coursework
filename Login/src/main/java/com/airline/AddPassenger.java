package com.airline;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import login.airline.database.LoginDao;

import java.io.IOException;
import java.sql.SQLException;

import com.airline.bean.LoginBean;

/**
 * Servlet implementation class AddPassenger
 */
@WebServlet("/AddPassenger")
public class AddPassenger extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddPassenger() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RequestDispatcher view = request.getRequestDispatcher("WEB-INF/index.jsp"); 
		
		view.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		LoginDao loginDao = new LoginDao();
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String id = request.getParameter("id");
		
		LoginBean loginBean = new LoginBean();
		
		loginBean.setEmail(email);
		loginBean.setId(id);
		loginBean.setPassword(password);
		
		try {
			if (loginDao.validate(loginBean))
			{
				response.sendRedirect("main.jsp");
				
			}
			else 
			{
				//HttpSession session = request.getSession();
				doGet(request, response);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
