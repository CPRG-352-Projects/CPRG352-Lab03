/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author MMM
 */
public class ageCalcServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/WEB-INF/ageCalculator.jsp").forward(request, response);
        return;
    }
    

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String age = request.getParameter("age");
        boolean check = isNumber(age);
        
        if(check) {
            int num = Integer.parseInt(age);
            int nextAge = num+1;
            request.setAttribute("ageMessage", "Your Age Next Birthday will be " + nextAge);
        } else if(age == null || age.equals("")) {
            request.setAttribute("ageMessage", "You Must Enter Current Age");
        } else {
            request.setAttribute("errorMessage", "You Must Enter A Valid Number");
        }
        getServletContext().getRequestDispatcher("/WEB-INF/ageCalculator.jsp").forward(request, response);
        return;
    }
    
    public static boolean isNumber(String age) {
        try {
            Integer.parseInt(age);
            return true;        
        } catch (NumberFormatException e) {
            return false;
        }
    }


}
