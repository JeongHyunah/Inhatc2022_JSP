package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import svc.game01Service;
import svc.ReviewService;

@WebServlet("/GameServlet")
public class GameServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public GameServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String btn_p2 = request.getParameter("btn_p2");
		String btn_p3 = request.getParameter("btn_p3");
		String btn_p4 = request.getParameter("btn_p4");
		String btn_review = request.getParameter("btn_review");
		
		String p2_correctAnswer = request.getParameter("p2_correctAnswer");
		String p3_correctAnswer = request.getParameter("p3_correctAnswer");
		String p4_correctAnswer = request.getParameter("p4_correctAnswer");
		
		String user_id = request.getParameter("user_id");
		String game_title = request.getParameter("game_title");
		String game_average = request.getParameter("game_average");
		
		if(btn_p2 != null) {
			boolean answer = game01Service.getP2Answer(p2_correctAnswer);
			HttpSession session = request.getSession();
			if(answer) {
				String info = "통과";
				session.setAttribute("p2Check", info);
				response.sendRedirect("./game01/page1.jsp");
			} else {
				response.setContentType("text/html; charset=UTF-8");
				PrintWriter out = response.getWriter();
				out.println("<script>");
				out.println("alert('정답이 아닙니다.')");
				out.println("history.back()");
				out.println("</script>");
			}
			btn_p2 = null;
		} else {
			btn_p2 = null;
		}
		
		if(btn_p3 != null) {
			boolean answer = game01Service.getP3Answer(p3_correctAnswer);
			HttpSession session = request.getSession();
			if(answer) {
				String info = "통과";
				session.setAttribute("p3Check", info);
				response.sendRedirect("./game01/page6.jsp");
			} else {
				response.setContentType("text/html; charset=UTF-8");
				PrintWriter out = response.getWriter();
				out.println("<script>");
				out.println("alert('정답이 아닙니다.')");
				out.println("history.back()");
				out.println("</script>");
			}
			btn_p3 = null;
		} else {
			btn_p3 = null;
		}
		
		if(btn_p4 != null) {
			boolean answer = game01Service.getP4Answer(p4_correctAnswer);
			HttpSession session = request.getSession();
			if(answer) {
				String info = "돌아가기";
				session.setAttribute("p4Check", info);
				response.sendRedirect("./game01/page5.jsp");
			} else {
				response.setContentType("text/html; charset=UTF-8");
				PrintWriter out = response.getWriter();
				out.println("<script>");
				out.println("alert('정답이 아닙니다.')");
				out.println("history.back()");
				out.println("</script>");
			}
			btn_p4 = null;
		} else {
			btn_p4 = null;
		}
		
		if(btn_review != null) {
			boolean review = ReviewService.setReview(user_id, game_title, game_average);
			boolean reviewCheck = ReviewService.getReviewCheck(user_id, game_title);
			if(!reviewCheck) {
				response.setContentType("text/html; charset=UTF-8");
				PrintWriter out = response.getWriter();
				out.println("<script>");
				out.println("alert('이미 리뷰를 작성했습니다.')");
				out.println("history.back()");
				out.println("</script>");
			}
			if(review) {
				response.sendRedirect("./mainView.jsp");
			} else {
				response.setContentType("text/html; charset=UTF-8");
				PrintWriter out = response.getWriter();
				out.println("<script>");
				out.println("alert('아이디 입력을 확인해주세요, 제목은 공백 없이 입력해주세요.')");
				out.println("history.back()");
				out.println("</script>");
			}
			btn_review = null;
		} else {
			btn_review = null;
		}
	}
}