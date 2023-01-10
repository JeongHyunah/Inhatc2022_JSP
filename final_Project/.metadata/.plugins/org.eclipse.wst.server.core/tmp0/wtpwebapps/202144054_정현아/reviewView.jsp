<%@ page import="java.net.URLEncoder"%>
<%@ page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="vo.Review" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>reviewView</title>
</head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet">

<body>
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
		<tr><td>
		<%
			request.setCharacterEncoding("UTF-8");
			String id = (String)session.getAttribute("id");
			if(id == null) {
		%>
			<jsp:include page="./view/Header.jsp" flush="false"/>
		<%
			} else {
		%>
			<jsp:include page="./view/Header.jsp" flush="false">
				<jsp:param name="id" value="<%=id%>" />
			</jsp:include>
		<%
			}
		%>
			</td>
		</tr>
		<tr><td>
		<%
			if(id == null) {
		%>
			<jsp:include page="./view/Section_info.jsp" flush="false"/>
		<%
			} else {
		%>
			<jsp:include page="./view/Section_info.jsp" flush="false">
				<jsp:param name="id" value="<%=id%>" />
			</jsp:include>
		<%
			}
		%>
			</td>
		</tr>
		<tr><td>
			<table class="table table-dark table-striped">
				<tr><td colspan="4">
					<a href="mainView.jsp" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">
          			<img src="./img/title.png" width="150" height="55"></img></a>
          			</td></tr>
				<tr>
					<th>리뷰 번호</th><th>유저</th><th>제목</th><th>평점</th>
				</tr>
				<%
					request.setCharacterEncoding("UTF-8");			
					ArrayList<Review> list = (ArrayList<Review>)session.getAttribute("list");
				%>
				<c:forEach var="review" items="${list }">
				<tr>
					<td>${review.getReviewId() }</td>
					<td>${review.getUserId() }</td>
					<td>${review.getGameTitle() }</td>
					<td>${review.getGameAverage() }</td>
				</c:forEach>
			</table>
		</td>
		</tr>
		<tr><td>
			<jsp:include page="./view/Footer.jsp" flush="false"/>
			</td>
		</tr>
	</table>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>