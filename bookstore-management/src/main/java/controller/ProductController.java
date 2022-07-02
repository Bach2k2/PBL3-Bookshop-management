package controller;

import model.Account;
import model.Category;
import model.Customer;
import model.ProductShow;
import dao.impl.ProductDAO;
import service.impl.AccountService;
import service.impl.CustomerService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "BookServlet", urlPatterns = "/product")
public class ProductController extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private ProductDAO productDAO;
    private AccountService accountService;

    private CustomerService customerService;


    public void init(ServletConfig config) throws ServletException {
        productDAO = new ProductDAO();
        accountService = new AccountService();
        customerService = new CustomerService();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String action = request.getParameter("action");
        if (action == null) action = "";
        doGet(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) action = "";
        int ID_User = Integer.parseInt(request.getParameter("ID_U"));
        request.setAttribute("ID_U", ID_User);
        try {
            switch (action) {
                case "searchprice": {
                    searchPrice(request, response);
                    break;
                }
                case "searchbook": {
                    searchBook(request, response);
                    break;
                }
                case "searchname": {
                    searchName(request, response);
                    break;
                }
                case "myAccount": {
                    showUserInfo(request, response);
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

    private void searchName(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        String name = request.getParameter("namesearch");
        System.out.print(name);
        //request.setAttribute("reloadmess", name);
        List<ProductShow> listProductShow = productDAO.GetPSListByName(name);
        request.setAttribute("listProductShow", listProductShow);
        List<Category> categorys = productDAO.selectAllCategory();
        request.setAttribute("categories", categorys);
        RequestDispatcher dispatcher = request.getRequestDispatcher("views/product/product-list.jsp");
        dispatcher.forward(request, response);
    }

    private void searchBook(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        String category[] = request.getParameterValues("categorysearch");
        List<ProductShow> listProductShow = productDAO.GetPSListByCategory(category);
        request.setAttribute("listProductShow", listProductShow);
        List<Category> categorys = productDAO.selectAllCategory();
        request.setAttribute("categories", categorys);
        RequestDispatcher dispatcher = request.getRequestDispatcher("views/product/product-list.jsp");
        dispatcher.forward(request, response);
    }

    private void searchPrice(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        String price[] = request.getParameterValues("pricesearch");
        for (String s : price) {
            System.out.println(s);
        }
        List<ProductShow> listProductShow = productDAO.GetPSListByPrice(price);
        request.setAttribute("listProductShow", listProductShow);
        List<Category> categorys = productDAO.selectAllCategory();
        request.setAttribute("categories", categorys);
        RequestDispatcher dispatcher = request.getRequestDispatcher("views/product/product-list.jsp");
        dispatcher.forward(request, response);
    }

    public void listProduct(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        List<ProductShow> listProductShow = productDAO.convertProduct(productDAO.selectAllProductWithImages());
        request.setAttribute("listProductShow", listProductShow);
        List<Category> categories = productDAO.selectAllCategory();
        request.setAttribute("categories", categories);
        RequestDispatcher dispatcher = request.getRequestDispatcher("views/product/product-list.jsp");
        dispatcher.forward(request, response);
    }

    public void loginUser(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        try {
            request.setAttribute("message", null);
            Account model = null;
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            model = accountService.findByUsernameAndPasswordAndStatus(username, password, true);
            if (model != null) {
                accountService.setRole(model, model.getIdRole());
                HttpSession session = request.getSession();
                session.setAttribute("account", model);
                session.setMaxInactiveInterval(3 * 60 * 60);
                request.setAttribute("check", true);
                request.setAttribute("username", model.getUsername());

                Cookie u = new Cookie("user", username);
                Cookie p = new Cookie("pass", password);
                u.setMaxAge(60);
                p.setMaxAge(60);
                response.addCookie(u);// luu u va p len tren edge;
                response.addCookie(p);

                if (model.getRole().getCode().equals("CUSTOMER")) {
                    System.out.println("Vào trang customer");
//
                } else if (model.getRole().getCode().equals("ADMIN")) {  //Loi Form Util
                    System.out.println("Vào trang admin");

                }
                request.setAttribute("username", model.getUsername());
                listProduct(request, response);
            } else {
                request.setAttribute("message", "Đăng nhập thất bại. username hoặc password không đúng");
                request.setAttribute("check", false);
                System.out.println("Đăng nhập thất bại");
                request.getRequestDispatcher("views/account/login.jsp").forward(request, response);
            }
        } catch (NullPointerException e) {
            e.printStackTrace();
        }

    }

    public void showUserInfo(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
        Account account = (Account) session.getAttribute("account");
        Customer customer = customerService.findByIdAccount(account.getIdAccount());
        request.setAttribute("account", account);
        request.setAttribute("user", customer);
        RequestDispatcher dispatcher = request.getRequestDispatcher("views/user/user-info.jsp");
        dispatcher.forward(request, response);
    }

}
