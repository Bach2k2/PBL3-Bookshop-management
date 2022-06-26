package dao;

import model.Account;

import java.util.List;

public interface IAccountDAO {
    // Dự phòng
    boolean insertAccount(Account account);
    Account findAccountById(int id);
    List<Account> findAllAccount();
    boolean deleteAccount(int id);
    boolean updateAccount(Account account);
    //
    Account findByUsernameAndPasswordAndStatus(String username,String password,Boolean status);
}
