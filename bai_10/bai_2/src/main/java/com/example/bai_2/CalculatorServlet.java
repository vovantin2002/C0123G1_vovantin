package com.example.bai_2;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CalculatorServlet ", value = "/calculator")
public class CalculatorServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        double num1 = Double.parseDouble(request.getParameter("num1"));
        double num2 = Double.parseDouble(request.getParameter("num2"));
        String operator = request.getParameter("operator");
        String result;
        if (operator == null) {
            operator = "";
        }
        switch (operator) {
            case "add":
                result = num1 + "+" + num2 + "=" + (num1 + num2);
                break;
            case "apart_from":
                result = num1 + "-" + num2 + "=" + (num1 - num2);
                break;
            case "core":
                result = num1 + "*" + num2 + "=" + (num1 * num2);
                break;
            case "divide":
                if (num2 == 0) {
                    throw new RuntimeException("chia cho so 0");
                }
                result = num1 + "/" + num2 + "=" + (num1 / num2);
                break;
            default:
                result = "0";
        }
        request.setAttribute("result", result);
        request.getRequestDispatcher("/result.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
