package dao;

import model.Customer;

import java.util.List;

public interface ICustomerDAO {
    boolean insertCustomer(Customer customer);
    Customer findCustomerById(int id);
    List<Customer> findAllCustomer();
    boolean deleteCustomer(int id);
    boolean updateAccount(Customer customer);
}
