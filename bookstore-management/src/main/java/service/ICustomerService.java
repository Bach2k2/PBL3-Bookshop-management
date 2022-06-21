package service;

import model.Account;
import model.Customer;

import java.util.List;

public interface ICustomerService {
    Customer findCustomerById(int id);
    List<Customer> findAllCustomer();
    boolean deleteById(int id);
    void save(Customer customer);
    Customer findByUsernameAndPasswordAndStatus(String username, String password, Boolean status);
}
