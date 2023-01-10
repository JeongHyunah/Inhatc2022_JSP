<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>game01-page3</title>
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
    			평범한 방의 문이다. 문은 특이한 자물쇠로 잠겨져 있다. 영어도 숫자도 아닌 한글로 입력하는 자물쇠였다. <br><br>
    			
    			문에는 포스터가 붙여 있었다. ‘라스트홀리데이’라는 영화의 포스터였는데, 고등학교 때 학교에서 봤던 기억이 난다. <br>
    			쉬는 시간에 친구들에게 영화가 너무 좋았다는 말을 하니, 친구들은 남자애가 그런 영화를 보고 감동을 받냐고 놀렸다. <br>
    			어렸을 때부터 남 시선을 두려워했던 나는 내 감정에 솔직하지 못했고 변명하느라 바빴다.<br><br>
    			
    			그때부터였을까, 나는 지금까지 내 감정에 솔직하지 못했다. <br>
    			마치 배우가 연기를 하듯 내가 만들어낸 가상의 나를 연기하며 살았다. <br><br>
    			
    			여기서는 더 이상 살펴볼 것이 없다. 저 자물쇠를 풀 수 있다면 이곳에서 나갈 수 있을 거다. <br><br>
    			
    			<img src="../img/game01_p3-lock.png" width="250" height="250"></img>
    			<img src="../img/game01_p3-poster.png" width="280" height="424"></img>
 	   		</p>
 	   		<br><br>
    		<div align="center">
    				정답 : <input type="text" name="p3_correctAnswer">  &nbsp;&nbsp;&nbsp;
    				<input type="submit" style="width:60px; height:35px;" name="btn_p3" value="제출">
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