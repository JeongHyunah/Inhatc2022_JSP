<%@ page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mainView</title>
</head>
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
		<%
			if(id == null) {
		%>
			<jsp:include page="./view/Section_game.jsp" flush="false"/>
		<%
			} else {
		%>
			<jsp:include page="./view/Section_game.jsp" flush="false">
				<jsp:param name="id" value="<%=id%>" />
			</jsp:include>
		<%
			}
		%>
			</td>
		</tr>
		<tr><td>
			<jsp:include page="./view/Footer.jsp" flush="false"/>
			</td>
		</tr>
	</table>
</body>
</html>