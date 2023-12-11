package com.admin;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.connection.DatabaseConnection;

/**
 * Servlet implementation class EditCustomerElectricityApplicationForm
 */
@WebServlet("/EditCustomerElectricityApplicationForm")
public class EditCustomerElectricityApplicationForm extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String customerNo = request.getParameter("customerNo");
		String electricityNo = request.getParameter("electricityNo");
		String firstname = request.getParameter("firstname");
		String middilename = request.getParameter("middilename");
		String lastname = request.getParameter("lastname");
		String atpost = request.getParameter("atpost");
		int plotno = Integer.parseInt(request.getParameter("plotno"));
		String taluka = request.getParameter("taluka");
		String district = request.getParameter("district");
		int pincode = Integer.parseInt(request.getParameter("pincode"));
		String state = request.getParameter("state");
		HttpSession session=request.getSession();
		try {
			Connection con = DatabaseConnection.getConnection();
			Statement st = con.createStatement();
			int updateApplicationForm = st.executeUpdate("update tblcustomer set firstname='" + firstname
					+ "',parentname='" + middilename + "',surname='" + lastname + "',atpost='" + atpost + "',plotno='"
					+ plotno + "',taluka='" + taluka + "',dist='" + district + "',pincode='" + pincode + "',state='"
					+ state + "' where electricityno='" + electricityNo + "' and custumno='" + customerNo + "'");
			if (updateApplicationForm > 0) {
				String message="Info updated successfully.";
				session.setAttribute("customer-update", message);
				response.sendRedirect("view-electricity-connections.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
