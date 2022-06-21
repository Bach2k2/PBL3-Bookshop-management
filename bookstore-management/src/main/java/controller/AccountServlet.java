package controller;

import model.Account;
import repository.impl.AccountDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.util.Date;


@WebServlet(name = "AccountServlet", urlPatterns = "/account")
public class AccountServlet extends HttpServlet {
    private AccountDAO accountDTO = new AccountDAO();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "add": {
                createNewAccount(request, response);
                break;
            }
            case "edit": {
                updateAccount(request, response);
                break;
            }
            case "delete": {
                deleteAccount(request, response);
                break;
            }
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        try {
            switch (action) {
                case "add":
                    showCreateForm(request, response);
                    break;
                case "edit":
                    showUpdateForm(request, response);
                    break;

                case "delete":
                    break;
                default:
                    showAccountList(request, response);

            }
        } catch (SQLException exception) {
            exception.printStackTrace();
        }
    }

    public void showAccountList(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException, SQLException {
        request.setAttribute("accountList", accountDTO.findAllAccount());
        RequestDispatcher dispatcher = request.getRequestDispatcher("account/account-list.jsp");
        dispatcher.forward(request, response);
    }

    public void showCreateForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        try {
            RequestDispatcher dispatcher = request.getRequestDispatcher("account/account-create.jsp");
            dispatcher.forward(request, response);
        } catch (ServletException servletException) {
            servletException.printStackTrace();
        } catch (IOException exception) {
            exception.printStackTrace();
        }
    }

    public void showUpdateForm(HttpServletRequest request, HttpServletResponse response) {
        try {
            int id = Integer.parseInt(request.getParameter("id_account"));
            request.setAttribute("account", accountDTO.findAccountById(id));
            RequestDispatcher dispatcher = request.getRequestDispatcher("account/account-edit");
            dispatcher.forward(request, response);
        } catch (ServletException servletException) {
            servletException.printStackTrace();
        } catch (IOException exception) {
            exception.printStackTrace();
        }
    }

    public void createNewAccount(HttpServletRequest request, HttpServletResponse response) {
        Account account = null;
        try {
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String signupDate = request.getParameter("signup_date");
            String lastLogin = request.getParameter("last_login");
            Boolean status = Boolean.valueOf(request.getParameter("status"));
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd");
            Date sud = sdf.parse(signupDate);
            LocalDateTime ll = LocalDateTime.parse(lastLogin);
            int roleId = Integer.parseInt(request.getParameter("role_id"));
            account = new Account(username, password, sud, ll, status, roleId);
        } catch (ParseException e) {
            e.printStackTrace();
        }
    }

    public void updateAccount(HttpServletRequest request, HttpServletResponse response) {
        Account account = null;
        try {
            int acoId = Integer.parseInt(request.getParameter("id_account"));
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String signupDate = request.getParameter("signup_date");
            String lastLogin = request.getParameter("last_login");
            Boolean status = Boolean.valueOf(request.getParameter("status"));
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd");
            Date sud = sdf.parse(signupDate);
            LocalDateTime ll = LocalDateTime.parse(lastLogin);
            int roleId = Integer.parseInt(request.getParameter("id_role"));
            account = new Account();

        } catch (ParseException e) {
            e.printStackTrace();
        }
    }

    public void deleteAccount(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {
        Account account = null;
        try {
            accountDTO.deleteAccount(Integer.parseInt(request.getParameter("id")));
            response.sendRedirect("account/account-list");
        } catch (IOException exception) {
            exception.printStackTrace();
        }
    }
}
