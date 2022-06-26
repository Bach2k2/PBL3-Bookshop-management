package controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "AdminController", urlPatterns = "/admin")
public class AdminController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        try {
            switch (action) {
                case "admin-book": {

                    showBookManagement(request, response);
                    break;
                }
                case "product-management": {
                    showProductManagement(request,response);
                    break;
                }
                default:{
                    showProductManagement(request,response);
                }
            }
        } catch (SQLException exception) {
            exception.printStackTrace();
        }
    }

    public void showBookManagement(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException
            , SQLException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/book/book-form");
        dispatcher.forward(request, response);
    }
    public void showProductManagement(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException
            , SQLException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/admin/product-list");
        dispatcher.forward(request, response);
    }
}
