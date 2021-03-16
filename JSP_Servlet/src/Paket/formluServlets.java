package Paket;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/formluServlets")
public class formluServlets extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest req , HttpServletResponse res) throws IOException,ServletException {
		
		res.setContentType("text/html");
		
		PrintWriter outPrintWriter = res.getWriter();
		
		outPrintWriter.println("<html><head><title>Benim ilk kendi Servletim - 2");
		outPrintWriter.println("</title><meta http-equiv='Content-Type'content='text/html; charset=utf-8'></head><body>");
		outPrintWriter.println("<h1>Bu benim ilk 'form' servletim</h1>");
		
		String isim;
		
		if((isim= req.getParameter("ad")) != null) {
			outPrintWriter.println("Merhaba " + isim + ", <br>");
			outPrintWriter.println("Servlet'leri sevdin mi ?  ");
			
			outPrintWriter.println("</body></html>");
		}
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
	
	
	
}
