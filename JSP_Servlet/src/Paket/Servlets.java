package Paket;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * ..... public void kullanacagimiz_metod (HttpServletRequest req, HttpServletResponse res)
               throws IOException, ServletException{ ......
               
    doGet ()
		Web sunucularından bir bilgi istendiği zaman kullanılır. HTTP GET metodu ile çalışır.

	doPost ()
		Client’ten  bir bilgi istendiği zaman kullanılır. HTTP POST metodu ile çalışır.

	oHead ()
		Kaynağın sadece Header bilgisi istendiğinde kullanılmaktadır.

	doPut ()
		Sunucuya bir kaynak eklenmesi için kullanılan bir metoddur.

	doDelete ()
		Kaynak silinmesi gerektiği zaman kullanılır.

	doOptions ()
		Client ve Server arasındaki iletişim bilgilerini görüntüleyebildiğimiz metoddur.
		
		
		https://www.yusufsezer.com.tr/java-servlet/
 */

@WebServlet("/Servlets")
public class Servlets extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Servlets() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

	
}
