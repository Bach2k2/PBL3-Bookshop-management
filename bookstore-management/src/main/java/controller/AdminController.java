package controller;

import com.google.gson.Gson;
import dao.impl.ProductDAO;
import model.Account;
import model.Author;
import model.Category;
import model.Product;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet(name = "AdminController", urlPatterns = "/admin")
public class AdminController extends HttpServlet {
    private ProductDAO productDAO;

    public void init(ServletConfig config) throws ServletException {
        productDAO = new ProductDAO();
        // TODO Auto-generated method stub
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        try {
            switch (action) {
                case "create-product": {
                    createProduct(request, response);
                    break;
                }
                case "edit-product": {
                    editProduct(request, response);
                    break;
                }
                case "delete-product": {
                    deleteProduct(request, response);
                    break;
                }
                case "create-category": {
                    createCategory(request, response);
                    break;
                }
                case "edit-category": {
                    editCategory(request, response);
                    break;
                }
                case "delete-category": {
                    deleteCategory(request, response);
                    break;
                }
                case "create-author": {
                    createAuthor(request, response);
                    break;
                }
                case "edit-author": {
                    editAuthor(request, response);
                    break;
                }
                case "delete-author": {
                    deleteAuthor(request, response);
                    break;
                }
            }
        } catch (SQLException exception) {
            exception.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        HttpSession session = request.getSession();
        Account account = (Account) session.getAttribute("account");
        if (account == null) {
            request.setAttribute("message", "B???n c???n ph???i ????ng nh???p v???i t?? c??ch l?? admin");
            request.getRequestDispatcher("/home?action=login").forward(request, response);
        } else {
            if (account.getRole().getCode().equals("ADMIN")) {
                try {
                    switch (action) {
                        case "product-management": {
                            showProductManagement(request, response);
                            //      response.sendRedirect(request.getContextPath()+"/admin/pm");
                            break;
                        }
                        case "category-management": {
                            showCategoryManagement(request, response);
                            break;
                        }
                        case "author-management": {
                            showAuthorManagement(request, response);
                            break;
                        }
                        case "find": {
                            findProduct(request, response);
                            break;
                        }
                        case "find-category": {
                            findCategory(request, response);
                            break;
                        }
                        case "find-author": {
                            findAuthor(request, response);
                            break;
                        }
                        default: {
                            showAdminHome(request, response);
                            break;
                        }
                    }
                } catch (SQLException exception) {
                    exception.printStackTrace();
                }
            } else {
                request.setAttribute("link", "/home");
                request.setAttribute("message", "Quay v??? trang ch???");
                request.getRequestDispatcher("views/authorization/error-authentication.jsp").forward(request, response);
                return;
            }
        }

    }

    public void showAdminHome(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("views/admin/admin-home.jsp").forward(request, response);
    }

    public void showProductManagement(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException
            , SQLException {
        request.setAttribute("productList", productDAO.selectAllProduct());
        request.setAttribute("categoryList", productDAO.selectAllCategory());
        request.setAttribute("authorList", productDAO.selectAllAuthor());
        RequestDispatcher dispatcher = request.getRequestDispatcher("views/admin/product-management.jsp");
        dispatcher.forward(request, response);
    }

    public void showCategoryManagement(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException
            , SQLException {
        request.setAttribute("categoryList", productDAO.selectAllCategory());
        RequestDispatcher dispatcher = request.getRequestDispatcher("views/admin/category-management.jsp");
        dispatcher.forward(request, response);
    }

    public void showAuthorManagement(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException
            , SQLException {
        request.setAttribute("authorList", productDAO.selectAllAuthor());
        RequestDispatcher dispatcher = request.getRequestDispatcher("views/admin/author-management.jsp");
        dispatcher.forward(request, response);
    }

    public void deleteProduct(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException, SQLException {
        int id = Integer.parseInt(request.getParameter("idProductDelete"));
        productDAO.deleteProduct(id);
        response.sendRedirect("/admin?action=product-management");
    }

    public void editProduct(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException, SQLException {
        try {
            response.setContentType("text/html;charset=UTF-8");
            int id = Integer.parseInt(request.getParameter("idProductEdit"));
            Product optProduct = productDAO.selectProductByID(id);
            optProduct.setBookTitle(request.getParameter("bookTitle2"));
            optProduct.setProductDescription(request.getParameter("description2"));
            optProduct.setIdCategory(Integer.parseInt(request.getParameter("category2")));
            optProduct.setPublisher(request.getParameter("publisher2"));
            Date publishDate = new SimpleDateFormat("dd-MM-yyyy").parse(request.getParameter("publishDate2"));
            optProduct.setPublishDate(new java.sql.Date(publishDate.getTime()));
            optProduct.setIdAuthor(Integer.parseInt(request.getParameter("author2")));
            optProduct.setPrice(Double.parseDouble(request.getParameter("price2")));
            optProduct.setQuantity(Integer.parseInt(request.getParameter("quantity2")));
            productDAO.updateProduct(optProduct);
            System.out.println("Cap nhat thanh cong");
            response.sendRedirect("/admin?action=product-management");
        } catch (ParseException e) {
            e.printStackTrace();
        }
    }

    public void createProduct(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException, SQLException {
        try {
            Product newProduct = new Product();
            newProduct.setBookTitle(request.getParameter("Book_title"));
            newProduct.setProductDescription(request.getParameter("Product_description"));
            newProduct.setIdCategory(Integer.parseInt(request.getParameter("category_name")));
            newProduct.setPublisher(request.getParameter("publisher"));
            Date publishDate = new SimpleDateFormat("dd-MM-yyyy").parse(request.getParameter("publish_date"));
            newProduct.setPublishDate(new java.sql.Date(publishDate.getTime()));
            newProduct.setIdAuthor(Integer.parseInt(request.getParameter("author")));
            newProduct.setPrice(Double.parseDouble(request.getParameter("price")));
            newProduct.setQuantity(Integer.parseInt(request.getParameter("quantity")));
            productDAO.insertProduct(newProduct);
            System.out.println("th??m m???i th??nh c??ng thanh cong");
            response.sendRedirect("/admin?action=product-management");
        } catch (ParseException e) {
            e.printStackTrace();
        }
    }


    public void findProduct(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException, SQLException {
        response.setContentType("application/json");
        int id = Integer.parseInt(request.getParameter("idProduct"));
        Product product = productDAO.selectProductByID(id);
        Date publishDate = product.getPublishDate();
        Date formatDate;
        try {
            formatDate = new SimpleDateFormat("yyyy-MM-dd").parse(publishDate.toString());
            product.setPublishDate(new java.sql.Date(formatDate.getTime()));
        } catch (ParseException e) {
            e.printStackTrace();
        }
        Gson gson = new Gson();
        PrintWriter writer = response.getWriter();
        writer.print(gson.toJson(product));
        writer.flush();
        writer.close();
    }

    public void findCategory(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException, SQLException {
        response.setContentType("application/json");
        int id = Integer.parseInt(request.getParameter("idCategory"));
        Category c = productDAO.selectCategory(id);
        Gson gson = new Gson();
        PrintWriter writer = response.getWriter();
        writer.print(gson.toJson(c));
        writer.flush();
        writer.close();
    }

    public void createCategory(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException, SQLException {
        Category newCategory = new Category();
        newCategory.setCategoryName(request.getParameter("categoryName"));
        newCategory.setDescription(request.getParameter("description"));
        System.out.println("th??m m???i th??nh c??ng thanh cong");
        response.sendRedirect("/admin?action=category-management");
    }

    public void editCategory(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException, SQLException {
        int id = Integer.parseInt(request.getParameter("idCategoryEdit"));
        Category category = productDAO.selectCategory(id);
        category.setCategoryName(request.getParameter("categoryName2"));
        category.setDescription(request.getParameter("description2"));
        productDAO.updateCategory(category);
        System.out.println("Cap nhat thanh cong");
        response.sendRedirect("/admin?action=category-management");
    }

    public void deleteCategory(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException, SQLException {
        int id = Integer.parseInt(request.getParameter("idCategoryDelete"));
        productDAO.deleteCategory(id);
        response.sendRedirect("/admin?action=category-management");
    }

    public void findAuthor(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException, SQLException {
        response.setContentType("application/json");
        int id = Integer.parseInt(request.getParameter("idAuthor"));
        Author a = productDAO.selectAuthor(id);
        Gson gson = new Gson();
        PrintWriter writer = response.getWriter();
        writer.print(gson.toJson(a));
        writer.flush();
        writer.close();
    }

    public void createAuthor(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException, SQLException {
        try {
            Author newAuthor = new Author();
            newAuthor.setAuthorName(request.getParameter("authorName"));
            newAuthor.setDateOfBirth(new SimpleDateFormat("dd/MM/yyyy").parse(request.getParameter("dateOfBirth")));
            newAuthor.setDescription(request.getParameter("description"));
            System.out.println("th??m m???i th??nh c??ng thanh cong");
            response.sendRedirect("/admin?action=product-management");
        } catch (ParseException e) {
            e.printStackTrace();
        }

    }

    public void editAuthor(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException, SQLException {
        try {
            int id = Integer.parseInt(request.getParameter("idAuthorEdit"));
            Author author = productDAO.selectAuthor(id);
            author.setAuthorName(request.getParameter("categoryName2"));
            author.setDateOfBirth(new SimpleDateFormat("dd-MM-yyyy").parse(request.getParameter("dateOfBirth2")));
            author.setDescription(request.getParameter("description2"));
            productDAO.updateAuthor(author);
            System.out.println("Cap nhat thanh cong");
            response.sendRedirect("/admin?action=author-management");
        } catch (ParseException e) {
            e.printStackTrace();
        }

    }

    public void deleteAuthor(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException, SQLException {
        int id = Integer.parseInt(request.getParameter("idAuthorDelete"));
        productDAO.deleteAuthor(id);
        response.sendRedirect("/admin?action=author-management");
    }


}


