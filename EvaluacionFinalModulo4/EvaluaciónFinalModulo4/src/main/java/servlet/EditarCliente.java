package servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Implementacion.ImpEditar;
import Modelo.Usuario;

/**
 * Servlet implementation class EditarCliente
 */
@WebServlet("/EditarCliente")
public class EditarCliente extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditarCliente() {
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
		
		
		Usuario nuevaEdicion = new Usuario();

		nuevaEdicion.setuRun(uRun);

		nuevaEdicion.setUsuNombre(usuNombre);

		nuevaEdicion.setUsuApellido(usuApellido);

		nuevaEdicion.setUsuFechaNacimiento(usuFechaNacimiento);
		
		nuevaEdicion.setUsuTipo(usuTipo);

		
		System.out.println(nuevaEdicion);
		
		try {
			ImpEditar usuarioEditado = new ImpEditar();

			usuarioEditado.editeUsuario(nuevaEdicion);

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
