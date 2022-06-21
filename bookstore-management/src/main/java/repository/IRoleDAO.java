package repository;

import model.Customer;
import model.Role;

import java.util.List;

public interface IRoleDAO {
    List<Role> findAllRole();
}
