package controller;

import dao.impl.ProductDAO;
import model.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.time.LocalDate;
import java.sql.Date;
import java.util.List;

@WebServlet(name = "PayingController",urlPatterns = "/paying")
public class PayingController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ProductDAO productDAO;

    public PayingController() {
        super();
        // TODO Auto-generated constructor stub
    }

    public void init(ServletConfig config) throws ServletException
    {
        // TODO Auto-generated method stub
        productDAO = new ProductDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
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
                case "deleteod":
                    //deleteofCart(request, response);
                    break;
                case "thanhtoan":
                    Thanhtoan(request, response);
                    break;
                case "searchname":
                {
                    searchname(request,response);
                    break;
                }
                default:
                    Payingdetail(request, response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }
    private void Thanhtoan(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException
    {
        int ID_Cart = Integer.parseInt(request.getParameter("ID_U"));
        String order_location = request.getParameter("order_location");
        String phone_number = request.getParameter("phone_number");
        Date delivery_date = Date.valueOf(LocalDate.parse(request.getParameter("delivery_date")));
        Date order_date = Date.valueOf(LocalDate.now());
        double total_price = Double.parseDouble(request.getParameter("Tongtien"));
        String order_status = "Chua giao";
        Order o = new Order(ID_Cart,total_price,order_status,order_date,phone_number,delivery_date,order_location,order_status);
        productDAO.insertOrder(o);
        productDAO.UpdatequantityProductMinus(productDAO.getOrderDetailForCart(ID_Cart));
        boolean a = productDAO.SetIDOrderOrderDetail(ID_Cart, productDAO.selectID_Order());
        boolean b = productDAO.SetstatusOrderDetail(ID_Cart);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/views/product/paying.jsp");
        dispatcher.forward(request, response);
    }
    private void Payingdetail(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException
    {
        int ID_Cart = Integer.parseInt(request.getParameter("ID_U"));
        request.setAttribute("ID_U", ID_Cart);
        List<OrderDetail> ors = productDAO.getOrderDetailForCart(ID_Cart);
        List<OrderDetailShow> orss = productDAO.convertFromOrderDetail(ors);
        request.setAttribute("listOrderdetailShow", orss);
        double Tongtien = productDAO.Tongtien(ors);
        request.setAttribute("Tongtien", Tongtien);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/views/product/paying.jsp");
        dispatcher.forward(request, response);
        //response.sendRedirect("Product-list.jsp");
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
        RequestDispatcher dispatcher = request.getRequestDispatcher("/views/product/product-list.jsp");
        dispatcher.forward(request, response);
    }
}
