package controller.gestor.activo;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import model.Conexion;
import model.MGestor;

/**
 * Servlet implementation class Activo_gestor
 */
@WebServlet("/Activo_gestor")
public class Activo_gestor extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HttpSession hs;
	private MGestor modelo_gestor;
	private Conexion conexionBD;
	private String id;
	private String resultado;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Activo_gestor() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// Reopen temporal de la BD.
        conexionBD = new Conexion();
        modelo_gestor = new MGestor(conexionBD.getConexion());
        
        hs = request.getSession();
        Object[] datos_gestor = (Object []) hs.getAttribute("identificacion");
        
        if(hs.getAttribute("log") == null || !datos_gestor[1].equals("G")){
			response.sendRedirect("error.jsp");
		}else{
        
			id = datos_gestor[0].toString();
			
			resultado = modelo_gestor.compruebaActivo(id);
			
			if(resultado.equalsIgnoreCase("N")){
				modelo_gestor.setActivo(id);
			}
			
			String sendAct = new Gson().toJson(resultado);
			response.setContentType("application/json");
			response.setCharacterEncoding("UTF-8");
			response.getWriter().write(sendAct);

		}
        
        //ˇIMPORTANTE! Cerrar la conexión.
  		try {
  			conexionBD.getConexion().close();
  		} catch (SQLException e) {
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
