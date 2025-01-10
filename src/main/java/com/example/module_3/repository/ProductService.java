package com.example.module_3.repository;

import com.example.module_3.entity.Product;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductService {

        private static final String DB_URL = "jdbc:mysql://localhost:3306/phone?useSSL=false";
        private static final String USER = "root";
        private static final String PASSWORD = "2004";

        public List<Product> getAllProducts() {
            List<Product> products = new ArrayList<>();
            try (Connection connection = DriverManager.getConnection(DB_URL, USER, PASSWORD)) {
                String query = "SELECT * FROM Phone";
                PreparedStatement statement = connection.prepareStatement(query);
                ResultSet rs = statement.executeQuery();

                while (rs.next()) {
                    Product product = new Product();
                    product.setId(rs.getInt("PhoneID"));
                    product.setName(rs.getString("PhoneName"));
                    product.setBrand(rs.getString("PhoneBrand"));
                    product.setDescription(rs.getString("Description"));
                    product.setPrice(rs.getInt("Price"));
                    product.setStock(rs.getInt("Stock"));
                    product.setImagePath(rs.getString("ImagePath"));
                    products.add(product);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
            return products;
        }
    }
