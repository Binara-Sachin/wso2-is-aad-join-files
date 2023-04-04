<%@page import="java.io.File"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.net.URL"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>

<%@ page contentType="text/xml" %>
<%@page pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<%
	response.setContentType("text/xml; charset=UTF-8");
	String filePath = session.getServletContext().getRealPath("/mex.xml");
	BufferedReader reader = new BufferedReader(new FileReader(filePath));
	StringBuilder sb = new StringBuilder();
	String line;
	while((line = reader.readLine())!= null){
		sb.append(line+"\n");
	}
	out.println(sb.toString());
%>
