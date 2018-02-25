import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import user.User;

public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Register() {
        super();
      
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    response.sendRedirect("RegistrationForm.jsp");
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
          PrintWriter out = response.getWriter();
		  String userName = request.getParameter("userName");
          String password = request.getParameter("password");
          System.out.println("outside condition");
          if(userName!= null) {
        	  System.out.println("list invoked");
        	  User a = new User("userName","password");
        	  a.setuserName(userName);
        	  a.setPassword(password);
        	  ArrayList<User> list = new ArrayList<User>();
        	  list.add(a);
        	  out.print(list.get(0));
        	  System.out.println("list invoked");
          }
          else {
        	  response.sendRedirect("index.html");
          }
          
	}

}
