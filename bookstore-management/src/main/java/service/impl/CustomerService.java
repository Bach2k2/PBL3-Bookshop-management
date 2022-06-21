package service.impl;

import model.Account;
import model.Customer;
import repository.impl.CustomerDAO;
import service.ICustomerService;

import java.util.List;

public class CustomerService implements ICustomerService {
    private CustomerDAO customerDAO=new CustomerDAO();
    @Override
    public Customer findCustomerById(int id) {
        return customerDAO.findCustomerById(id);
    }

    @Override
    public List<Customer> findAllCustomer() {
        return customerDAO.findAllCustomer();
    }

    @Override
    public boolean deleteById(int id) {
        Customer customer= customerDAO.findCustomerById(id);
        if(customer==null) return false;
        else{
            customerDAO.deleteCustomer(id);
            return true;
        }
    }

    @Override
    public void save(Customer customer) {
        if(customer.getIdCustomer()>0)
        {
            customerDAO.updateAccount(customer);
        }
        else{
            customerDAO.insertCustomer(customer);
        }
    }

    @Override
    public Customer findByUsernameAndPasswordAndStatus(String username, String password, Boolean status) {
        return null;
    }
}
