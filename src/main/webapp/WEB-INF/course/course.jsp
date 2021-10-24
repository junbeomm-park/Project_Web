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
		<link rel="stylesheet" href="/tour/common/css/course.css">
	</head>
	<body>
		<%  ArrayList<PlaceVO> courselist = (ArrayList<PlaceVO>) request.getAttribute("courselist");
			int size = courselist.size();
			CourseVO coursename = (CourseVO)request.getAttribute("coursename");
		%>	
		<div class="container">
			<input type="hidden" name="spotareaid" value="${place.spotareaid}">
			<div class="courseinfo">
				<div class="infonav">추천코스</div>
				<div class="coursename"><%=coursename.getCoursename()%></div>
				<div class="box">
					<div class="coursebox">
						<%		    							
							for(int i = 0; i < courselist.size() ; i++) { 
							PlaceVO course = courselist.get(i);
						%>
						<div class="spotbox"> 
							<%= course.getSpotname() %> 
							<div><img class="spotimg" src="/tour/images/<%= course.getImage()%>"/></div>
						</div>
						<% } %>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>