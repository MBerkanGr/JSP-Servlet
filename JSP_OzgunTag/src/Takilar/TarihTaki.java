package Takilar;

import java.io.*;
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;

public class TarihTaki extends SimpleTagSupport {

	java.util.Date simdiDate = new java.util.Date();
	
	public void doTag() throws JspException , IOException {  //ÇALIŞTIĞI GİBİ UYGULA
		JspWriter outJspWriter = getJspContext().getOut();
		outJspWriter.println(simdiDate);
	}
}
