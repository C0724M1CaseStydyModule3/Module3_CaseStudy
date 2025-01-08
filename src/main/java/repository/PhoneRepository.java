package com.example.mvc.repository;

import com.example.mvc.entity.Phone;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class PhoneRepository {
    private static List<Phone> phones = new ArrayList<>();

    public List<Phone> getAll() {
        List<Phone> phones = new ArrayList<>();
        try {
            PreparedStatement statement = BaseRepository.getConnection().prepareStatement("select * from phone");

            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                String phoneID = resultSet.getString("phoneID");
                String phoneName = resultSet.getString("phoneName");
                String phoneBrand = resultSet.getString("phoneBrand");
                String description = resultSet.getString("description");
                int price = resultSet.getInt("price");
                int stock = resultSet.getInt("stock");
                phones.add(new Phone(phoneID, phoneName, phoneBrand, description, price, stock));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return phones;
    }

    public void save(Phone phone) {
        try {
            PreparedStatement statement = BaseRepository.getConnection().prepareStatement("insert into phone(phoneID, phoneName, phoneBrand, description, price, stock) values (?,?,?,?,?,?)");
            statement.setString(1, phone.getPhoneID());
            statement.setString(2, phone.getPhoneName());
            statement.setString(3, phone.getPhoneBrand());
            statement.setString(4, phone.getDescription());
            statement.setInt(5, phone.getPrice());
            statement.setInt(6, phone.getStock());
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void deleteByPhoneID(String phoneID) {
        try {
            PreparedStatement statement = BaseRepository.getConnection().prepareStatement("delete from phone where phoneID = ?");
            statement.setString(1, phoneID);
            statement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}