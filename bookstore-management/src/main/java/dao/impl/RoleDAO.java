package dao.impl;

import model.Role;
import dao.DBRepository;
import dao.IRoleDAO;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class RoleDAO implements IRoleDAO {

    private static final String SELECT_ALL_ROLE = "SELECT * FROM role";
    Connection connection = null;
    private DBRepository dbRepository = new DBRepository();

    public RoleDAO() {
        connection = dbRepository.getConnection();
    }
    @Override
    public List<Role> findAllRole() {
        List<Role> roles=new ArrayList<>();
        try (PreparedStatement ps = this.connection.prepareStatement(SELECT_ALL_ROLE);) {
            System.out.println(ps);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Role role = null;
                int id = rs.getInt("id_role");
                String code = rs.getString("code");
                String name= rs.getString("name");
                role= new Role(id,code,name);
                roles.add(role);
            }

        } catch (SQLException e) {
            printSQLException(e);
        }
        return roles;
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
