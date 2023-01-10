<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>signupView</title>
</head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet">

<body>
	<div class="b-example-divider"></div>
		<div class="modal modal-signin position-static d-block bg-secondary py-5" tabindex="-1" role="dialog" id="modalSignin">
  			<div class="modal-dialog" role="document">
    			<div class="modal-content rounded-4 shadow">
      			<div class="modal-header p-5 pb-4 border-bottom-0">
        			<h1 class="fw-bold mb-0 fs-2">방구석탈출 회원가입</h1>
        			<form action="mainView.jsp" method="post">
        				<input type="submit" class="btn-close" data-bs-dismiss="modal" aria-label="Close" value="">
        			</form>
      			</div>
      			
			<% 	request.setCharacterEncoding("UTF-8");
				String pwCheckInfo = (String)session.getAttribute("pwCheckInfo");
				if(pwCheckInfo == null)
					pwCheckInfo = "사용하실 비밀번호를 입력하세요.";
				
				String idCheckInfo = (String)session.getAttribute("idCheckInfo");
				if(idCheckInfo == null)
					idCheckInfo = "사용하실 아이디를 입력하세요.";
			%>
			<form action="SignupServlet" method="post">
      			<div class="modal-body p-5 pt-0">
          			<div class="form-floating mb-3">
            			<input type="text" name="id" value="" class="form-control rounded-3" placeholder="아이디" aria-label="아이디" >
            			<label for="floatingInput">아이디</label>
            		</div>
            			<a><%=idCheckInfo %></a>
            			<div class="d-grid gap-2 d-md-flex justify-content-md-end">
        					<input type="submit" class="btn btn-secondary" name="btn_idCheck" value="아이디 확인">
        				</div>
        				
        				<div style="padding:10px"></div>
        				
         			<div class="form-floating mb-3">
           				<input type="password" name="pw" value="" class="form-control rounded-3" placeholder="비밀번호" aria-label="비밀번호">
           				<label for="floatingPassword">비밀번호</label>
           			</div>
           			<div class="form-floating mb-3">
           				<input type="password" name="pwCheck" value="" class="form-control rounded-3" placeholder="비밀번호 재확인" aria-label="비밀번호 재확인">
           				<label for="floatingPassword">비밀번호 재확인</label>
           			</div>
           			<a><%=pwCheckInfo %></a>
           				<div class="d-grid gap-2 d-md-flex justify-content-md-end">
        					<input type="submit" class="btn btn-secondary" name="btn_pwCheck" value="비밀번호 확인">
        				</div>
        				
        				<div style="padding:15px"></div>
        				
        				<input type="submit" class="w-100 mb-2 btn btn-lg rounded-3 btn-dark" name="btn_signup" value="회원가입">
          				<small class="text-muted">회원가입을 클릭하면 이용약관에 동의하는 것입니다.</small>
          				<hr class="my-4">
      				</div>
      			</form>
      			
    		</div>
  		</div>
	</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>