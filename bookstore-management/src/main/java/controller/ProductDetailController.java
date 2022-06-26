package controller;

import dao.impl.ProductDAO;
import model.Category;
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

@WebServlet(name = "ProductDetailController",urlPatterns = "/productDetail")
public class ProductDetailController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ProductDAO productDAO;
    public void init(ServletConfig config) throws ServletException
    {
        productDAO = new ProductDAO();
        // TODO Auto-generated method stub
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = 0;
        id = Integer.parseInt(request.getParameter("id_product"));
        String action = request.getParameter("action");
        if(action == null) action = "";
        ProductShow ps = null;
        ps = productDAO.convertProduct(productDAO.selectProduct(id));
        if(ps == null) System.out.print("aaaaaaaa"); else System.out.print("bbbbbb");
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
                    //searchprice(request,response);
                    break;
                }
                case "searchbook":
                {
                    //searchbook(request,response);
                    break;
                }
                case "searchname":
                {
                    searchname(request,response);
                    break;
                }
                case "detail":
                {
                    showDetailForm(request,response);
                    break;
                }
                default:
                    Product_detail(request, response, ps);
                    break;
            }
        } catch (Exception ex)
        {
            throw new ServletException(ex);
        }
    }
    private void searchname(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException
    {
        String name = request.getParameter("namesearch");
        System.out.print(name);
        List<ProductShow> listProductShow = productDAO.GetPSListByName(name);
        request.setAttribute("listProductShow", listProductShow);
        List<Category> categories = productDAO.selectAllCategory();
        request.setAttribute("categories", categories);
        RequestDispatcher dispatcher = request.getRequestDispatcher("views/product/product-detail.jsp");
        dispatcher.forward(request, response);
    }
    protected void Product_detail(HttpServletRequest request, HttpServletResponse response, ProductShow ps) throws ServletException, IOException
    {
        List<ProductShow> listProductShow = productDAO.convertProduct(productDAO.selectAllProduct());
        List<ProductShow> listPSsameCategory = productDAO.GetBookWithSameCategory(ps);
        List<ProductShow> listPSsameAuthor = productDAO.GetBookWithSameAuthor(ps);
        request.setAttribute("listPSsameCategory" , listPSsameCategory);
        request.setAttribute("listPSsameAuthor" , listPSsameAuthor);
        request.setAttribute("listProductShow", listProductShow);
        request.setAttribute("ProductShowdetail", ps);
        List<Category> categories = productDAO.selectAllCategory();
        request.setAttribute("categories", categories);

        RequestDispatcher dispatcher = request.getRequestDispatcher("view/product/product-detail.jsp");
        dispatcher.forward(request, response);
    }
    public void showDetailForm(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException
    {

    }
}
