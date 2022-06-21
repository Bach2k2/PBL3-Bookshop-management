package mapper;

import model.Account;
import model.Role;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;

public class AccountMapper implements RowMapper<Account> {

    DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");

    @Override
    public Account mapRow(ResultSet rs) {
        try {
            Account account = new Account();
            account.setIdAccount(rs.getInt("id_account"));
            account.setPassword(rs.getString("username"));
            account.setPassword(rs.getString("password"));
            Date signupDate= df.parse(rs.getString("signup_date"));
            account.setSignUpDate(signupDate);
            System.out.println(signupDate.toString());
            account.setLastLogin(LocalDateTime.parse(rs.getString("last_login"), formatter));
            account.setStatus(rs.getBoolean("status"));
            Role role = new Role();
            role.setCode(rs.getString("code"));
            role.setCode(rs.getString("name"));
            account.setRole(role);
            return account;
        } catch (SQLException | ParseException exception) {
            exception.printStackTrace();
            return null;
        }
    }
}
