package repository.impl;

import com.sun.org.apache.xpath.internal.operations.Bool;
import mapper.AccountMapper;
import model.Account;
import repository.DBRepository;
import repository.IAccountDAO;

import java.sql.*;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

public class AccountDAO extends AbstractDAO<Account> implements IAccountDAO {
    private static final String INSERT_ACCOUNTS_SQL = "INSERT INTO ACCOUNT" + "(username,password,signup_date,last_login,status,id_role) VALUES" + "(?,?,?,?,?,?)";
    // fix id_staff
    private static final String SELECT_ALL_ACCOUNT = "SELECT id_account,username,password,signup_date,last_login,status,id_role FROM ACCOUNT";
    private static final String SELECT_ACCOUNT_BY_ID = "SELECT * FROM ACCOUNT where id_account=?";
    private static final String DELETE_ACCOUNTS_SQL = "DELETE FROM ACCOUNT where id_account=?";
    private static final String UPDATE_ACCOUNTS_SQL = "UPDATE ACCOUNT SET username=?, password=?,signup_date=?,last_login=?,status=?, id_role=? where id_account=?";

    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
    Connection connection = null;
    private DBRepository dbRepository = new DBRepository();

    public AccountDAO() {
        connection = dbRepository.getConnection();
    }
    // Them Account vao


    @Override
    public boolean insertAccount(Account account) {
//        System.out.println(INSERT_ACCOUNTS_SQL);
//        insert(INSERT_ACCOUNTS_SQL, account);
        boolean check=false;
        try {
            PreparedStatement ps = this.connection.prepareStatement(INSERT_ACCOUNTS_SQL);
            ps.setString(1, account.getUsername());
            ps.setString(2, account.getPassword());
            ps.setDate(3, new Date(account.getSignUpDate().getTime()));
            ps.setString(4,  account.getLastLogin().toString());
            ps.setBoolean(5, account.getStatus());
            ps.setInt(6, account.getIdRole());
            check=ps.executeUpdate()>0?true:false; // Insert lan 1 thành công
        } catch (SQLException e) {
            printSQLException(e);
        }
        return check;
    }

    //Lay 1 account boi id
    @Override
    public Account findAccountById(int id) {
        Account account = null;
       // return (Account) query(SELECT_ACCOUNT_BY_ID, new AccountMapper(), id);
        try (Connection connection = this.connection) {
            PreparedStatement ps = connection.prepareStatement(SELECT_ACCOUNT_BY_ID);
            ps.setInt(1, id);
            System.out.println(ps);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String username = rs.getString("username");
                String password = rs.getString("password");
                Date signUpDate = rs.getDate("signup_date");
                LocalDateTime lastLogin =LocalDateTime.parse(rs.getString("last_login"),formatter);
                boolean status = rs.getBoolean("status");
                account = new Account(id, username, password, signUpDate, lastLogin,status,1 );
            }

        } catch (SQLException e) {
            printSQLException(e);
        }
        return account;
    }

    @Override
    public List<Account> findAllAccount() {
        List<Account> accountList = new ArrayList<>();
//        accountList = query(SELECT_ALL_ACCOUNT, new AccountMapper());
//        return accountList;
        try (PreparedStatement ps = this.connection.prepareStatement(SELECT_ALL_ACCOUNT);) {
            System.out.println(ps);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Account account = null;
                int id = rs.getInt("id_account");
                String username = rs.getString("username");
                String password = rs.getString("password");
                Date signupDate = rs.getDate("signup_date");
                LocalDateTime lastlogin = LocalDateTime.parse(rs.getString("last_login"),formatter);
                boolean status= rs.getBoolean("status");
                account = new Account(id, username, password, signupDate, lastlogin, status,1);
                accountList.add(account);
            }

        } catch (SQLException e) {
            printSQLException(e);
        }
        return accountList;
    }

    @Override
    public boolean deleteAccount(int idAccount) {
        boolean check = false;
        try {
            PreparedStatement preparedStatement = this.connection.prepareStatement(DELETE_ACCOUNTS_SQL);
            preparedStatement.setInt(1, idAccount);
            check = (preparedStatement.executeUpdate() > 0);
        } catch (SQLException exception) {
            exception.printStackTrace();
        }
        return check;
    }

    @Override
    public boolean updateAccount(Account account) {
        boolean check = false;
        try {
            PreparedStatement preparedStatement = this.connection.prepareStatement(UPDATE_ACCOUNTS_SQL);
            preparedStatement.setString(1, account.getUsername());
            preparedStatement.setString(2, account.getPassword());
            preparedStatement.setDate(3, (Date) account.getSignUpDate());
            preparedStatement.setString(4, account.getLastLogin().toString());
            preparedStatement.setInt(5, account.getIdAccount());
            check = (preparedStatement.executeUpdate() > 0);
        } catch (SQLException exception) {
            exception.printStackTrace();
        }
        return check;
    }

    @Override
    public Account findByUsernameAndPasswordAndStatus(String username, String password, Boolean status) {
        StringBuilder sql = new StringBuilder("SELECT * FROM account AS a ");
        sql.append(" INNER JOIN role AS r ON a.id_role=r.id_role ");
        sql.append(" WHERE username=? and password=? and status=?");
        //   List<Account> accounts= query(sql.toString(),new AccountMapper(),username,password,status);
        List<Account> accounts = null;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql.toString());
            ResultSet rs = preparedStatement.executeQuery();
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, password);
            preparedStatement.setBoolean(3, status);
            while (rs.next()) {
                Account account = null;
                int id = rs.getInt("id_account");
//                String username1 = rs.getString("username");
//                String password1 = rs.getString("password");
                Date signupDate = rs.getDate("signup_date");
                LocalDateTime lastlogin = LocalDateTime.parse(rs.getString("last_login"), formatter);//             Boolean status1 = Boolean.valueOf(rs.getString("status"));
                int role_id = rs.getInt("role_id");
                account = new Account(id, username, password, signupDate, lastlogin, status, role_id);
                accounts.add(account);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }

        System.out.println(sql.toString());
        return accounts.isEmpty() ? null : accounts.get(0);
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
