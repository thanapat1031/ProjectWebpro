/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Model.Cart;
import Model.Cart.LineItem;
import entity.Customer;
import java.io.IOException;
import java.io.PrintWriter;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author paw
 */
public class ConfirmServlet extends HttpServlet {

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
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("com.mycompany_ProjectWebPro_war_1.0-SNAPSHOTPU");
        EntityManager em = emf.createEntityManager();
        String checkout = request.getParameter("purchase");
        
        HttpSession session = request.getSession();
        HttpSession cart = request.getSession();
        Cart c = (Cart) session.getAttribute("cart");
        Customer customerid = (Customer) session.getAttribute("user");
        Integer payment = (int) ((Math.random() * ((1000 - 1) + 1)) + 1);
        Integer gen = (int) ((Math.random() * ((1000 - 1) + 1)) + 1);
      
        em.getTransaction().begin();
        em.createNativeQuery("insert into Payment (paymentId,orderDetail) values "+"("+payment+",'"+customerid.getCustomerName()+"')").executeUpdate();
        em.createNativeQuery("insert INTO dbwebpro.Order (orderId, Payment_paymentId, Customer_customerId ) VALUES "
                + "("+gen+","+payment+","+customerid.getCustomerId()+")").executeUpdate();
        for (LineItem line : c.getItems()) {
             em.createNativeQuery("insert INTO Orderdetail (orderId,productId,orderQuantity,orderPrice) VALUES ("+gen+","+line.getProduct().getProductId()+","+line.getQuantity()+","+line.getPrice()+")").executeUpdate();
        
        }
        
        
        session.removeAttribute("cart");
        em.getTransaction().commit();
        em.close();
        
        request.getRequestDispatcher("Thankyou.jsp").forward(request, response);
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