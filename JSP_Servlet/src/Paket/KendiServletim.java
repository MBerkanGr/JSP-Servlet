package Paket;

import  java.io.*;
import  javax.servlet.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet;

@WebServlet("/KendiServletim")
public class KendiServletim extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException{
		
		res.setContentType("text/html");
		
		PrintWriter outPrintWriter = res.getWriter();
		
		outPrintWriter.println("<html><head><title>Benim ilk kendi Servletim");
		outPrintWriter.println("</title><meta http-equiv='Content-Type'content='text/html; charset=utf-8'></head><body>");
		outPrintWriter.println("<h1>Bu benim ilk servletim</h1>");
		outPrintWriter.println("</body></html>");
	}
	
	
}
