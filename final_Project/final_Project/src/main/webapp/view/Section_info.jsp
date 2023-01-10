<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Section_info</title>
</head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet">

<body>
	<div class="b-example-divider"></div>
 		<div class="container px-5 py-4" id="icon-grid">
    		<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-3 g-4 py-4">
      			<div class="col d-flex align-items-start">
        		<img src="./img/user.png" width="50px" height="50px" class="bi text-muted flex-shrink-0 me-3">
        		<% 	String id = request.getParameter("id"); 
					if(id == null) {
				%>
        		<div>
          			<h3 class="fw-bold mb-0 fs-4">회원정보</h3>
          			<p style="padding:5px">로그인을 통해 재밌는 <br> 방탈출 게임을 즐기세요!</p>
        		</div>
        		<% } else {
       			%>
       			<div>
          			<h3 class="fw-bold mb-0 fs-4">회원정보</h3>
          			<p style="padding:5px">ID: <%= id %></p>
        		</div>
        		<% }
       			%>
				</div>
      			<div class="col d-flex align-items-start">
        		<img src="./img/game.png" width="50px" height="50px" class="bi text-muted flex-shrink-0 me-3">
        		<div>
          			<h3 class="fw-bold mb-0 fs-4">게임 목록</h3>
          			<p style="padding:5px">NEW 보통의 하루 <br> SOON 건망증</p>
   				</div>
    			</div>
      			<div class="col d-flex align-items-start">
        		<img src="./img/review.png" width="50px" height="50px" class="bi text-muted flex-shrink-0 me-3">
        		<div>
          			<h3 class="fw-bold mb-0 fs-4">나의 리뷰</h3>
          			<p style="padding:5px">당신의 리뷰는 큰 도움이 됩니다.</p>
          			<form action="ReviewServlet" method="post">
          				 <div class="d-grid gap-2 d-md-flex justify-content-md-end">
  							<input type="submit" class="btn btn-secondary" value="리뷰 더보기">
						</div>
          			</form>
        		</div>
        	</div>
   		</div>
	</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>