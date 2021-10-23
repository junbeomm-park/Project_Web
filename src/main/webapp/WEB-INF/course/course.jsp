<%@page import="place.PlaceVO"%>
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
		<%  ArrayList<PlaceVO> courselist = (ArrayList<PlaceVO>) request.getAttribute("courselist");
			int size = courselist.size();
			CourseVO coursename = (CourseVO)request.getAttribute("coursename");
		%>	
			<input type="hidden" name="spotareaid" value="${place.spotareaid}">
			<div style="border:2px solid blue; width:100%; height:300px; font-size: 15pt;">
				<h1><%=coursename.getCoursename()%></h1>
				
				<%		    							
															for(int i = 0; i < courselist.size() ; i++) { 
															PlaceVO course = courselist.get(i);
				%>
				<span> <%= course.getSpotname() %>&nbsp;&nbsp;→&nbsp;&nbsp; </span>
				<%              } 
				%>
			</div>
	</body>
</html>