package controller.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import util.StringUtils;

/**
 * Servlet implementation class LogOutServlet
 */
@WebServlet("/LogOutServlet")
public class LogOutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LogOutServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.print("post");		//Handle logout request
				//1.Clear existing cookies
				Cookie [] cookies = request.getCookies();
				if(cookies!= null) {
					for (Cookie cookie : cookies) {
						//Set max age to 0 to effectively delete the cookie
						cookie.setMaxAge(0);
						response.addCookie(cookie);
					}
				}
				//2.Invalidate user session(if it exists)
				HttpSession session = request.getSession(false);
				if(session!= null) {
					session.invalidate();
				}
				//3.REdirect to login page
				response.sendRedirect(request.getContextPath() + StringUtils.LOGIN_PAGE);
				
				
	}

}
