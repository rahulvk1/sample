/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.backend;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Rahul
 */
@WebServlet(name = "fromCart", urlPatterns = {"/fromCart"})
public class fromCart extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet fromCart</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet fromCart at " + request.getContextPath() + "</h1>");
            Integer total = 0;
            String p1_name=request.getParameter("p1");
            Integer p1_quant=0;
            if(!p1_name.isEmpty()){
                p1_name = request.getParameter("p1");
                p1_quant = Integer.parseInt(request.getParameter("pq1"));
            }
            String p2_name = request.getParameter("p2");
            Integer p2_quant = Integer.parseInt(request.getParameter("pq2"));
            String p3_name = request.getParameter("p3");
            Integer p3_quant = Integer.parseInt(request.getParameter("pq3"));
            if(p1_name.equals("Margherita")){
                total+=(100*p1_quant);
            }
            if(p2_name.equals("Cheese")){
                total+=(150*p2_quant);
            }
            if(p3_name.equals("Chicken")){
                total+=(200*p3_quant);
            }
            System.out.println(total);
            request.setAttribute("pn1", p1_name);
            //request.getRequestDispatcher("checkout.jsp").forward(request, response);
            request.setAttribute("pn2", p2_name);
            //request.getRequestDispatcher("checkout.jsp").forward(request, response);
            request.setAttribute("pn3", p3_name);
            //request.getRequestDispatcher("checkout.jsp").forward(request, response);
            request.setAttribute("pq1", p1_quant);
            //request.getRequestDispatcher("checkout.jsp").forward(request, response);
            request.setAttribute("pq2", p2_quant);
            //request.getRequestDispatcher("checkout.jsp").forward(request, response);
            request.setAttribute("pq3", p3_quant);
            //request.getRequestDispatcher("checkout.jsp").forward(request, response);
            request.setAttribute("total", total);
            request.getRequestDispatcher("checkout.jsp").forward(request, response);
            out.println("</body>");
            out.println("</html>");
        }
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
