package controller;

import dao.impl.ProductDAO;
import model.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "CartController",urlPatterns = "/MyCart")
public class CartController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ProductDAO productDAO;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public CartController() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String action = request.getParameter("action");
        if(action == null) action = "";
        HttpSession session=request.getSession();
        Account account=(Account) session.getAttribute("account");
        if(account==null)
        {
            request.setAttribute("link","/product");
            request.setAttribute("message","Quay lại trang danh sách sản phẩm");
            request.getRequestDispatcher("views/authorization/error-authentication");

        }else{
            request.setAttribute("","");
        }
        try {
            switch (action) {
                case "new":
                    //showNewForm(request, response);
                    break;
                case "insert":
                    //insertProduct(request, response);
                    break;
                case "deleteod":
                    deleteofCart(request, response);
                    break;
                case "edit":
                    //showEditForm(request, response);
                    break;
                case "searchname":
                {
                    searchname(request,response);
                    break;
                }
                default:
                    listOrderdetail(request, response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }
    private void deleteofCart(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException
    {
        int ID_Cart = Integer.parseInt(request.getParameter("ID_U"));
        request.setAttribute("ID_U", ID_Cart);
        int ID_Product = Integer.parseInt(request.getParameter("ID_ProductShow"));
        boolean status = Boolean.parseBoolean(request.getParameter("statusShow"));
        boolean conduct = productDAO.deleteOrderDetail(ID_Product, ID_Cart, status);
        listOrderdetail(request, response);
    }
    private void searchname(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException
    {
        String name = request.getParameter("namesearch");
        System.out.print(name);
        List<ProductShow> listProductShow = productDAO.GetPSListByName(name);
        request.setAttribute("listProductShow", listProductShow);
        List<Category> categorys = productDAO.selectAllCategory();
        request.setAttribute("categorys", categorys);
        RequestDispatcher dispatcher = request.getRequestDispatcher("views/product/product-list.jsp");
        dispatcher.forward(request, response);
    }
    private void listOrderdetail(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException
    {
        int ID_Cart = Integer.parseInt(request.getParameter("ID_U"));
        request.setAttribute("ID_U", ID_Cart);
        List<OrderDetail> ors = productDAO.getOrderDetailForCart(ID_Cart);
        List<OrderDetailShow> orss = productDAO.convertFromOrderDetail(ors);
        request.setAttribute("listOrderdetailShow", orss);
        double Tongtien = productDAO.Tongtien(ors);
        request.setAttribute("Tongtien", Tongtien);
        List<ProductShow> listProductShow = productDAO.convertProduct(productDAO.selectAllProduct());
        request.setAttribute("listProductShow", listProductShow);
        List<Category> categorys = productDAO.selectAllCategory();
        request.setAttribute("categorys", categorys);
        RequestDispatcher dispatcher = request.getRequestDispatcher("views/product/my-cart.jsp");
        dispatcher.forward(request, response);
        //response.sendRedirect("Product-list.jsp");
    }

}
