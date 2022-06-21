package repository.impl;

import mapper.CustomerMapper;
import model.Customer;
import repository.DBRepository;
import repository.ICustomerDAO;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CustomerDAO extends AbstractDAO<Customer> implements ICustomerDAO {
    private static final String INSERT_CUSTOMERS_SQL = "INSERT INTO customer" + "(first_name,last_name,gender,date_of_birth,phone,email,address,username)" +
            " VALUES" + "(?,?,?,?,?,?,?,?)";
    private static final String SELECT_ALL_CUSTOMERS = "SELECT id_customer, first_name,last_name,gender,date_of_birth,phone,email,address,pin_code,username FROM customer";
    private static final String SELECT_CUSTOMERS_BY_ID = "SELECT first_name,last_name,gender,date_of_birth,phone,email,address,pin_code FROM customer where id_customer=?";
    private static final String DELETE_CUSTOMERS_SQL = "DELETE FROM customer where id_customer=?";
    private static final String UPDATE_CUSTOMERS_SQL = "UPDATE customer SET first_name=?,last_name=?,gender=?,date_of_birth=?,phone=?,email=?,address=?,pin_code=? where id_customer=?";

    private Connection connection = null;
    private DBRepository dbRepository = new DBRepository();

    public CustomerDAO() {
        connection = dbRepository.getConnection();
    }

    @Override
    public boolean insertCustomer(Customer customer) {
       // query(INSERT_CUSTOMERS_SQL, new CustomerMapper(), customer);
        boolean check=false;
        try {
            PreparedStatement ps = this.connection.prepareStatement(INSERT_CUSTOMERS_SQL);
            ps.setString(1, customer.getFirstName());
            ps.setString(2, customer.getLastName());
            ps.setBoolean(3, customer.isGender());
            ps.setDate(4, new Date(customer.getDateOfBirth().getTime()));
            ps.setString(5,  customer.getPhone());
            ps.setString(6, customer.getAddress());
            ps.setString(7, customer.getEmail());
            ps.setString(8, customer.getUsername());
            check= ps.executeUpdate()>0;
            this.connection.close();
        } catch (SQLException e) {
            printSQLException(e);
        }
        return check;
    }

    @Override
    public Customer findCustomerById(int id) {
        return (Customer) query(SELECT_CUSTOMERS_BY_ID, new CustomerMapper(), id);
    }

    @Override
    public List<Customer> findAllCustomer() {
        List<Customer> customerList = new ArrayList<>();
//        return query(SELECT_ALL_CUSTOMERS, new CustomerMapper());
        try (PreparedStatement ps = this.connection.prepareStatement(SELECT_ALL_CUSTOMERS);) {
            System.out.println(ps);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Customer customer = null;
                int id = rs.getInt("id_customer");
                String firstName = rs.getString("first_name");
                String lastName = rs.getString("last_name");
                Boolean gender = rs.getBoolean("gender");
                String email = rs.getString("email");
                String phone = rs.getString("phone");
                String address = rs.getString("address");
                String username = rs.getString("username");
                Date dateOfBirth = rs.getDate("date_of_birth");
                customer = new Customer(id, gender, firstName, lastName, dateOfBirth, email, phone, address,username);
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
            PreparedStatement preparedStatement = getConnection().prepareStatement(UPDATE_CUSTOMERS_SQL);
            preparedStatement.setString(1, customer.getFirstName());
            preparedStatement.setString(2, customer.getLastName());
            preparedStatement.setBoolean(3, customer.isGender());
            preparedStatement.setDate(4, (Date) customer.getDateOfBirth());
            preparedStatement.setString(5, customer.getEmail());
            preparedStatement.setString(6, customer.getPhone());
            preparedStatement.setString(7, customer.getAddress());
            preparedStatement.setString(8, customer.getPincode());
            preparedStatement.setInt(9, customer.getIdCustomer());

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
