package com.ServletPages;

import java.io.IOException;
import java.util.List;

import com.models.Profiles;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import jakarta.persistence.Query;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/login")
public class MyLogin extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String email=req.getParameter("email");
		String pass=req.getParameter("pass");
		
		EntityManagerFactory emf=Persistence.createEntityManagerFactory("unit");
		EntityManager em=emf.createEntityManager();
		Query q=em.createQuery("from Profiles where Email=?1 and Password=?2");
		q.setParameter(1, email);
		q.setParameter(2, pass);
		List<Profiles> p=q.getResultList();
		
		if(p.size()!=0)
		{
			HttpSession session=req.getSession();
			session.setAttribute("logindata", email);
			RequestDispatcher rd=req.getRequestDispatcher("index.jsp");
			rd.forward(req, resp);
		}
		else {
			
			resp.sendRedirect("index.jsp");
		}
		
		
	}


}
