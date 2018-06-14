package kh.web.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.web.dao.PersonDAO;
import kh.web.dto.PersonDTO;

@WebServlet("*.do")
public class FrontController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			String requestURI = request.getRequestURI();
			String contextPath = request.getContextPath();

			String command = requestURI.substring(contextPath.length());

			PersonDAO pdao = new PersonDAO();
			
			boolean isRedirect = true;
			String dst = null;

			if (command.equals("/input.do")) {
				String name = request.getParameter("name");
				String phone = request.getParameter("phone");
				String email = request.getParameter("email");
				
				PersonDTO pdto= new PersonDTO(name,phone,email);
				
				int result = pdao.insertData(pdto);
				request.setAttribute("result", result);
				isRedirect = false;
				dst = "inputView.jsp";
				
			} else if (command.equals("/output.do")) {
				List<PersonDTO> result = pdao.printData();
				request.setAttribute("result", result);
				isRedirect = false;
				dst = "output.jsp";
			}

			if (isRedirect) {
				response.sendRedirect(dst);
			} else {
				RequestDispatcher rd = request.getRequestDispatcher(dst);
				rd.forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
