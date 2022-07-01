package controller;

import model.Customer;
import service.ICustomerService;
import service.impl.CustomerService;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "CustomerController",urlPatterns = "/customer")
public class CustomerController extends HttpServlet {
    @Inject
    private ICustomerService customerService1;

    private CustomerService customerService=new CustomerService();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        try {
            switch (action) {
                case "add":
                  //  showCreateForm(request, response);
                    break;
                case "edit":
                   //showUpdateForm(request, response);
                    break;

                case "delete":
                    break;
                case "edit-profile":
                {
                    showEditProfileForm(request,response);
                    break;
                }
                default:
                    showCustomerList(request, response);

            }
        } catch (SQLException exception) {
            exception.printStackTrace();
        }
    }



    public void showCustomerList(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        request.setAttribute("customerList",customerService.findAllCustomer());
        System.out.println("hello here, Customer list");
        RequestDispatcher requestDispatcher= request.getRequestDispatcher("/customer/customer-list.jsp");
        requestDispatcher.forward(request,response);
    }

    public void createCustomer(HttpServletRequest request, HttpServletResponse response)throws SQLException, ServletException
    {

    }
    public void showEditProfileForm(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        request.getRequestDispatcher("/views/user/edit-profile.jsp").forward(request,response);
    }
}
