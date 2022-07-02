package controller;

import dao.impl.ProductDAO;
import model.Category;
import model.Order;
import model.ProductShow;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "OrderController")
public class OrderController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ProductDAO productDAO;

    public OrderController() {
        super();
    }

    public void init(ServletConfig config) throws ServletException
    {
        productDAO = new ProductDAO();
        // TODO Auto-generated method stub
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if(action == null) action = "";
        try {
            switch (action) {
                case "insert":
                    //insertProduct(request, response);
                    break;
                case "delete":
                    //deleteProduct(request, response);
                    break;
                case "update":
                    //updateProduct(request, response);
                    break;
                default:
                    listProduct(request, response);
                    break;
            }
        } catch (Exception ex) {
            throw new ServletException(ex);
        }
    }
    private void listProduct(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        List<ProductShow> listProductShow = productDAO.convertProduct(productDAO.selectAllProduct());
        request.setAttribute("listProductShow", listProductShow);
        List<Category> categorys = productDAO.selectAllCategory();
        request.setAttribute("categorys", categorys);
        List<Order> orders = productDAO.selectAllOrder();
        request.setAttribute("listOrder", orders);
        RequestDispatcher dispatcher = request.getRequestDispatcher("OrderQL.jsp");
        dispatcher.forward(request, response);
    }
}
