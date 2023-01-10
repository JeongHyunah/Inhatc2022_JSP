<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>game01-page6</title>
</head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet">

<body class="d-flex h-100 text-center text-bg-dark">
	<div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
  		<header>
    		<p align="left"><a href="../mainView.jsp"><img src="../img/title.png" width="150" height="55"></img></a></p>
  		</header>
  		
  		<form action="../GameServlet" method="post">
		<main class="px-3">
    		<p>
    			<img src="../img/game01_title.png" width="400" height="400"></img><br><br>
    			
    			당신의 리뷰가 개발자에게 많은 도움이 됩니다.<br><br>
    			<label for="floatingInput">유저 아이디</label>
    			<input type="text" name="user_id" value="" placeholder="유저 아이디" aria-label="유저 아이디">
    			<a style="padding:10px"></a>
    			
    			<label for="floatingInput">게임 제목</label>
    			<input type="text" name="game_title" value="보통의하루" placeholder="보통의하루" aria-label="보통의하루">
    			<a style="padding:10px"></a>
    			
    			<label for="floatingInput">별점</label>
    			<select name="game_average">
    				<option>5.0</option>
    				<option>4.5</option>
    				<option>4.0</option>
    				<option>3.5</option>
    				<option>3.0</option>
    				<option>2.5</option>
    				<option>2.0</option>
    				<option>1.5</option>
    				<option>1.0</option>
    			</select>
    		</p>
 	   		<br><br>
    		<div align="center">
    			<input type="submit" style="width:90px; height:35px;" name="btn_review" value="리뷰 전송">
     		</div>
  		</main>
  		</form>

 		<div class="b-example-divider"></div>
		<div class="container">
  			<footer class="d-flex flex-wrap justify-content-between align-items-center py-3 my-4 border-top">
    			<div class="col-md-4 d-flex align-items-center">
     				<a href="/" class="mb-3 me-2 mb-md-0 text-muted text-decoration-none lh-1"></a>
     				<span class="mb-3 mb-md-0 text-muted">Copylight &copy; Holomaking &nbsp; All Rights Reserved.</span>
    			</div>
  			</footer>
		</div>
	</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>