package controller.noticiario.activo;

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
import model.MNoticiero;

/**
 * Servlet implementation class Activo_noticiario
 */
@WebServlet("/Activo_noticiario")
public class Activo_noticiario extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HttpSession hs;
	private MNoticiero modelo_noticiario;
	private Conexion conexionBD;
	private String id;
	private String resultado;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Activo_noticiario() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// Reopen temporal de la BD.
        conexionBD = new Conexion();
        modelo_noticiario = new MNoticiero(conexionBD.getConexion());
        
        hs = request.getSession();
        Object[] datos_alumno = (Object []) hs.getAttribute("identificacion");
        
        if(hs.getAttribute("log") == null || !datos_alumno[1].equals("N")){
			response.sendRedirect("error.jsp");
		}else{
        
			id = datos_alumno[0].toString();
			
			resultado = modelo_noticiario.compruebaActivo(id);
			
			if(resultado.equalsIgnoreCase("N")){
				modelo_noticiario.setActivo(id);
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
