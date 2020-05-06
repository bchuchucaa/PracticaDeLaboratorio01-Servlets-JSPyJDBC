package privada.controler;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.ProcessBuilder.Redirect;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jdk.nashorn.internal.runtime.regexp.JoniRegExp.Factory;
import privada.dao.DAOFactory;
import privada.dao.JDBCDAOFactory;
import privada.dao.TelefonoDAO;
import privada.modelo.Telefono;
import privada.modelo.Usuario;

/**
 * Servlet implementation class SesionController
 */
@WebServlet("/SesionController")
public class SesionController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SesionController() {
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
		response.getWriter().append("Served at: ").append(request.getContextPath());
		Usuario usuario = new Usuario();
		Telefono telefon = new Telefono();
		PrintWriter out = response.getWriter();
		String url = null;

		usuario.setCorreo(request.getParameter("correo"));
		usuario.setContrasena(request.getParameter("contrasena"));
		request.setAttribute("Usuario", usuario);
		out.println("<h1> Ha ingreso correctamente .... </h1>" + usuario.getApellido());
		DAOFactory factory = new JDBCDAOFactory();
		usuario = factory.getUsuarioDAO().logIn(usuario);
		HttpSession session = request.getSession();
		List<Telefono> telefonos = new ArrayList<Telefono>();
		List<Telefono> telfs = new ArrayList<Telefono>();
		if(usuario.getCedula()!=null) {
			telefon.setUsuario(usuario.getCedula());
			
			TelefonoDAO t= DAOFactory.getFactory().getTelefonoDAO();
			telefonos=t.buscarPorIdTelfono(usuario.getCedula());
			for(Telefono telefono : telefonos) {
				telfs.add(telefono);
			}
		}
	
		if (usuario != null) {
			try {

				session = request.getSession(true);
				session.setAttribute("sesion", "logueado");
				out.println("USUARIO:  " + session.getAttribute("sesion"));

				request.setAttribute("usuario", usuario);
				request.setAttribute("telefono", telfs);

				url = "/JSPs/usuario.jsp";
			} catch (Exception e) {
				// TODO: handle exception
				url = "/JSPs/error.jsp";
			}
			getServletContext().getRequestDispatcher(url).forward(request, response);

		} else {
			session.setAttribute("sesion", "invalido");
			out.println("USUARIO:  " + session.getAttribute("sesion"));

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
