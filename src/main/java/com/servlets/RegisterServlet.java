package com.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import com.DatabaseAccessObject.UserDAO;
import com.Entities.User;
import com.helper.ConnectionProvider;


@MultipartConfig
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		try (PrintWriter out = response.getWriter()) {
			// fetch all form data
			String namef = request.getParameter("namef");
			String namel = request.getParameter("namel");
			String fatherNamef = request.getParameter("fnamef");
			String fatherNamel = request.getParameter("fnamel");
			String gender = request.getParameter("gender");
			String meritalStatus = request.getParameter("maritalStatus");
			String cast = request.getParameter("caste");
			String address = request.getParameter("address");
			String village = request.getParameter("village");
			String city = request.getParameter("city");
			String state = request.getParameter("state");
			String country = request.getParameter("country");
			String email = request.getParameter("email");
			String education = request.getParameter("education");
			String profile = request.getParameter("imageUpload");
			String applyFor = request.getParameter("apply");
			String experience = request.getParameter("experience");
			String experienceDetails = request.getParameter("experiencedetails");

				// create user object and set all data to that object..
				User user = new User(namef, namel, fatherNamef, fatherNamel, gender, meritalStatus, cast, address, village, city, state, country, email, education, profile, applyFor, experience, experienceDetails);

				// create a user DAO object..
				UserDAO dao = new UserDAO(ConnectionProvider.getConnection());
				if (dao.saveUser(user)) {
					out.println("done");
				} else {
					out.println("error");
				}
		}
	}
	
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
