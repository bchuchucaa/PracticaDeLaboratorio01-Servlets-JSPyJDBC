package privada.controler;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import privada.dao.DAOFactory;
import privada.dao.TelefonoDAO;
import privada.modelo.Telefono;
import privada.modelo.Usuario;

/**
 * Servlet implementation class ActualizarTelefono
 */
@WebServlet("/ActualizarTelefono")
public class ActualizarTelefono extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ActualizarTelefono() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url="";
		Telefono telefono= new Telefono();
		Usuario usuario = new Usuario();
		TelefonoDAO t= DAOFactory.getFactory().getTelefonoDAO();
		telefono.setCodigo(Integer.valueOf(request.getParameter("codigo")));
		usuario.setCorreo(request.getParameter("correo"));
		usuario.setContrasena(request.getParameter("contrasena"));
		try {
			request.setAttribute("usuario", usuario);
			request.setAttribute("telefono", telefono);
			url="/JSPs/actualizarTelefono.jsp";
		}catch (Exception e) {
			// TODO: handle exception
			System.out.println("error al redirigir");
		}
		getServletContext().getRequestDispatcher(url).forward(request, response);

	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
