package controller;

import model.Account;
import model.Customer;
import service.IAccountService;
import service.impl.AccountService;
import service.impl.CustomerService;
import utils.FormUtil;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.util.Date;
import java.util.Locale;

@WebServlet(name = "HomeServlet", urlPatterns = "/home")
public class HomeServlet extends HttpServlet {

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
                registerForCustomer(request,response);

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
                response.sendRedirect("account/register.jsp");
                break;
            case "login":
                response.sendRedirect("account/login.jsp");
                break;
            default:
                showHomePage(request, response);
        }
    }

    public void showHomePage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("home-page.jsp");
        dispatcher.forward(request, response);
    }

    public void loginUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //Account model= FormUtil.toModel(Account.class,request);// Binding dữ liệu từ form đăng nhập về
        Account model = null;
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        model = accountService.findByUsernameAndPasswordAndStatus(username, password, true);
        if (model != null) {
            if (model.getRole().getCode().equals("CUSTOMER")) {
                response.sendRedirect("customer/customer.jsp");
            } else if (model.getRole().getCode().equals("ADMIN")) {  //Loi Form Util
                response.sendRedirect("admin/admin-home.jsp");
            }
        } else {
            response.sendRedirect("/home?action=login");
        }
    }

    public void registerForCustomer(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            // Customer cus=FormUtil.toModel(Customer.class,request);
            Customer cus = null;
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String birthday1 = request.getParameter("birthday");
            Date birthday = new SimpleDateFormat("yyyy-MM-dd").parse(birthday1);
            String gender1 = request.getParameter("gender");
            Boolean gender;
            if (gender1.equals("true")) gender = true;
            else gender = false;
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            String address = request.getParameter("address");
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            System.out.println("Username: "+ username);
            cus = new Customer(gender, firstName, lastName, birthday, email, phone, address, username);

            Account account = null;

            Date signUpDate = new SimpleDateFormat("yyyy-MM-dd").parse(String.valueOf(LocalDateTime.now()));
            LocalDateTime lastLogin = LocalDateTime.now();
            account = new Account(username, password, signUpDate, lastLogin, true, 2);

            accountService.save(account);
            customerService.save(cus);
            response.sendRedirect("customer/customer.jsp");
        } catch (ParseException e) {
            e.printStackTrace();
        }
    }
}
