<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>game01-page4</title>
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
    			책상에는 모니터와 거울 그리고 몇개의 공책이 놓여져 있다. <br>
    			공책은 일기로 보인다. 내 일기일까, 죽은 저 사람의 일기일까... <br><br>
    			
    			오늘도 바쁘게 살았다. 시험기간 아니면 연락도 오지 않는 동기들과 술을 마시고 내 길이 맞는지 의심이 드는 전공 시험도 끝났다. <br>
    			어떻게 여기까지 오게 되었을까... 어떤 삶을 살고 싶은 건지, 내가 누구인지도 모르겠다. <br>
    			내일은 다르게 살아야지, 내년에는 제대로 살아야지 식의 다짐도 이젠 지겹다. <br><br>
    			
    			내가 쓴 일기였다. 나를 드러내는게 서툴듯 잔뜩 연필에 힘을 주고 삐뚤빼뚤 쓴 글씨는 나를 닮았다. <br>
    			공책 옆에 놓여진 손거울으로 눈길이 향했다. <br><br>
    			
    			"어..?" <br><br>
    			
    			이상하다, 거울을 통해 보이는 이 얼굴은 분명.. <br>
    			저 사람의 얼굴이다. <br><br>
    			
    			차가운 바닥에 평온한 얼굴로 죽어있는 저 사람의 얼굴이다. <br>
    			혼란스럽다. 어떻게 된 일인지 모르겠다. <br>
    			이곳을 벗어나야 한다. <br><br>
    			
    			컴퓨터의 전원을 켰다. 암호가 필요하다. <br>
    			
    			<img src="../img/game01_p4-computer.png" width="400" height="400"></img>
 	   		</p>
 	   		<br>
    		<div align="center">
    				정답 : <input type="text" name="p4_correctAnswer">  &nbsp;&nbsp;&nbsp;
    				<input type="submit" style="width:60px; height:35px;" name="btn_p4" value="제출">
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