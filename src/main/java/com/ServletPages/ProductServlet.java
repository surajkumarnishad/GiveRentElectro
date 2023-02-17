package com.ServletPages;
import java.io.IOException;
import java.io.PrintWriter;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import com.models.Features;
import com.models.P_Images;
import com.models.ProductDetails;
@WebServlet("/product")
@MultipartConfig(fileSizeThreshold = 100000000, maxFileSize = 100000000, maxRequestSize = 100000000)
public class ProductServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String p_category= req.getParameter("category");
		String p_name= req.getParameter("p_name");
		String p_description= req.getParameter("description");
		String p_dimension= req.getParameter("dimension");
		String img1= req.getPart("img1").getSubmittedFileName();
		String img2= req.getPart("img2").getSubmittedFileName();
		String img3= req.getPart("img3").getSubmittedFileName();
		String img4= req.getPart("img4").getSubmittedFileName();
		String p_processor= req.getParameter("processor");
		String ram= req.getParameter("ram");
		String storage= req.getParameter("storage");
		String brand= req.getParameter("brand");
		String os= req.getParameter("os");
		String rent=req.getParameter("rent");
		String deposit=req.getParameter("deposit");
		
		for(Part img:req.getParts()) {
			img.write("C:\\Users\\new\\maven-project\\GiveRentElectro\\src\\main\\webapp\\images\\products\\"+img1);
			
		}
		
		P_Images pimage= new P_Images(img1, img2, img3, img4);
		
		Features feature= new Features(p_processor, ram, storage, brand, os);
		
		ProductDetails pd = new ProductDetails(p_category, p_name, p_description, p_dimension, pimage, feature, rent, deposit);
		
		
		EntityManagerFactory emf=Persistence.createEntityManagerFactory("unit");
		EntityManager em=emf.createEntityManager();
		em.getTransaction().begin();
		em.persist(pd);
		em.getTransaction().commit();
	
		resp.sendRedirect("cpanel.html");
	
	}

}
