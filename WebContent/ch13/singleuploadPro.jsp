<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.oreilly.servlet.MultipartRequest" %>
    <%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
    <%@ page import="java.util.*" %>
    <%@ page import="java.io.*" %>
    
    <%request.setCharacterEncoding("utf-8"); %>
<%
	String result="-----------------------<br>"; //결과 문자열
	String realFolder="";
	String saveFolder="/upload";
	String encType="utf-8";
	int maxsize = 5*1024*1024;
	
	ServletContext context = getServletContext();
	realFolder = context.getRealPath(saveFolder);
	
	try {
		MultipartRequest upload = null;
		
		upload = new MultipartRequest(request, realFolder, maxsize, encType, new DefaultFileRenamePolicy());
		Enumeration<?> params = upload.getParameterNames();
		
		while(params.hasMoreElements()) {
			String name = (String)params.nextElement();
			String value= upload.getParameter(name);
			result += name+" : "+value+"<br>";
		}
		
		
		File file = upload.getFile(name);
		/* if(file != null)
			result += "크기 : "+file.length()+"bytes <br>";
	
		result += "-------------<br>";
		out.println(result); */
	} catch(Exception e) {
		e.printStackTrace();
	}
%>