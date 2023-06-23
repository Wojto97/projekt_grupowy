package com.example.projekt_grupowy.model;

import javax.persistence.*;

@Entity
@Table(name = "Rola")
public class RoleModel {
    @Id
    @GeneratedValue
    @Column(name = "id_rola", nullable = false)
    private int roleId;
    @Column(name = "nazwa", nullable = false)
    private String roleName;

    public RoleModel(String roleName) {
        this.roleName = roleName;
    }

    public String getRoleName() {
        return this.roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }
}
