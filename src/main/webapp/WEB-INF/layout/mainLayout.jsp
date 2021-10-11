<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	</head>
	<body>
		<div>
			<!-- 이곳에 nav화면을 연결하세요" -->
			<tiles:insertAttribute name="nav"></tiles:insertAttribute>
		</div>
			
		<div>
			<!-- 이곳에 content화면을 연결하세요" -->
			<tiles:insertAttribute name="content"></tiles:insertAttribute>
		</div>
		<div>
			<!-- 이곳에 footer화면을 연결하세요" -->
			<tiles:insertAttribute name="footer"></tiles:insertAttribute>
		</div>
			
	</body>
</html>




