package Takilar;

import java.io.*;
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;

public class YazdirVaryasyonuTaki extends SimpleTagSupport {

	 private String mesajString;
	
	 public void setMesaj(String mesaj) {
		 this.mesajString = mesaj;
	 }
	
	 StringWriter sWriter = new StringWriter();
	 
	 public void doTag() throws JspException,IOException {
		 //öznitelikten mesaj
		 
		 JspWriter outJspWriter = getJspContext().getOut();
		 outJspWriter.println(mesajString);
		 
		 outJspWriter.println("<br>");
		 
		 //Takı içeriğinden gelen mesaj
		 
		 getJspBody().invoke(sWriter);
		 getJspContext().getOut().println(sWriter.toString());
	 }
}
