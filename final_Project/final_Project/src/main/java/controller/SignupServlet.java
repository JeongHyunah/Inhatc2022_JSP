package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import svc.UserCheck;

@WebServlet("/SignupServlet")
public class SignupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public SignupServlet() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String btn_idCheck = request.getParameter("btn_idCheck");
		String btn_pwCheck = request.getParameter("btn_pwCheck");
		String btn_signup = request.getParameter("btn_signup");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String pwCheck = request.getParameter("pwCheck");
		
		if(btn_idCheck != null) {
			HttpSession session = request.getSession();
			if(id != null && !id.equals("")) {
				if(UserCheck.getIdCheck(id)) {
					String info = "아이디가 사용 가능합니다.";
					session.setAttribute("idCheckInfo", info);
					response.sendRedirect("signupView.jsp");
				} else {
					String info = "아이디가 사용 불가능합니다.";
					session.setAttribute("idCheckInfo", info);
					response.sendRedirect("signupView.jsp");
				}
				btn_idCheck = null;
			} else {
				String info = "사용하실 아이디를 입력하세요.";
				session.setAttribute("idCheckInfo", info);
				response.sendRedirect("signupView.jsp");
				btn_idCheck = null;
			}
		}
		
		if(btn_pwCheck != null) {
			HttpSession session = request.getSession();
			if(pw != null && pwCheck != null && !pw.equals("") && !pwCheck.equals("")) {
				UserCheck userCheck = new UserCheck();
				
				if(userCheck.getPwCheck(pw, pwCheck)) {
					String info = "비밀번호가 일치합니다.";
					session.setAttribute("pwCheckInfo", info);
					response.sendRedirect("signupView.jsp");
				} else {
					String info = "비밀번호가 일치하지 않습니다.";
					session.setAttribute("pwCheckInfo", info);
					response.sendRedirect("signupView.jsp");
				}
				btn_pwCheck = null;
			} else {
				String info = "사용하실 비밀번호를 입력하세요.";
				session.setAttribute("pwCheckInfo", info);
				response.sendRedirect("signupView.jsp");
				btn_pwCheck = null;
			}
		}
		
		if(btn_signup != null) {
			UserCheck userCheck = new UserCheck();
			if(userCheck.Signup(id, pw, pwCheck)) {
				response.setContentType("text/html; charset=UTF-8");
				PrintWriter out = response.getWriter();
				out.println("<script>");
				out.println("alert('회원 가입이 완료되었습니다.')");
				out.println("history.back()");
				out.println("</script>");
			} else {
				response.setContentType("text/html; charset=UTF-8");
				PrintWriter out = response.getWriter();
				out.println("<script>");
				out.println("alert('회원 가입이 실패했습니다, 다시 시도하세요.')");
				out.println("history.back()");
				out.println("</script>");
			}
		} else {
			btn_signup = null;
		}
	}
}
