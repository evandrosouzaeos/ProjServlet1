package br.com.projeto.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ServOla")
public class ServOla extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
    public ServOla() {
    	super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("Ola Turma");
		
		PrintWriter out = response.getWriter();
		out.print("Olá Turma!");
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		String msg = request.getParameter("descricao");
		
		//PrintWriter out = response.getWriter();
		//out.print("Você digitou: " + msg);
		
		request.setAttribute("msg", msg);
		request.getRequestDispatcher("index.jsp").forward(request, response);
		
		
	}

}
