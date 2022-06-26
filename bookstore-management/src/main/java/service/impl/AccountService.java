package service.impl;


import model.Account;
import model.Role;
import dao.impl.AccountDAO;
import dao.impl.RoleDAO;
import service.IAccountService;

import java.util.List;

public class AccountService implements IAccountService {

//    @Inject
//    private IAccountDAO accountRepository;
    private AccountDAO accountRepository=new AccountDAO();

    public AccountService() {
        accountRepository = new AccountDAO();
    }

    @Override
    public Account findAccountById(int id) {
        return accountRepository.findAccountById(id);
    }

    @Override
    public List<Account> findAllAccount() {
        return accountRepository.findAllAccount();
    }

    @Override
    public boolean deleteById(int id) {
        Account acc=findAccountById(id);
        if(acc==null) return false;
        else{
            accountRepository.deleteAccount(id);
            return true;
        }
    }

    @Override
    public void save(Account account) {
        if(account.getIdAccount()>0)
        {
            accountRepository.updateAccount(account);
        }
        else{
            accountRepository.insertAccount(account);
        }
    }

    @Override
    public Account findByUsernameAndPasswordAndStatus(String username, String password,Boolean status) {
        return accountRepository.findByUsernameAndPasswordAndStatus(username,password,status);
    }

    @Override
    public void setRole(Account account,int idRole) {
        RoleDAO roleDAO=new RoleDAO();
        for(Role role: roleDAO.findAllRole())
        {
            if(role.getIdRole()==idRole) account.setRole(role);
        }
    }
}
