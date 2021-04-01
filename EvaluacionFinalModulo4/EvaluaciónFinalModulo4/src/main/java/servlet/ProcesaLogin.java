package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ProcesaLogin
 */
@WebServlet("/ProcesaLogin")
public class ProcesaLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	
	private final String LOGIN = "Hugo";
	private final String PASS = "1234";
	
    public ProcesaLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String requestLogin = "";
		String requestPass = "";

		PrintWriter out = response.getWriter();

		requestLogin = request.getParameter("login");
		requestPass = request.getParameter("pass");

		if (!LOGIN.contentEquals(requestLogin) || !PASS.contentEquals(requestPass)) {
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Usuario o password incorrecto');");
			out.println("location='Login.jsp';");
			out.println("</script>");
		} else {
			// creamos la sesion si el usuario existe
			HttpSession sesionUsuario = request.getSession(true);
			sesionUsuario.setAttribute("Nombre", requestLogin);
			RequestDispatcher rd = request.getRequestDispatcher(".jsp");
			rd.forward(request, response);
		}
		
	}

}
