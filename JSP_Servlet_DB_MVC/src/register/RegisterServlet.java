package register;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import database.*;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	RegisterDao dao = new RegisterDao();
	List<Member> list = new ArrayList<Member>();
          
    public RegisterServlet() {
        super();    
    }
    public void list(HttpServletRequest request, HttpServletResponse response) {
    	
    	list = dao.get();
		request.setAttribute("list", list);
		
		try {
			request.getRequestDispatcher("Liste.jsp").forward(request, response);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			String form = request.getParameter("form");
			
			switch(form) {
			case "kayit" :  dao.insert(request.getParameter("username") , request.getParameter("password") , request.getParameter("email") , request.getParameter("phone"));
						    list(request, response);
						    break;
			
			case "list" :   list(request, response);	
						    break;
			
			case "delete" : String deleteString = request.getParameter("delete");
							int deleteInt = Integer.valueOf(deleteString);
							dao.delete(deleteInt);
							list(request, response);
							break;	
			
			case "update" :	int id = Integer.valueOf(request.getParameter("id"));
							dao.update(request.getParameter("username"), request.getParameter("password"), request.getParameter("email"), request.getParameter("phone"),id);	
							list(request, response);
							break;
			}
		
	}

}
