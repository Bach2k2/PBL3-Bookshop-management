package service;

import model.Account;
import model.Role;

import java.util.List;

public interface IAccountService {
    Account findAccountById(int id);
    List<Account> findAllAccount();
    boolean deleteById(int id);
    void save(Account account);
    Account findByUsernameAndPasswordAndStatus(String username, String password,Boolean status);
    void setRole(Account account,int idRole);
}
