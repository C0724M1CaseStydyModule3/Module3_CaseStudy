package com.example.module_3.repository;

import com.example.module_3.entity.AdminAccount;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class AccountRepository {

    public static List<AdminAccount> getAll() {
        List<AdminAccount> adminAccounts = new ArrayList<>();

        try {
            PreparedStatement statement = BaseRepository.getConnection().prepareStatement("select * from adminaccount");
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                int phone = resultSet.getInt("phone");
                String password = resultSet.getString("password");
                adminAccounts.add(new AdminAccount(phone, password));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return adminAccounts;
    }

    public void save(AdminAccount adminAccount) {
        try {
            PreparedStatement statement = BaseRepository.getConnection().prepareStatement("insert into adminaccount(phone, password) values (?,?)");
            statement.setInt(1, adminAccount.getPhoneNumber());
            statement.setString(2, adminAccount.getPassword());
            statement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void deleteByPhoneNumber(int phone) {
        try {
            PreparedStatement statement = BaseRepository.getConnection().prepareStatement("delete from adminaccount where phone = ?");
            statement.setInt(1, phone);
            statement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public static AdminAccount findByPhoneNumber(int phone) {
        List<AdminAccount> adminAccounts = getAll();
        for (AdminAccount adminAccount : adminAccounts) {
            if (adminAccount.getPhoneNumber() == phone) {
                return adminAccount;
            }
        }
        return null;
    }

    public static AdminAccount findByPassword(String password) {
        List<AdminAccount> adminAccounts = getAll();
        for (AdminAccount adminAccount : adminAccounts) {
            if (adminAccount.getPassword().equals(password)) {
                return adminAccount;
            }
        }
        return null;
    }
}
