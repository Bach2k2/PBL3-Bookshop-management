package model;

import java.sql.Time;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.Date;
import java.util.Timer;

public class Account {
    private int idAccount;
    private String username;
    private String password;
    private Date signUpDate;
    private LocalDateTime lastLogin;
    private Boolean status=true;
    private int idRole;
    private Role role;

    public Account() {
    }

    public Account(String username, String password, Date signUpDate, LocalDateTime lastLogin, Boolean status, int idRole) {
        this.username = username;
        this.password = password;
        this.signUpDate = signUpDate;
        this.lastLogin = lastLogin;
        this.status = status;
        this.idRole = idRole;
    }

    public Account(String username, String password, Boolean status) {
        this.username = username;
        this.password = password;
        this.status = status;
    }

    public Account(int idAccount, String username, String password, Date signUpDate, LocalDateTime lastLogin, Boolean status, int idRole) {
        this.idAccount = idAccount;
        this.username = username;
        this.password = password;
        this.signUpDate = signUpDate;
        this.lastLogin = lastLogin;
        this.status = status;
        this.idRole = idRole;
    }

    public int getIdAccount() {
        return idAccount;
    }

    public void setIdAccount(int idAccount) {
        this.idAccount = idAccount;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Date getSignUpDate() {
        return signUpDate;
    }

    public void setSignUpDate(Date signUpDate) {
        this.signUpDate = signUpDate;
    }

    public LocalDateTime getLastLogin() {
        return lastLogin;
    }

    public void setLastLogin(LocalDateTime lastLogin) {
        this.lastLogin = lastLogin;
    }

    public Boolean getStatus() {
        return status;
    }

    public void setStatus(Boolean status) {
        this.status = status;
    }

    public int getIdRole() {
        return idRole;
    }

    public void setIdRole(int idRole) {
        this.idRole = idRole;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

}
