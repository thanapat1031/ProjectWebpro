/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import entity.Product;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author User
 */
public class ProductListServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String typeParam = request.getParameter("type");
        int type = Integer.parseInt(typeParam);

        EntityManagerFactory emf = Persistence.createEntityManagerFactory("com.mycompany_ProjectWebPro_war_1.0-SNAPSHOTPU");
        EntityManager em = emf.createEntityManager();

        if (type == 1) {
            Query qry = em.createQuery("SELECT p FROM Product p WHERE p.productId BETWEEN 1001 AND 1015");
            List<Product> pd = qry.getResultList();
            request.setAttribute("product", pd);
            request.getRequestDispatcher("/C_food.jsp").forward(request, response);
        } else if (type == 2) {
            Query qry = em.createQuery("SELECT p FROM Product p WHERE p.productId BETWEEN 1016 AND 1030");
            List<Product> pd = qry.getResultList();
            request.setAttribute("product", pd);
            request.getRequestDispatcher("/C_milk.jsp").forward(request, response);
        } else if (type == 3) {
            Query qry = em.createQuery("SELECT p FROM Product p WHERE p.productId BETWEEN 1031 AND 1045");
            List<Product> pd = qry.getResultList();
            request.setAttribute("product", pd);
            request.getRequestDispatcher("/C_toy.jsp").forward(request, response);
        } else if (type == 4) {
            Query qry = em.createQuery("SELECT p FROM Product p WHERE p.productId BETWEEN 1046 AND 1060");
            List<Product> pd = qry.getResultList();
            request.setAttribute("product", pd);
            request.getRequestDispatcher("/C_cage.jsp").forward(request, response);
        } else if (type == 5) {
            Query qry = em.createQuery("SELECT p FROM Product p WHERE p.productId BETWEEN 1061 AND 1075");
            List<Product> pd = qry.getResultList();
            request.setAttribute("product", pd);
            request.getRequestDispatcher("/C_bath.jsp").forward(request, response);
        } else {
            Query qry = em.createQuery("SELECT p FROM Product p WHERE p.productId BETWEEN 1076 AND 1090");
            List<Product> pd = qry.getResultList();
            request.setAttribute("product", pd);
            request.getRequestDispatcher("/C_coupon.jsp").forward(request, response);
        }
        return;
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
