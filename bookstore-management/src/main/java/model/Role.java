package model;

public class Role {

    private int idRole;
    private String code;
    private String name;

    public Role() {
    }

    public Role(int idRole, String code, String name) {
        this.idRole = idRole;
        this.code = code;
        this.name = name;
    }

    public int getIdRole() {
        return idRole;
    }

    public void setIdRole(int idRole) {
        this.idRole = idRole;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
