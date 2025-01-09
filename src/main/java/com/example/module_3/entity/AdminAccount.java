package com.example.module_3.entity;

import java.util.Objects;

public class AdminAccount {
    private int phoneNumber;
    private String password;

    public AdminAccount(int phoneNumber, String password) {
        this.phoneNumber = phoneNumber;
        this.password = password;
    }

    public int getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(int phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof AdminAccount)) return false;
        AdminAccount that = (AdminAccount) o;
        return phoneNumber == that.phoneNumber && Objects.equals(password, that.password);
    }

    @Override
    public int hashCode() {
        return Objects.hash(phoneNumber, password);
    }
}
