<%@page import="review.ReviewVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="/tour/common/css/review.css">
	</head>
	<body>
		<%
			ArrayList<ReviewVO> reviewlist = (ArrayList<ReviewVO>)request.getAttribute("reviewlist");
			int size = reviewlist.size();
		%>
		<form>
			<div class="reviewlist">
				<div style="padding-top: 30px">
					<table class="table">
						<thead>
							<tr>
								<th class="col-sm-2">작성자</th>
								<th class="col-sm-2">별점</th>
								<th class="col-sm-6">후기</th>
								<th class="col-sm-2">작성일자</th>
							</tr>
						</thead>
						<tbody>
							<%
								for(int i=0;i<size;i++){
									ReviewVO review = reviewlist.get(i);
							%>
								<tr>
									<td><%=review.getId()%></td>
									<td><%=review.getScore() %></td>
									<td><%=review.getContent() %></td>
									<td><%=review.getWrite_date() %></td>
								</tr>
							<%} %>
						</tbody>
					</table>
				</div>
			</div>
		</form>
		<form action="/tour/review/insert.do">
			<div class="container">
					<div>
				  			<div class="star-rating" onlaod="setReview()">
								<input type="radio" id="5-stars" name="rating" value="5" v-model="ratings"/>
								<label for="5-stars" class="star pr-4">★</label>
								<input type="radio" id="4-stars" name="rating" value="4" v-model="ratings"/>
								<label for="4-stars" class="star">★</label>
								<input type="radio" id="3-stars" name="rating" value="3" v-model="ratings"/>
								<label for="3-stars" class="star">★</label>
								<input type="radio" id="2-stars" name="rating" value="2" v-model="ratings"/>
								<label for="2-stars" class="star">★</label>
								<input type="radio" id="1-star" name="rating" value="1" v-model="ratings" />
								<label for="1-star" class="star">★</label>
							</div>
					</div>
					<div>
						<textarea id="content" style="width: 100%; border: 1;" rows=5 name="content" placeholder="후기를 입력하세요." ></textarea>
					</div>
					<div>
						<button type="submit">등록</button>
					</div>
			</div>
		</form>
	</body>
</html>