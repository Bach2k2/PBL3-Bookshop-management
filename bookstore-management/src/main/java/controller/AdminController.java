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
        if (action == null) {
            action = "";
        }
        try {
            switch (action) {
                case "product-management": {
                    showProductManagement(request, response);
                    break;
                }
                case "category-management": {
                    showCategoryManagement(request, response);
                    break;
                }
                default: {
                    showAdminHome(request,response);
                }
            }
        } catch (SQLException exception) {
            exception.printStackTrace();
        }
    }

    public void showAdminHome(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        response.sendRedirect(request.getContextPath()+"/");
    }

    public void showProductManagement(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException
            , SQLException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("views/admin/product-management.jsp");
        dispatcher.forward(request, response);
    }
    public void showCategoryManagement(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException
            , SQLException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("views/admin/category-management.jsp");
        dispatcher.forward(request, response);
    }
}
