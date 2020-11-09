///*
// * To change this license header, choose License Headers in Project Properties.
// * To change this template file, choose Tools | Templates
// * and open the template in the editor.
// */
//package Servlet;
//
//import Model.Cart;
//import entity.Product;
//import java.io.IOException;
//import java.io.PrintWriter;
//import javax.persistence.EntityManager;
//import javax.persistence.EntityManagerFactory;
//import javax.persistence.Persistence;
//import javax.persistence.PersistenceUnit;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//
///**
// *
// * @author angelmungg
// */
//@WebServlet(name = "BuyProductServlet", urlPatterns = {"/BuyProduct"})
//public class BuyProductServlet extends HttpServlet {
// @PersistenceUnit(unitName = "com.mycompany_ProjectWebPro_war_1.0-SNAPSHOTPU")
//    /**
//     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
//     * methods.
//     *
//     * @param request servlet request
//     * @param response servlet response
//     * @throws ServletException if a servlet-specific error occurs
//     * @throws IOException if an I/O error occurs
//     */
//    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        
////       String productId = request.getParameter("productId");
////        if (productId == null | productId.trim().length() == 0) {
////            request.getRequestDispatcher("/catagory.jsp").forward(request, response);
////            return;
////        }
////        EntityManagerFactory emf = Persistence.createEntityManagerFactory("com.mycompany_ProjectWebPro_war_1.0-SNAPSHOTPU");
////        EntityManager em = emf.createEntityManager();
////        Product p = em.find(Product.class, productId);
////        if (p != null) {
////            HttpSession session = request.getSession(true);
////            Cart cart = (Cart) session.getAttribute("cart");
////            if (cart == null) {
////                cart = new Cart();
////                session.setAttribute("cart", cart);
////            }
////            cart.add(p);
////        }
////        request.getRequestDispatcher("/ProductList").forward(request, response);
////    }
//    
//
//    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
//    /**
//     * Handles the HTTP <code>GET</code> method.
//     *
//     * @param request servlet request
//     * @param response servlet response
//     * @throws ServletException if a servlet-specific error occurs
//     * @throws IOException if an I/O error occurs
//     */
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        processRequest(request, response);
//        
//    }
//
//    /**
//     * Handles the HTTP <code>POST</code> method.
//     *
//     * @param request servlet request
//     * @param response servlet response
//     * @throws ServletException if a servlet-specific error occurs
//     * @throws IOException if an I/O error occurs
//     */
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        //processRequest(request, response);
//          request.getRequestDispatcher("howToUse.jsp").forward(request, response);
//    }
//
//    /**
//     * Returns a short description of the servlet.
//     *
//     * @return a String containing servlet description
//     */
//    @Override
//    public String getServletInfo() {
//        return "Short description";
//    }// </editor-fold>
//
//}
