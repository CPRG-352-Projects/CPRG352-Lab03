package servlets;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ArithmeticCalculatorServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("calculation", "Result: ---");
        getServletContext().getRequestDispatcher("/WEB-INF/ArithmeticCalc.jsp").forward(request, response);
        return;
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String firstNumber = request.getParameter("first_number");
        String secondNumber = request.getParameter("second_number");
        int num1;
        int num2;
        int total;

        boolean check = isNumber(firstNumber, secondNumber);

        String minus = request.getParameter("-");
        String plus = request.getParameter("+");
        String multiply = request.getParameter("*");
        String modulus = request.getParameter("%");
        
        if (check) {
            num1 = Integer.parseInt(firstNumber);
            num2 = Integer.parseInt(secondNumber);

            if (minus != null) {
                total = num1 - num2;
                request.setAttribute("calculation", "Result: " + total);
            } else if (plus != null) {
                total = num1 + num2;
                request.setAttribute("calculation", "Result: " + total);
            } else if (multiply != null) {
                total = num1 * num2;
                request.setAttribute("calculation", "Result: " + total);
            } else if (modulus != null) {
                total = num1 % num2;
                request.setAttribute("calculation", "Result: " + total);
            }
            
        } else {
            request.setAttribute("error", "Result: Invalid Input");
        }

        getServletContext().getRequestDispatcher("/WEB-INF/ArithmeticCalc.jsp").forward(request, response);
        return;
    }

    public static boolean isNumber(String num1, String num2) {
        try {
            Integer.parseInt(num1);
            Integer.parseInt(num2);
            return true;
        } catch (NumberFormatException e) {
            return false;
        }

    }

}
