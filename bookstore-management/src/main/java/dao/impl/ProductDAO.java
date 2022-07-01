package dao.impl;

import com.mysql.cj.x.protobuf.MysqlxCrud;
import model.*;
import dao.DBRepository;

import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO {
    private static String INSERT_PRODUCT_SQL = "Insert INTO product " +
            "(quantity, price, average_rating, description, book_title, publisher, publish_date, id_author, id_category) VALUES "
            + " (?,?,?,?,?,?,?,?,?);";
    private static String SELECT_ALL_PRODUCT = "SELECT * FROM product";
    private static String SELECT_PRODUCT_BY_ID = "SELECT * FROM product WHERE id_product = ?";
    private static String SELECT_PRODUCT_BY_Category = "SELECT * FROM product WHERE id_category = ?";
    private static String DELETE_PRODUCT_SQL = "delete from product where id_product = ? ;";
    private static String UPDATE_PRODUCT_SQL = "update product set "
            + "quantity = ?, "
            + "price = ?, "
            + "average_rating = ?, "
            + "description = ?, "
            + "book_title = ?, "
            + "publisher = ?, "
            + "publish_date = ?, "
            + "id_author = ?, "
            + "id_category = ? "
            + "where ID_Product = ?;";

    private static String UPDATE_PRODUCT_QUANTITY_SQL = "update product set quantity = ? where ID_Product = ?;";

    private static String INSERT_OrderDetail_SQL = "Insert INTO OrderDetail "
            + "(ID_Product,ID_Order,ID_Cart,quantity,price,discountprice,status) VALUES "
            + "(?,?,?,?,?,?,?);";
    private static String SEARCH_OrderDetail_BY_IDCART = "SELECT * FROM OrderDetail where ID_cart = ?";
    private static String SEARCH_OrderDetail_BY_IDPRODUCT = "SELECT * FROM OrderDetail where ID_Product = ? and ID_Cart = ? and status = ?";

    private static String DELETE_OrderDetail_BY_IDPRODUCT = "delete from OrderDetail where ID_Product = ? and ID_Cart = ? and status = ?;";
    private static String UPDATE_OrderDetail_SQL = "update OrderDetail set status = ? where ID_cart = ? ;";
    private static String UPDATE_OrderDetail_SQL2 = "update OrderDetail set ID_Order = ? where ID_cart = ? and status = ?;";
    private static String UPDATE_OrderDetail_SQL3 = "update OrderDetail set quantity = ? where ID_Product = ? and ID_Cart = ? and status = ?;";
    private static String INSERT_ORDER_SQL = "Insert INTO Orders "
            + "(ID_Customer,total_price,order_status,order_date,phone_number,delivery_date,order_location) values "
            + "(?,?,?,?,?,?,?);";
    private static String SELECT_ORDER_SQL = "SELECT * FROM orders ORDER BY ID_ORDER DESC LIMIT 1";

    private static String SELECT_CATEGORY_BY_ID = "SELECT * FROM category WHERE id_category = ?";
    private static String UPDATE_CATEGORY_SQL = "UPDATE category set"
            + "category_name = ?, "
            + "description = ?, "
            + "where id_category = ?;";
    private static String DELETE_CATEGORY_SQL = "DELETE from category"
            + "where id_category = ?;";
    private static String SELECT_AUTHOR_BY_ID = "SELECT * FROM author WHERE ID_Author = ?";
    private static String UPDATE_AUTHOR_SQL = "UPDATE author set"
            + "author_name = ?, "
            + "date_of_birth = ?, "
            + "description = ?, "
            + "where id_author = ?;";
    private static String DELETE_AUTHOR_SQL = "DELETE from category"
            + "where id_author = ?;";
    //private static String SELECT_CATEGORYNAME_BY_ID = "SELECT categoryname FROM Category WHERE ID_Category = ?";
    private static String SELECT_ALL_CATEGORY = "SELECT * FROM category";
    private static String SELECT_ALL_AUTHOR = "SELECT * FROM author";

    private static String INSERT_AUTHOR_SQL = "Insert INTO author "
            + "(authorname,dateofbirth,description) values"
            + "(?,?,?);";

    private static String SELECT_RATING_BY_ID_PRODUCT = "SELECT * FROM rating WHERE ID_Product = ? ";
    private static String SELECT_RATING_BY_ID_PRODUCT_AND_USER = "SELECT * FROM rating WHERE ID_Product = ? and ID_Customer = ?";
    private static String UPDATE_RATING_SQL = "update rating set rating_star = ? , review_text = ? where ID_Product = ? and ID_Customer = ?;";
    private static String INSERT_RATING_SQL = "Insert INTO rating "
            + "(ID_Customer,ID_Product,rating_star,review_text) values"
            + "(?,?,?,?);";
    //private static String SELECT_//

    Connection connection = null;
    private DBRepository dbRepository = new DBRepository();

    public ProductDAO() {
        connection = dbRepository.getConnection();
    }
    // Them Account vao


    public void insertProduct(Product product) throws SQLException {
        System.out.println(INSERT_PRODUCT_SQL);
        // try-with-resource statement will auto close the connection.
        try (PreparedStatement preparedStatement = this.connection.prepareStatement(INSERT_PRODUCT_SQL)) {
            preparedStatement.setInt(1, product.getQuantity());
            preparedStatement.setDouble(2, product.getPrice());
            preparedStatement.setDouble(3, product.getAverageRating());
            preparedStatement.setString(4, product.getProductDescription());
            preparedStatement.setString(5, product.getBookTitle());
            preparedStatement.setString(6, product.getPublisher());
            preparedStatement.setDate(7, product.getPublishDate());
            preparedStatement.setInt(8, product.getIdAuthor());
            preparedStatement.setInt(9, product.getIdCategory());

            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }
    }

    public Product selectProductByID(int idProduct) {
        Product product = null;
        try (PreparedStatement preparedStatement = connection.prepareStatement(SELECT_PRODUCT_BY_ID);) {
            preparedStatement.setInt(1, idProduct);
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
                int quantity = rs.getInt("quantity");
                double price = rs.getDouble("price");
                double averageRating = rs.getDouble("average_rating");
                String productDescription = rs.getString("description");
                String bookTitle = rs.getString("book_title");
                String publisher = rs.getString("publisher");
                Date publishDate = rs.getDate("publish_date");
                int idAuthor = rs.getInt("id_author");
                int idCategory = rs.getInt("id_category");
                product = new Product(idProduct, bookTitle, productDescription, publisher, publishDate, quantity, price, averageRating, idAuthor, idCategory);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return product;
    }

    private void printSQLException(SQLException ex) {
        for (Throwable e : ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }

    public boolean deleteProduct(int idProduct) throws SQLException {
        boolean rowDeleted;
        try (PreparedStatement statement = this.connection.prepareStatement(DELETE_PRODUCT_SQL);) {
            statement.setInt(1, idProduct);
            rowDeleted = statement.executeUpdate() > 0;
        }
        return rowDeleted;
    }

    public List<Product> selectAllProduct() {

        // using try-with-resources to avoid closing resources (boiler plate code)
        List<Product> Products = new ArrayList<>();

        try (PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_PRODUCT);) {
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
                int idProduct = rs.getInt("id_product");
                int quantity = rs.getInt("quantity");
                double price = rs.getDouble("price");
                double averageRating = rs.getDouble("average_rating");
                String description = rs.getString("description");
                String bookTitle = rs.getString("book_title");
                String publisher = rs.getString("publisher");
                Date publishDate = rs.getDate("publish_date");
                int idAuthor = rs.getInt("id_author");
                int idCategory = rs.getInt("id_category");
                Products.add(new Product(idProduct, bookTitle, description, publisher, publishDate, quantity, price, averageRating, idAuthor, idCategory));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return Products;
    }

    public List<Product> selectAllProductbyCategory(int idCategory) {
        List<Product> Products = new ArrayList<>();
        try (PreparedStatement preparedStatement = connection.prepareStatement(SELECT_PRODUCT_BY_Category);) {
            preparedStatement.setInt(1, idCategory);
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();
            // Step 4: Process the ResultSet object.
            while (rs.next()) {
                int idProduct = rs.getInt("id_product");
                int quantity = rs.getInt("quantity");
                int price = rs.getInt("price");
                double averageRating = rs.getFloat("average_rating");
                String productDescription = rs.getString("description");
                String bookTitle = rs.getString("book_title");
                String publisher = rs.getString("publisher");
                Date publishDate = rs.getDate("publish_date");
                int idAuthor = rs.getInt("id_author");
                Products.add(new Product(idProduct, bookTitle, productDescription, publisher, publishDate, quantity, price, averageRating, idAuthor, idCategory));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return Products;
    }

    public boolean updateProduct(Product product) throws SQLException {
        boolean rowUpdated;
        try (PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_PRODUCT_SQL);) {
            System.out.println("updated Product:" + preparedStatement);
            preparedStatement.setInt(1, product.getQuantity());
            preparedStatement.setDouble(2, product.getPrice());
            preparedStatement.setDouble(3, product.getAverageRating());
            preparedStatement.setString(4, product.getProductDescription());
            preparedStatement.setString(5, product.getBookTitle());
            preparedStatement.setString(6, product.getPublisher());
            preparedStatement.setDate(7, product.getPublishDate());
            preparedStatement.setInt(8, product.getIdAuthor());
            preparedStatement.setInt(9, product.getIdCategory());
            preparedStatement.setInt(10, product.getIdProduct());

            rowUpdated = preparedStatement.executeUpdate() > 0;
        }
        return rowUpdated;
    }

    public Category selectCategory(int idCategory) {
        Category Category = null;
        try (PreparedStatement preparedStatement = connection.prepareStatement(SELECT_CATEGORY_BY_ID);) {
            preparedStatement.setInt(1, idCategory);
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
                String categoryName = rs.getString("category_name");
                String description = rs.getString("description");
                Category = new Category(idCategory, categoryName, description);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return Category;
    }

    public List<Category> selectAllCategory() {

        // using try-with-resources to avoid closing resources (boiler plate code)
        List<Category> categories = new ArrayList<>();
        // Step 1: Establishing a Connection
        try (PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_CATEGORY);) {
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
                int idCategory = rs.getInt("id_category");
                String categoryName = rs.getString("category_name");
                String description = rs.getString("description");
                categories.add(new Category(idCategory, categoryName, description));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return categories;
    }
    public boolean updateCategory(Category category) throws SQLException {
        boolean rowUpdated;
        try (PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_CATEGORY_SQL);) {
            System.out.println("updated category:" + preparedStatement);
            preparedStatement.setString(1, category.getCategoryName());
            preparedStatement.setString(2, category.getDescription());
            preparedStatement.setInt(3, category.getIdCategory());
            rowUpdated = preparedStatement.executeUpdate() > 0;
        }
        return rowUpdated;
    }
    public boolean deleteCategory(int categoryId) throws SQLException {
        boolean rowDeleted;
        try (PreparedStatement statement = this.connection.prepareStatement(DELETE_CATEGORY_SQL);) {
            statement.setInt(1, categoryId);
            rowDeleted = statement.executeUpdate() > 0;
        }
        return rowDeleted;
    }

    public List<String> getCategoryName(List<Category> categories) {
        List<String> catename = new ArrayList<>();
        for (Category category : categories) {
            catename.add(category.getCategoryName());
        }
        return catename;
    }

    public int getIDbyNameCategory(String categoryName, List<Category> categories) {
        int idCategory = -1;
        for (Category category : categories) {
            if (categoryName.toLowerCase().equals(category.getCategoryName().toLowerCase())) {
                idCategory = category.getIdCategory();
                break;
            }
        }
        return idCategory;
    }

    public String getNamebyIDCategory(int ID_Category, List<Category> Categorys) {
        String categoryName = "";
        for (Category Category : Categorys) {
            if (ID_Category == Category.getIdCategory()) {
                categoryName = Category.getCategoryName();
                break;
            }
        }
        return categoryName;
    }

    public Author selectAuthor(int idAuthor) {
        Author author = null;
        // Step 1: Establishing a Connection
        try (PreparedStatement preparedStatement = connection.prepareStatement(SELECT_AUTHOR_BY_ID);) {
            preparedStatement.setInt(1, idAuthor);
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
                String authorName = rs.getString("author_name");
                Date dateOfBirth = rs.getDate("date_of_birth");
                String description = rs.getString("description");
                author = new Author(idAuthor, authorName, dateOfBirth, description);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return author;
    }

    public List<Author> selectAllAuthor() {

        List<Author> Authors = new ArrayList<>();
        // Step 1: Establishing a Connection
        try (PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_AUTHOR);) {
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
                int idAuthor = rs.getInt("id_author");
                String authorName = rs.getString("author_name");
                Date dateOfBirth = rs.getDate("date_of_birth");
                String description = rs.getString("description");
                Authors.add(new Author(idAuthor, authorName, dateOfBirth, description));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return Authors;
    }
    public boolean updateAuthor(Author author) throws SQLException {
        boolean rowUpdated;
        try (PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_AUTHOR_SQL);) {
            System.out.println("updated author:" + preparedStatement);
            preparedStatement.setString(1, author.getAuthorName());
            preparedStatement.setDate(2, (Date) author.getDateOfBirth());
            preparedStatement.setString(3, author.getDescription());
            preparedStatement.setInt(4, author.getIdAuthor());
            rowUpdated = preparedStatement.executeUpdate() > 0;
        }
        return rowUpdated;
    }
    public boolean deleteAuthor(int authorId) throws SQLException {
        boolean rowDeleted;
        try (PreparedStatement statement = this.connection.prepareStatement(DELETE_AUTHOR_SQL);) {
            statement.setInt(1, authorId);
            rowDeleted = statement.executeUpdate() > 0;
        }
        return rowDeleted;
    }

    public List<String> getAuthorName(List<Author> Authors) {
        List<String> catename = new ArrayList<>();
        for (Author author : Authors) {
            catename.add(author.getAuthorName());
        }
        return catename;
    }

    public int getIDbyNameAuthor(String authorName, List<Author> Authors) {
        int idAuthor = -1;
        for (Author author : Authors) {
            if (authorName.toLowerCase().equals(author.getAuthorName().toLowerCase())) {
                idAuthor = author.getIdAuthor();
                break;
            }
        }
        return idAuthor;
    }

    public String getNameByIdAuthor(int idAuthor, List<Author> authors) {
        String authorname = "";
        for (Author author : authors) {
            if (idAuthor == author.getIdAuthor()) {
                authorname = author.getAuthorName();
                break;
            }
        }
        return authorname;
    }

    public ProductShow convertProduct(Product product) {
        String authorName = getNameByIdAuthor(product.getIdAuthor(), selectAllAuthor());
        String categoryName = getNamebyIDCategory(product.getIdCategory(), selectAllCategory());
        ProductShow ps = new ProductShow(product.getIdProduct(), product.getQuantity(), product.getPrice()
                , product.getAverageRating(), product.getBookTitle(), product.getPublisher(), product.getProductDescription(),
                (Date) product.getPublishDate(), authorName, categoryName);

        return ps;
    }

    public List<ProductShow> convertProduct(List<Product> Products) {
        List<ProductShow> ProductShows = new ArrayList<>();
        for (Product product : Products) {
            ProductShows.add(convertProduct(product));
        }
        return ProductShows;
    }

    public Product convertProductShow(ProductShow productShow) {
        int idAuthor = getIDbyNameAuthor(productShow.getAuthorName(), selectAllAuthor());
        int idCategory = getIDbyNameCategory(productShow.getCategoryName(), selectAllCategory());

        Product product = new Product(productShow.getIdProduct(), productShow.getBookTitle(), productShow.getProductDescription(), productShow.getPublisher(), new Date(productShow.getPublishDate().getTime()), productShow.getQuantity(), productShow.getPrice(), productShow.getAverageRating(), idAuthor, idCategory);// Sai ở date.
        return product;
    }

    public List<Product> convertProductShow(List<ProductShow> ProductShows) {
        List<Product> products = new ArrayList<>();
        for (ProductShow productshow : ProductShows) {
            products.add(convertProductShow(productshow));
        }
        return products;
    }

    public void insertAuthorByName(String authorName) {
        int check = 0;
        for (Author author : selectAllAuthor()) {
            if (authorName.toLowerCase() == author.getAuthorName().toLowerCase()) {
                check = 1;
                break;
            }
        }
        if (check == 0) {
            String description = "No description yet";
            Date dateOfBirth = Date.valueOf("2000-01-01");
            System.out.print(INSERT_AUTHOR_SQL);
            try (PreparedStatement preparedStatement = connection.prepareStatement(INSERT_AUTHOR_SQL)) {
                preparedStatement.setString(1, authorName);
                preparedStatement.setDate(2, dateOfBirth);
                preparedStatement.setString(3, description);
                System.out.println(preparedStatement);
                preparedStatement.executeUpdate();
            } catch (SQLException e) {
                printSQLException(e);
            }
        }
    }

    public List<Rating> selectRatingByIDProduct(int ID_Product) {
        List<Rating> ratings = new ArrayList<>();
        try (PreparedStatement preparedStatement = connection.prepareStatement(SELECT_RATING_BY_ID_PRODUCT);) {
            preparedStatement.setInt(1, ID_Product);
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                int ID_Rating = rs.getInt("id_rating");
                int ID_Customer = rs.getInt("id_customer");
                int rating_star = rs.getInt("rating_star");
                String review_text = rs.getString("review_text");

                ratings.add(new Rating(ID_Rating, ID_Customer, ID_Product, rating_star, review_text));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return ratings;
    }

    public void updateAverageRating(int idProduct) {
        Product p = selectProductByID(idProduct);
        List<Rating> ratings = selectRatingByIDProduct(idProduct);
        int Totalrating = 0;
        for (Rating rating : ratings) {
            Totalrating += rating.getRatingStar();
        }
        double avarageRating = (double) Totalrating / ratings.size();
        p.setAverageRating(avarageRating);
        try {
            updateProduct(p);
        } catch (SQLException e) {
            printSQLException(e);
        }
    }

    public List<ProductShow> GetPSListByCategory(String categorys[]) {
        List<ProductShow> pss = new ArrayList<>();
        for (String s : categorys) {
            if (s.equals("All")) {
                pss = convertProduct(selectAllProduct());
                return pss;
            }
        }

        for (ProductShow ps : convertProduct(selectAllProduct())) {
            for (String s : categorys) {
                if (s.equals(ps.getCategoryName())) {
                    pss.add(ps);
                    break;
                }
            }
        }
        return pss;
    }

    public List<ProductShow> GetPSListByName(String name) {
        List<ProductShow> pss = new ArrayList<>();
        for (ProductShow ps : convertProduct(selectAllProduct())) {
            if (ps.getBookTitle().contains(name)) {
                pss.add(ps);
            }
        }
        return pss;
    }

    public List<ProductShow> GetPSListByPrice(String price[]) {
        List<ProductShow> pss = new ArrayList<>();
        for (String s : price) {
            if (s.equals("0")) {
                pss = convertProduct(selectAllProduct());
                break;
            }
            switch (s) {
                case "1": {
                    for (ProductShow ps : convertProduct(selectAllProduct())) {
                        if (ps.getPrice() < 100000) pss.add(ps);
                    }
                    break;
                }
                case "2":
                    for (ProductShow ps : convertProduct(selectAllProduct())) {
                        if (ps.getPrice() > 100000 && ps.getPrice() < 500000) pss.add(ps);

                    }
                    break;
                case "3":
                    for (ProductShow ps : convertProduct(selectAllProduct())) {
                        if (ps.getPrice() > 500000 && ps.getPrice() < 1000000) pss.add(ps);

                    }
                    break;
                case "4":
                    for (ProductShow ps : convertProduct(selectAllProduct())) {
                        if (ps.getPrice() > 1000000) pss.add(ps);

                    }
                    break;
                //default:
                //pss = convertProduct(selectAllProduct());
                //break;
            }
        }

        return pss;
    }

    public void insertRating(Rating Rating) {
        boolean isalreadyhave = false;
        System.out.println(INSERT_RATING_SQL);
        try (PreparedStatement preparedStatement = connection.prepareStatement(SELECT_RATING_BY_ID_PRODUCT_AND_USER);) {
            preparedStatement.setInt(1, Rating.getIdProduct());
            preparedStatement.setInt(2, Rating.getIdCustomer());
            ResultSet rs = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
                int ID_Product = rs.getInt("id_product");
                int ID_User = rs.getInt("id_customer");
                if (ID_Product == Rating.getIdProduct() && ID_User == Rating.getIdCustomer()) {
                    isalreadyhave = true;
                    break;
                }
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        if (isalreadyhave == false) {
            try (PreparedStatement preparedStatement = connection.prepareStatement(INSERT_RATING_SQL)) {
                preparedStatement.setInt(1, Rating.getIdCustomer());
                preparedStatement.setInt(2, Rating.getIdProduct());
                preparedStatement.setInt(3, Rating.getRatingStar());
                preparedStatement.setString(4, Rating.getReviewText());
                System.out.println(preparedStatement);
                preparedStatement.executeUpdate();
            } catch (SQLException e) {
                printSQLException(e);
            }
        } else {
            boolean rowUpdated;
            try (PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_RATING_SQL);) {
                preparedStatement.setInt(1, Rating.getRatingStar());
                preparedStatement.setString(2, Rating.getReviewText());
                preparedStatement.setInt(3, Rating.getIdProduct());
                preparedStatement.setInt(4, Rating.getIdCustomer());

                rowUpdated = preparedStatement.executeUpdate() > 0;
            } catch (SQLException e) {
                printSQLException(e);
            }
        }
    }

    public List<ProductShow> getBookWithSameCategory(ProductShow productShow) {
        List<ProductShow> pss = new ArrayList<>();
        List<ProductShow> listps = convertProduct(selectAllProduct());
        for (ProductShow ps : listps) {
            if (ps.getCategoryName().equals(productShow.getCategoryName())) {
                if (ps.getBookTitle().equals(productShow.getBookTitle())) ;
                else pss.add(ps);
            }
        }

        return pss;

    }

    public List<ProductShow> getBookWithSameAuthor(ProductShow productShow) {
        List<ProductShow> pss = new ArrayList<>();
        List<ProductShow> listps = convertProduct(selectAllProduct());
        for (ProductShow ps : listps) {
            if (ps.getAuthorName().equals(productShow.getAuthorName())) {
                if (ps.getBookTitle().equals(productShow.getBookTitle())) ;
                else pss.add(ps);
            }
        }

        return pss;
    }

    public boolean SetstatusOrderDetail(int ID_Cart) throws SQLException {
        boolean rowUpdated;
        boolean status = true;
        try (PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_OrderDetail_SQL);) {
            System.out.println("updated Product:" + preparedStatement);
            preparedStatement.setBoolean(1, status);
            preparedStatement.setInt(2, ID_Cart);

            rowUpdated = preparedStatement.executeUpdate() > 0;
        }
        return rowUpdated;
    }

    public boolean SetIDOrderOrderDetail(int ID_Cart, int ID_Order) throws SQLException {
        boolean rowUpdated;
        try (PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_OrderDetail_SQL2);) {
            System.out.println("updated Product:" + preparedStatement);
            preparedStatement.setInt(1, ID_Order);
            preparedStatement.setInt(2, ID_Cart);
            preparedStatement.setBoolean(3, false);

            rowUpdated = preparedStatement.executeUpdate() > 0;
        }
        return rowUpdated;
    }

    public List<OrderDetail> getOrderDetailForCart(int ID_Cart) {
        List<OrderDetail> ods = new ArrayList<>();
        try (PreparedStatement preparedStatement = connection.prepareStatement(SEARCH_OrderDetail_BY_IDCART)) {
            preparedStatement.setInt(1, ID_Cart);
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int ID_Product = rs.getInt("ID_Product");
                int ID_Order = rs.getInt("ID_Order");
                int quantity = rs.getInt("quantity");
                double price = rs.getDouble("price");
                double discountprice = rs.getDouble("discountprice");
                boolean status = rs.getBoolean("status");
                if (status == false)
                    ods.add(new OrderDetail(ID_Product, ID_Order, ID_Cart, quantity, price, discountprice, status));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return ods;
    }

    public boolean deleteOrderDetail(int ID_Product, int ID_Cart, boolean status) throws SQLException {
        boolean rowDeleted;
        try (PreparedStatement statement = connection.prepareStatement(DELETE_OrderDetail_BY_IDPRODUCT);) {
            statement.setInt(1, ID_Product);
            statement.setInt(2, ID_Cart);
            statement.setBoolean(3, status);
            rowDeleted = statement.executeUpdate() > 0;
        }
        return rowDeleted;
    }

    public void insertOrderDetail(OrderDetail od) {
        System.out.println(INSERT_OrderDetail_SQL);
        // try-with-resource statement will auto close the connection.
        try (PreparedStatement preparedStatement = connection.prepareStatement(INSERT_OrderDetail_SQL)) {
            preparedStatement.setInt(1, od.getIdProduct());
            preparedStatement.setInt(2, od.getIdOrder());
            preparedStatement.setInt(3, od.getIdCart());
            preparedStatement.setInt(4, od.getQuantity());
            preparedStatement.setDouble(5, od.getPrice());
            preparedStatement.setDouble(6, od.getDiscountPrice());
            preparedStatement.setBoolean(7, od.isStatus());
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }
    }

    public void insertOrder(Order order) {
        System.out.println(INSERT_ORDER_SQL);
        // try-with-resource statement will auto close the connection.
        try (PreparedStatement preparedStatement = connection.prepareStatement(INSERT_ORDER_SQL)) {
            preparedStatement.setInt(1, order.getIdCustomer());
            preparedStatement.setDouble(2, order.getTotalPrice());
            preparedStatement.setString(3, order.getOrderStatus());
            preparedStatement.setDate(4, order.getOrderDate());
            preparedStatement.setString(5, order.getPhoneNumber());
            preparedStatement.setDate(6, order.getDeliveryDate());
            preparedStatement.setString(7, order.getOrderLocation());
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }
    }

    public void UpdateInsertOrderDetail(OrderDetail or) {
        List<OrderDetail> ods = new ArrayList<>();
        int count = 0;
        int temp_quantity = 0;
        try (PreparedStatement preparedStatement = connection.prepareStatement(SEARCH_OrderDetail_BY_IDPRODUCT)) {
            preparedStatement.setInt(1, or.getIdProduct());
            preparedStatement.setInt(2, or.getIdCart());
            preparedStatement.setBoolean(3, or.isStatus());
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                temp_quantity = rs.getInt("quantity");
                count++;
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        if (count > 0) {
            boolean rowUpdated;
            try (PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_OrderDetail_SQL3);) {
                System.out.println("updated Product:" + preparedStatement);
                preparedStatement.setInt(1, or.getQuantity() + temp_quantity);
                preparedStatement.setInt(2, or.getIdProduct());
                preparedStatement.setInt(3, or.getIdCart());
                preparedStatement.setBoolean(4, or.isStatus());
                rowUpdated = preparedStatement.executeUpdate() > 0;
            } catch (SQLException e) {
                printSQLException(e);
            }
        } else {
            insertOrderDetail(or);
        }
    }

    public void UpdatequantityProductPlus(List<OrderDetail> ors)
            throws SQLException {
        boolean rowUpdated;
        int Productquantity;
        for (OrderDetail or : ors) {
            Productquantity = or.getQuantity() + selectProductByID(or.getIdProduct()).getQuantity();
            try (PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_PRODUCT_QUANTITY_SQL);) {
                System.out.println("updated Product:" + preparedStatement);
                preparedStatement.setInt(1, Productquantity);
                preparedStatement.setInt(2, or.getIdProduct());

                rowUpdated = preparedStatement.executeUpdate() > 0;
            }
        }
    }

    public boolean UpdatequantityProductMinus(List<OrderDetail> ors) throws SQLException {
        boolean able = true;
        boolean rowUpdated;
        int Productquantity;
        for (OrderDetail or : ors) {
            Productquantity = selectProductByID(or.getIdProduct()).getQuantity() - or.getQuantity();
            if (Productquantity < 0) {
                able = false;
                return able;
            }
        }
        for (OrderDetail or : ors) {
            Productquantity = selectProductByID(or.getIdProduct()).getQuantity() - or.getQuantity();
            try (PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_PRODUCT_QUANTITY_SQL);) {
                System.out.println("updated Product:" + preparedStatement);
                preparedStatement.setInt(1, Productquantity);
                preparedStatement.setInt(2, or.getIdProduct());

                rowUpdated = preparedStatement.executeUpdate() > 0;
            }
        }
        return able;
    }

    public double Tongtien(List<OrderDetail> ors) {
        double T = 0;
        for (OrderDetail or : ors) {
            T += or.getPrice() * or.getQuantity();
        }
        return T;
    }

    public List<OrderDetailShow> convertFromOrderDetail(List<OrderDetail> ods) {
        List<OrderDetailShow> odss = new ArrayList<>();
        for (OrderDetail od : ods) {
            String Book_title = selectProductByID(od.getIdProduct()).getBookTitle();
            int ID_Order = od.getIdOrder();
            int ID_Cart = od.getIdCart();
            int quantity = od.getQuantity();
            double price = od.getPrice();
            boolean status = od.isStatus();
            int ID_Product = od.getIdProduct();
            odss.add(new OrderDetailShow(Book_title, ID_Order, ID_Cart, quantity, price, status, ID_Product));
        }
        return odss;
    }

    public int selectID_Order() {
        int ID_Order = -1;
        // Step 1: Establishing a Connection
        try (PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ORDER_SQL);) {
            ResultSet rs = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
                ID_Order = rs.getInt("ID_Order");
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return ID_Order;
    }

}
