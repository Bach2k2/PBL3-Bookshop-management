package controller;

import model.Category;
import model.ProductShow;
import dao.impl.ProductDAO;

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

@WebServlet(name = "BookServlet",urlPatterns = "/product")
public class ProductController extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private ProductDAO productDAO;

    public void init(ServletConfig config) throws ServletException
    {
        productDAO = new ProductDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if(action == null) action = "";
        try {
            switch (action) {
                case "new":
                    //showNewForm(request, response);
                    break;
                case "insert":
                    //insertProduct(request, response);
                    break;
                case "delete":
                    //deleteProduct(request, response);
                    break;
                case "edit":
                    //showEditForm(request, response);
                    break;
                case "update":
                    //updateProduct(request, response);
                    break;
                case "searchprice":
                {
                    searchprice(request,response);
                    break;
                }
                case "searchbook":
                {
                    searchBook(request,response);
                    break;
                }
                case "searchname":
                {
                   // searchName(request,response);
                    break;
                }
                default:
                    listProduct(request, response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }
    public void searchBook(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        String category[] = request.getParameterValues("categoriesearch");
        List<ProductShow> listProductShow = productDAO.GetPSListByCategory(category);
        request.setAttribute("listProductShow", listProductShow);
        List<Category> categories = productDAO.selectAllCategory();
        request.setAttribute("categories", categories);
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/product/product-list.jsp");
        dispatcher.forward(request, response);
    }
    public void searchprice(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        String price[] = request.getParameterValues("pricesearch");
        for(String s: price)
        {
            System.out.println(s);
        }
        List<ProductShow> listProductShow = productDAO.GetPSListByPrice(price);
        request.setAttribute("listProductShow", listProductShow);
        List<Category> categories = productDAO.selectAllCategory();
        request.setAttribute("categories", categories);
        RequestDispatcher dispatcher = request.getRequestDispatcher("views/product/product-list.jsp");
        dispatcher.forward(request, response);
    }
    public void listProduct(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        List<ProductShow> listProductShow = productDAO.convertProduct(productDAO.selectAllProduct());
        request.setAttribute("listProductShow", listProductShow);
        List<Category> categories = productDAO.selectAllCategory();
        request.setAttribute("categories", categories);
        RequestDispatcher dispatcher = request.getRequestDispatcher("views/product/product-list.jsp");
        dispatcher.forward(request, response);
    }

}
