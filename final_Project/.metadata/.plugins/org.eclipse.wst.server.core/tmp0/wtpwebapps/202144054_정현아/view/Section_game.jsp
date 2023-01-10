<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Section_game</title>
</head>
<style>
	ul, li {list-style:none;}

	.slidebox {max-width:500px; margin:0 auto;position:relative;}
	.slidebox .slidelist {position:relative;white-space:nowrap;font-size:0;overflow:hidden;}
	.slidebox .slidelist .slideitem {position:relative;display:inline-block;vertical-align:middle;background-color:#fff;width:100%;transition:all 1s;}
	.slidebox .slidelist .slideitem > a {display:block;width:auto;position:relative;}
	.slidebox .slidelist .slideitem > a img {max-width:90%;}

	.slidebox .slide-control [class*="control"] label {position:absolute;z-index:10;top:45%;transform:translateY(-50%);padding:20px;border-radius:50%;cursor:pointer;}
	.slidebox .slide-control [class*="control"] label.prev {left:-75px;background:#333 url('./img/left-arrow.png') center center / 50% no-repeat;}
	.slidebox .slide-control [class*="control"] label.next {right:-50px;background:#333 url('./img/right-arrow.png') center center / 50% no-repeat;}

	[name="slide"] {display:none;}
	#slide01:checked ~ .slidelist .slideitem {left:0;}
	#slide02:checked ~ .slidelist .slideitem {left:-100%;}
	#slide03:checked ~ .slidelist .slideitem {left:-200%;}
	#slide04:checked ~ .slidelist .slideitem {left:-300%;}

	.slide-control [class*="control"] {display:none;}
	#slide01:checked ~ .slide-control .control01 {display:block;}
	#slide02:checked ~ .slide-control .control02 {display:block;}
	#slide03:checked ~ .slide-control .control03 {display:block;}
	#slide04:checked ~ .slide-control .control04 {display:block;}
</style>

<body>
	<section>
		<div class="slidebox">
			<input type="radio" name="slide" id="slide01" checked>
			<input type="radio" name="slide" id="slide02">
			<input type="radio" name="slide" id="slide03">
			<input type="radio" name="slide" id="slide04">
			<% 	String id = request.getParameter("id"); 
				if(id == null) {
			%>
			<ul class="slidelist">
				<li class="slideitem">
					<a href="./messageView.jsp"><img src="./img/game01_title.png"></a></li>
				<li class="slideitem">
					<a href="./messageView.jsp"><img src="./img/game02_title.png"></a></li>
			</ul>
			<% } else {
       		%>
       		<ul class="slidelist">
				<li class="slideitem">
					<a href="./game01/page1.jsp"><img src="./img/game01_title.png"></a></li>
				<li class="slideitem">
					<a><img src="./img/game02_title.png"></a></li>
			</ul>
			<% }
       		%>
			<div class="slide-control">
				<div class="control01">
					<label for="slide02" class="prev"></label>
					<label for="slide02" class="next"></label>
				</div>
				<div class="control02">
					<label for="slide01" class="prev"></label>
					<label for="slide01" class="next"></label>
				</div>
			</div>
		</div>
	</section>
</body>

</html>