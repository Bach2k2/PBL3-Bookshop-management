package dao.impl;

import model.*;
import dao.DBRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO {
    private static String INSERT_PRODUCT_SQL = "Insert INTO product " +
            "(quantity, price, average_rating, description, book_title, Publisher, publish_date, id_author, id_category) VALUES "
            + " (?,?,?,?,?,?,?,?,?);";
    private static String SELECT_ALL_PRODUCT = "SELECT * FROM product";
    private static String SELECT_PRODUCT_BY_ID = "SELECT * FROM product WHERE ID_Product = ?";
    private static String SELECT_PRODUCT_BY_Category = "SELECT * FROM product WHERE id_category = ?";
    private static String DELETE_PRODUCT_SQL = "delete from product where ID_Product = ? ;";
    private static String UPDATE_PRODUCT_SQL = "update product set "
            + "quantity = ?, "
            + "price = ?, "
            + "avarage_rating = ?, "
            + "Product_description = ?, "
            + "Book_title = ?, "
            + "publisher = ?, "
            + "publish_date = ?, "
            + "ID_Author = ?, "
            + "ID_Category = ? "
            + "where ID_Product = ?;";

    private static String SELECT_CATEGORY_BY_ID = "SELECT * FROM category WHERE id_category = ?";
    private static String SELECT_AUTHOR_BY_ID = "SELECT * FROM author WHERE idAuthor = ?";
    //private static String SELECT_CATEGORYNAME_BY_ID = "SELECT categoryname FROM Category WHERE ID_Category = ?";
    private static String SELECT_ALL_CATEGORY = "SELECT * FROM category";
    private static String SELECT_ALL_AUTHOR = "SELECT * FROM author";

    private static String INSERT_AUTHOR_SQL = "Insert INTO author "
            + "(authorname,dateofbirth,description) "
            + "(?,?,?);";

    private static String SELECT_RATING_BY_ID_PRODUCT = "SELECT * FROM rating WHERE id_roduct = ? ";
    private static String INSERT_RATING_SQL = "Insert INTO rating "
            + "(ID_Customer,ID_Product,rating_star,review_text) "
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
        try (
                PreparedStatement preparedStatement = this.connection.prepareStatement(INSERT_PRODUCT_SQL)) {
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

    public Product selectProduct(int idProduct) {
        Product product = null;
        try (PreparedStatement preparedStatement = connection.prepareStatement(SELECT_PRODUCT_BY_ID);){
            preparedStatement.setInt(1, idProduct);
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
                int quantity = rs.getInt("quantity");
                double price = rs.getDouble("price");
                double averageRating = rs.getDouble("average_rating");
                String productDescription = rs.getString("product_description");
                String bookTitle = rs.getString("book_title");
                String publisher = rs.getString("publisher");
                Date publishDate = rs.getDate("publish_date");
                int idAuthor = rs.getInt("id_author");
                int idCategory = rs.getInt("id_category");
                product = new Product(idProduct, quantity, price, averageRating, productDescription, bookTitle, publisher, publishDate, idAuthor, idCategory);
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
                int idProduct = rs.getInt("id_Product");
                int quantity = rs.getInt("quantity");
                int price = rs.getInt("price");
                double averageRating = rs.getDouble("average_rating");
                String product_description = rs.getString("Product_description");
                String bookTitle = rs.getString("book_title");
                String publisher = rs.getString("publisher");
                Date publishDate = rs.getDate("publish_date");
                int idAuthor = rs.getInt("ID_Author");
                int idCategory = rs.getInt("ID_Category");
                Products.add(new Product(idProduct, quantity, price, averageRating,
                        product_description, bookTitle, publisher, publishDate,
                        idAuthor, idCategory));
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
                int idAuthor = rs.getInt("ID_Author");
                Products.add(new Product(idProduct, quantity, price, averageRating,
                        productDescription, bookTitle, publisher, publishDate,
                        idAuthor, idCategory));
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

        Product product = new Product(productShow.getIdProduct(), productShow.getQuantity(), productShow.getPrice()
                , productShow.getAverageRating(), productShow.getBookTitle(), productShow.getPublisher(), productShow.getProductDescription(),
                (Date) productShow.getPublishDate(), idAuthor, idCategory);// Sai ở date.
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
        Product p = selectProduct(idProduct);
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
        System.out.println(INSERT_RATING_SQL);
        // try-with-resource statement will auto close the connection.
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
    }

    public List<ProductShow> GetBookWithSameCategory(ProductShow productShow) {
        List<ProductShow> pss = new ArrayList<>();
        List<ProductShow> listps = convertProduct(selectAllProduct());
        for (ProductShow ps : listps) {
            if (ps.getCategoryName().equals(productShow.getCategoryName())) {
                pss.add(ps);
            }
        }

        return pss;
    }

    public List<ProductShow> GetBookWithSameAuthor(ProductShow productShow) {
        List<ProductShow> pss = new ArrayList<>();
        List<ProductShow> listps = convertProduct(selectAllProduct());
        for (ProductShow ps : listps) {
            if (ps.getAuthorName().equals(productShow.getAuthorName())) {
                pss.add(ps);
            }
        }

        return pss;
    }
}
