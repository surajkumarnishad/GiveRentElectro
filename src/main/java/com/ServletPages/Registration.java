package com.ServletPages;

import java.io.IOException;
import java.util.Collection;

import com.models.Profiles;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
@WebServlet("/register")
@MultipartConfig(
		location = "C:\\Users\\new\\maven-project\\GiveRentElectro\\src\\main\\webapp\\images\\profiles\\",
		fileSizeThreshold = 1000000000,
		maxFileSize = 1000000000,
		maxRequestSize = 1000000000
		)
public class Registration extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String Name= req.getParameter("name"); 
		String Father_name= req.getParameter("fname");
		String DOB= req.getParameter("dob");
		String Email= req.getParameter("email");
		String Mobile=req.getParameter("mobile");
		String Password=req.getParameter("pass");
		String Id=req.getPart("id").getSubmittedFileName();
		String Photo=req.getPart("photo").getSubmittedFileName();
		
		
		Profiles profile = new Profiles(Name, Father_name, DOB, Email, Mobile, Password, Id, Photo);
		
		EntityManagerFactory emf=Persistence.createEntityManagerFactory("unit");
		EntityManager em=emf.createEntityManager();
		em.getTransaction().begin();
		em.persist(profile);
		em.getTransaction().commit();
	
		resp.sendRedirect("index.jsp");
	}

	

}
