package servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Implementacion.ImpCapacitacion;
import Modelo.Capacitacion;

/**
 * Servlet implementation class SubirCapacitacion
 */
@WebServlet("/SubirCapacitacion")
public class SubirCapacitacion extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SubirCapacitacion() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String capFecha = request.getParameter("capFecha");

		String capHora = request.getParameter("capHora");

		String capLugar = request.getParameter("capLugar");

		String capDuracion = request.getParameter("capDuracion");

		Capacitacion nuevaInscripcion = new Capacitacion();

		nuevaInscripcion.setCapFecha(capFecha);

		nuevaInscripcion.setCapHora(capHora);

		nuevaInscripcion.setCapLugar(capLugar);

		nuevaInscripcion.setCapDuracion(capDuracion);

		try {
			ImpCapacitacion subir = new ImpCapacitacion();

			subir.subirCapacitacion(nuevaInscripcion);

			request.getRequestDispatcher("/ListarCapacitacion").include(request, response);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
