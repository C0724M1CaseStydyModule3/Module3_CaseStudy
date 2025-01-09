package com.example.module_3.repository;

import com.example.module_3.entity.AdminAccount;
import com.example.module_3.entity.Phone;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.example.module_3.entity.Phone;

public class PhoneRepository {
    private static final List<Phone> phones = new ArrayList<>();

    public static List<Phone> getAll() {
        List<Phone> phones = new ArrayList<>();

        try {
            PreparedStatement statement = BaseRepository.getConnection().prepareStatement("select * from phone");
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                String phoneID = resultSet.getString("PhoneID");
                String phoneName = resultSet.getString("PhoneName");
                String phoneBrand = resultSet.getString("PhoneBrand");
                String phoneDes = resultSet.getString("Description");
                int phonePrice = resultSet.getInt("Price");
                int phoneStock = resultSet.getInt("Stock");
                phones.add(new Phone(phoneID,phoneName,phoneBrand, phoneDes, phonePrice, phoneStock));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return phones;
    }

    public void save(Phone phone) {
        phones.add(phone);
    }

    public void deleteByPhoneID(String id) {
        phones.remove(id);
    }
}