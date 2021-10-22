<%@page import="course.CourseVO"%>

<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
	</head>
	<body>
<%  ArrayList<CourseVO> courselist = (ArrayList<CourseVO>) request.getAttribute("courselist");
	
	int size = courselist.size();
%>
<%		    							
											for(int i = 0; i < courselist.size() ; i++) { 
											CourseVO course = courselist.get(i);
%>
		<div style="border:2px solid blue; width:100%; height:300px; font-size: 20pt; font-weight: bold;"><%= course.getCoursename() %></div>
<%              } 
%>
	</body>
</html>