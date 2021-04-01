package servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Implementacion.ImpUsuario;
import Modelo.Usuario;

/**
 * Servlet implementation class SubirUsuario
 */
@WebServlet("/SubirUsuario")
public class SubirUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SubirUsuario() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String uRun = request.getParameter("uRun");

		String usuNombre = request.getParameter("usuNombre");

		String usuApellido = request.getParameter("usuApellido");

		String usuFechaNacimiento = request.getParameter("usuFechaNacimiento");
		
		String usuTipo = request.getParameter("usuTipo");
		
		
		Usuario nuevaInscripcion = new Usuario();

		nuevaInscripcion.setuRun(uRun);

		nuevaInscripcion.setUsuNombre(usuNombre);

		nuevaInscripcion.setUsuApellido(usuApellido);

		nuevaInscripcion.setUsuFechaNacimiento(usuFechaNacimiento);
		
		nuevaInscripcion.setUsuTipo(usuTipo);

		try {
			ImpUsuario nuevoUsuario = new ImpUsuario();

			nuevoUsuario.subirUsuario(nuevaInscripcion);

			request.getRequestDispatcher("/ListarUsuarios").include(request, response);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
