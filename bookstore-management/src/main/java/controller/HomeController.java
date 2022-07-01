package controller;

import model.Account;
import model.Customer;
import service.IAccountService;
import service.impl.AccountService;
import service.impl.CustomerService;
import utils.FormUtil;
import utils.SessionUtil;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.util.Date;
import java.util.Locale;

@WebServlet(name = "HomeServlet", urlPatterns = {"/", "/home"})
public class HomeController extends HttpServlet {

    //    @Inject
//    private IAccountService accountService;// null account service
    private AccountService accountService = new AccountService();

    private CustomerService customerService = new CustomerService();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "login":
                loginUser(request, response);
                break;
            case "register":
                registerForCustomer(request, response);
                break;

        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        System.out.println("Welcome home get in");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "register":
                response.sendRedirect("views/account/register.jsp");
                break;
            case "login":
            {

                {
                    Cookie arrC[]=request.getCookies();
                    for(Cookie c:arrC)
                    {
                        if(c.getName().equals("user")) request.setAttribute("username",c.getValue());
                        if(c.getName().equals("pass")) request.setAttribute("password",c.getValue());
                    }
                }
                request.getRequestDispatcher("views/account/login.jsp").forward(request,response);
                break;
            }
            case "logout":
                logoutUser(request,response);
                break;
            case "product":
                response.sendRedirect("views/product/product-list.jsp");
                break;
            default:
                showHomePage(request, response);
        }
    }

    public void showHomePage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("views/home-page.jsp");
        dispatcher.forward(request, response);
    }

    public void loginUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{
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

                Cookie u=new Cookie("user",username);
                Cookie p=new Cookie("pass",password);
                u.setMaxAge(60);
                p.setMaxAge(60);
                response.addCookie(u);// luu u va p len tren edge;
                response.addCookie(p);

                //      request.getRequestDispatcher(request.getContextPath() + "/view/account/login.jsp").forward(request, response);
                //   response.sendRedirect(request.getContextPath()+"/view/account/login.jsp");
                if (model.getRole().getCode().equals("CUSTOMER")) {
                    System.out.println("Vào trang customer");
//                response.sendRedirect("");
                } else if (model.getRole().getCode().equals("ADMIN")) {  //Loi Form Util
                    System.out.println("Vào trang admin");
                    //response.sendRedirect(request.getContextPath());
//                request.getRequestDispatcher(request.getContextPath() + "views/admin/admin-home.jsp").forward(request, response);
                }
                showHomePage(request,response);
            } else {
                request.setAttribute("message", "Đăng nhập thất bại. username hoặc password không đúng");
                request.setAttribute("check", false);
                System.out.println("Đăng nhập thất bại");
                request.getRequestDispatcher("views/account/login.jsp").forward(request, response);
            }
        }catch (NullPointerException e)
        {
            e.printStackTrace();
        }

    }

    public void registerForCustomer(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            // Customer cus=FormUtil.toModel(Customer.class,request);
            Customer cus = null;
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            Date dateOfBirth = new SimpleDateFormat("dd-MM-yyyy").parse(request.getParameter("birthday"));
            String gender1 = request.getParameter("gender");
            Boolean gender;
            if (gender1.equals("true")) gender = true;
            else gender = false;
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            String address = request.getParameter("address");
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            System.out.println("Username: " + username);

            Account account = null;
            Date signUpDate = new SimpleDateFormat("yyyy-MM-dd").parse(String.valueOf(LocalDateTime.now()));
            LocalDateTime lastLogin = LocalDateTime.now();
            account = new Account(username, password, signUpDate, lastLogin, true, 2);

            cus = new Customer(firstName, lastName, gender, dateOfBirth, email, phone, address, account.getIdAccount());

            accountService.save(account);
            customerService.save(cus);
            response.sendRedirect("customer/customer.jsp");
        } catch (ParseException e) {
            e.printStackTrace();
        }
    }
    public void logoutUser(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session=request.getSession();
        session.removeAttribute("account");
        response.sendRedirect(request.getContextPath() + "/home");
    }

}
