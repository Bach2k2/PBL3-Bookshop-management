package dao.impl;

import model.Customer;
import dao.DBRepository;
import dao.ICustomerDAO;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CustomerDAO implements ICustomerDAO {
    private static final String INSERT_CUSTOMERS_SQL = "INSERT INTO customer" + "(firstname,lastname,gender,date_of_birth,email,phone,address,id_account)" +
            " VALUES" + "(?,?,?,?,?,?,?,?)";
    private static final String SELECT_ALL_CUSTOMERS = "SELECT id_customer, firstname,lastname,gender,date_of_birth,email,phone,address,id_account FROM customer";
    private static final String SELECT_CUSTOMERS_BY_ID = "SELECT firstname,lastname,gender,date_of_birth,email,phone,address,id_account FROM customer where id_customer=?";
    private static final String DELETE_CUSTOMERS_SQL = "DELETE FROM customer where id_customer=?";
    private static final String UPDATE_CUSTOMERS_SQL = "UPDATE customer SET firstname=?,lastname=?,gender=?,date_of_birth=?,email=?,phone=?,address=?,id_account=? where id_customer=?";
    private static final String SELECT_CUSTOMER_BY_ACCOUNT_ID = "SELECT * FROM customer where id_account=?";


    private Connection connection = null;
    private DBRepository dbRepository = new DBRepository();

    public CustomerDAO() {
        connection = dbRepository.getConnection();
    }

    @Override
    public boolean insertCustomer(Customer customer) {
        // query(INSERT_CUSTOMERS_SQL, new CustomerMapper(), customer);
        boolean check = false;
        try {
            PreparedStatement ps = this.connection.prepareStatement(INSERT_CUSTOMERS_SQL);
            System.out.println(ps);
            ps.setString(1, customer.getFirstName());
            ps.setString(2, customer.getLastName());
            ps.setBoolean(3, customer.isGender());
            ps.setDate(4, new Date(customer.getDateOfBirth().getTime()));
            ps.setString(5, customer.getEmail());
            ps.setString(6, customer.getPhone());
            ps.setString(7, customer.getAddress());
            ps.setInt(8, customer.getIdAccount());
            check = ps.executeUpdate() > 0;
            this.connection.close();
        } catch (SQLException e) {
            printSQLException(e);
        }
        return check;
    }

    @Override
    public Customer findCustomerById(int id) {
        Customer customer = null;
        try (PreparedStatement ps = this.connection.prepareStatement(SELECT_CUSTOMER_BY_ACCOUNT_ID);) {
            System.out.println(ps);
            ps.setInt(1,id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String firstName = rs.getString("firstname");
                String lastName = rs.getString("lastname");
                Boolean gender = rs.getBoolean("gender");
                Date dateOfBirth=rs.getDate("date_of_birth");
                String email = rs.getString("email");
                String phone = rs.getString("phone");
                String address = rs.getString("address");
                int idAccount=rs.getInt("id_account");
                customer = new Customer(id, firstName, lastName, gender,dateOfBirth, email, phone, address, idAccount);
            }

        } catch (SQLException e) {
            printSQLException(e);
        }
        return customer;
    }

    public Customer findCustomerByIdAccount(int idAccount) {
        Customer customer = null;
        try (PreparedStatement ps = this.connection.prepareStatement(SELECT_CUSTOMER_BY_ACCOUNT_ID);) {
            System.out.println(ps);
            ps.setInt(1,idAccount);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id_customer");
                String firstName = rs.getString("firstname");
                String lastName = rs.getString("lastname");
                Boolean gender = rs.getBoolean("gender");
                Date dateOfBirth=rs.getDate("date_of_birth");
                String email = rs.getString("email");
                String phone = rs.getString("phone");
                String address = rs.getString("address");
                customer = new Customer(id, firstName, lastName, gender,dateOfBirth, email, phone, address, idAccount);
            }

        } catch (SQLException e) {
            printSQLException(e);
        }
        return customer;
    }

    @Override
    public List<Customer> findAllCustomer() {
        List<Customer> customerList = new ArrayList<>();
        try (PreparedStatement ps = this.connection.prepareStatement(SELECT_ALL_CUSTOMERS);) {
            System.out.println(ps);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Customer customer = null;
                int id = rs.getInt("id_customer");
                String firstName = rs.getString("firstname");
                String lastName = rs.getString("lastname");
                Boolean gender = rs.getBoolean("gender");
                Date dateOfBirth=rs.getDate("date_of_birth");
                String email = rs.getString("email");
                String phone = rs.getString("phone");
                String address = rs.getString("address");
                int idAccount = rs.getInt("id_account");
                customer = new Customer(id, firstName, lastName, gender,dateOfBirth, email, phone, address, idAccount);
                customerList.add(customer);
            }

        } catch (SQLException e) {
            printSQLException(e);
        }
        return customerList;
    }

    @Override
    public boolean deleteCustomer(int id) {
        return true;
    }

    @Override
    public boolean updateAccount(Customer customer) {
        Boolean check = false;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_CUSTOMERS_SQL);
            System.out.println(preparedStatement);
            preparedStatement.setString(1, customer.getFirstName());
            preparedStatement.setString(2, customer.getLastName());
            preparedStatement.setBoolean(3, customer.isGender());
            preparedStatement.setString(4, customer.getEmail());
            preparedStatement.setString(5, customer.getPhone());
            preparedStatement.setString(6, customer.getAddress());
            preparedStatement.setInt(7, customer.getIdAccount());
            preparedStatement.setInt(8, customer.getIdCustomer());

            check = (preparedStatement.executeUpdate() > 0);
        } catch (SQLException exception) {
            exception.printStackTrace();
        }
        return check;
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
}
