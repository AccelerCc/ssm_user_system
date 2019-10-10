package com.zero.entity;

import org.springframework.stereotype.Component;


public class UserMes {
    private String id;
    private String password;
    private String email;
    private int phone;

    public UserMes(String id, String password, String email, int phone) {
        this.id = id;
        this.password = password;
        this.email = email;
        this.phone = phone;
    }


    public UserMes() {
    }

    @Override
    public String toString() {
        return "UserMes{" +
                "id='" + id + '\'' +
                ", password='" + password + '\'' +
                ", email='" + email + '\'' +
                ", phone=" + phone +
                '}';
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getPhone() {
        return phone;
    }

    public void setPhone(int phone) {
        this.phone = phone;
    }
}
