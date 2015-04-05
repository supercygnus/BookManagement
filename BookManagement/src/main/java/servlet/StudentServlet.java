package servlet;

import java.io.IOException;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import dao.StuDB;

/**
 * Servlet implementation class StudentServlet
 */

public class StudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action=request.getParameter("action");
		String message="";
		HttpSession session=request.getSession();
		Vector<String> student;
		WebApplicationContext wac=WebApplicationContextUtils.getWebApplicationContext(this.getServletContext());
		StuDB sdb=(StuDB) wac.getBean("StuDB");
		String stuNO=(String) session.getAttribute("stuNo");
		if(action.equals("login")){
			stuNO=request.getParameter("username").trim();
			String pwd=request.getParameter("password").trim();
			
			if(sdb.verify(stuNO, pwd)){
				student=sdb.getStuInfo(stuNO);
				session.setAttribute("stuNo", stuNO);
				session.setAttribute("stuName", student.get(1));
			}
			else{
				message="非法的使用者名稱與密碼";
				request.setAttribute("message", message);
			}
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
		else if(action.equals("stuInfo")){
			if(stuNO!=null){
				student=sdb.getStuInfo(stuNO);
				request.setAttribute("student", student);
				request.getRequestDispatcher("stuInfo.jsp").forward(request, response);
			}
			else{
				message="你還沒有登入,請登入後再試";
				request.setAttribute("message", message);
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}
		}
		else if(action.equals("simple")){
			String key=request.getParameter("key").toUpperCase();
			String condition=request.getParameter("condition");
			String 
		}
		else if(action.equals("complex")){
			
		}
	}

}
