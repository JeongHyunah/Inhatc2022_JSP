<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>messageView</title>
</head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet">

<body>
  	<div class="px-4 py-5 my-5 text-center">
    	<img class="d-block mx-auto mb-4" src="./img/logo.png" alt="방구석탈출" width="250" height="100">
    		<h1 class="display-5 fw-bold">로그인을 통해 플레이할 수 있습니다.</h1>
    		<div class="col-lg-6 mx-auto">
      			<p class="lead mb-4">방구석탈출은 집에서 즐길 수 있는 방탈출 게임을 제공하는 사이트입니다. <br> 개설된지 얼마되지 않은 사이트라 게임의 종류가 다양하지 않습니다. <br> 여러분의 응원과 관심이 개발자에게 많은 도움이 됩니다.</p>
      			<div class="d-grid gap-2 d-sm-flex justify-content-sm-center">
      			<form action="./mainView.jsp" method="post">
        			<input type="submit" class="btn btn-outline-secondary btn-lg px-4" value="돌아가기">
        		</form>
      			</div>
    		</div>
  	</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>