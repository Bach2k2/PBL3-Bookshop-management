package mapper;

import model.Customer;

import java.sql.ResultSet;
import java.sql.SQLException;


public class CustomerMapper implements RowMapper<Customer> {

    @Override
    public Customer mapRow(ResultSet rs) {
        try {
            Customer customer = null;
            customer.setIdCustomer(rs.getInt("id_account"));
            customer.setFirstName(rs.getString("firstname"));
            customer.setLastName(rs.getString("lastname"));
            customer.setGender(rs.getBoolean("gender"));
            customer.setEmail(rs.getString("email"));
            customer.setPhone(rs.getString("phone"));
            customer.setAddress(rs.getString("address"));
            customer.setPincode(rs.getString("pin_code"));
            return customer;
        } catch (SQLException exception) {
            exception.printStackTrace();
            return null;
        }
    }
}
