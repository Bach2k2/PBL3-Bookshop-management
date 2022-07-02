package controller;

import dao.impl.ProductDAO;
import model.Category;
import model.OrderDetail;
import model.ProductShow;
import model.Rating;

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
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int ID_Product = 0;
        int ID_User = Integer.parseInt(request.getParameter("ID_U"));
        request.setAttribute("ID_U", ID_User);
        ID_Product = Integer.parseInt(request.getParameter("ID_Product"));
        request.setAttribute("ID_Product", ID_Product);
        request.setAttribute("listRating", productDAO.selectRatingByIDProduct(ID_Product));
        String action = request.getParameter("action");
        if(action == null) action = "";
        ProductShow ps = null;
        ps = productDAO.convertProduct(productDAO.selectProductByID(ID_Product));
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
                case "addrating":
                {
                    addrating(request,response,ID_User, ID_Product,ps);
                    break;
                }
                case "searchname":
                {
                    searchName(request,response);
                    break;
                }
                case "addcart":
                {
                    addcart(request,response,ps);
                    break;
                }
                default:
                    showProductDetail(request, response, ps);
                    break;
            }
        } catch (Exception ex)
        {
            throw new ServletException(ex);
        }
    }
    private void searchName(HttpServletRequest request, HttpServletResponse response)
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

    protected void showProductDetail(HttpServletRequest request, HttpServletResponse response, ProductShow ps) throws ServletException, IOException
    {
        List<ProductShow> listProductShow = productDAO.convertProduct(productDAO.selectAllProduct());
        List<ProductShow> listPSsameCategory = productDAO.getBookWithSameCategory(ps);
        List<ProductShow> listPSsameAuthor = productDAO.getBookWithSameAuthor(ps);
        request.setAttribute("listPSsameCategory" , listPSsameCategory);
        request.setAttribute("listPSsameAuthor" , listPSsameAuthor);
        request.setAttribute("listProductShow", listProductShow);
        request.setAttribute("ProductShowdetail", ps);
        List<Category> categories = productDAO.selectAllCategory();
        request.setAttribute("categories", categories);

        RequestDispatcher dispatcher = request.getRequestDispatcher("views/product/product-detail.jsp");
        dispatcher.forward(request, response);
    }

    private void addrating(HttpServletRequest request, HttpServletResponse response,int ID_User, int ID_Product,ProductShow ps)
            throws SQLException, IOException, ServletException
    {
        int rating_star = Integer.parseInt(request.getParameter("star"));
        String review_text = request.getParameter("review_text");
        Rating r = new Rating(ID_User,ID_Product,rating_star,review_text);
        productDAO.insertRating(r);
        productDAO.updateAverageRating(ID_Product);
        showProductDetail(request, response, ps);
    }
    private void addcart(HttpServletRequest request, HttpServletResponse response,ProductShow ps)
            throws SQLException, IOException, ServletException
    {
        int ID_Product = ps.getIdProduct();
        int ID_Order = 0;
        int ID_Cart = Integer.parseInt(request.getParameter("ID_U"));
        int quantity;
        if(request.getParameter("SL") != null)
        {
            quantity = Integer.parseInt(request.getParameter("SL"));
        }
        else quantity = 1;
        double price = ps.getPrice();
        double discountprice = 0;
        boolean status = false;
        OrderDetail or = new OrderDetail(ID_Product,ID_Order,ID_Cart,quantity,price,discountprice,status);
        productDAO.UpdateInsertOrderDetail(or);
        response.sendRedirect("./productDetail?ID_Product=" + ID_Product + "&ID_U="+ID_Cart);
    }
}
