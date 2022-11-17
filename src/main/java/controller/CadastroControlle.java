package controller;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Cadastro;
import model.DAO;

@WebServlet(urlPatterns = {"/CadastroControlle", "/addCadastro", "/delete","/AlterarCadastro"})
public class CadastroControlle extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	DAO dao = new DAO();
       
    
    public CadastroControlle() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getServletPath();
		PrintWriter out = response.getWriter();
		Cadastro cadastro = new Cadastro();
		try {
			switch(action){
			case "/addCadastro":
				cadastro.setNomePet(request.getParameter("nomePet"));
				cadastro.setRaca(request.getParameter("raca"));
				cadastro.setNomePropretario(request.getParameter("nomePropretario"));
				cadastro.setEmail(request.getParameter("email"));
				cadastro.setTelefone(request.getParameter("telefone"));
				out.println("Cadastro: " + cadastro + " cadastrado com sucesso!");
				break;
			case "/delete":
				cadastro.setCodCadastro(Integer.valueOf(request.getParameter("codCadastro")));
				cadastro.excluirCadastro();
				response.sendRedirect("exibirCadastro.jsp");
				break;
			case "/AlterarCadastro":
				cadastro.setNomePet(request.getParameter("nomePet"));
				cadastro.setRaca(request.getParameter("raca"));
				cadastro.setNomePropretario(request.getParameter("nomePropretario"));
				cadastro.setEmail(request.getParameter("email"));
				cadastro.setTelefone(request.getParameter("telefone"));
				cadastro.AlterarCadastro();
				response.sendRedirect("exibirCadastro.jsp");
				break;
				
			default:

			}
		} catch (Exception e) {
			
		}
		
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
