package com.example.module_3.controller;


import com.example.module_3.entity.AdminAccount;
import com.example.module_3.service.AccountService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "AdminAccount", urlPatterns = "/adminLogin")
public class AdminAccountController extends HttpServlet {
    private static AccountService accountService = new AccountService();
    private static String jdbcURL = "jdbc:mysql://localhost:3306/case_study?useSSL=false";
    private static String jdbcUsername = "root";
    private static String jdbcPassword = "11041998";

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<AdminAccount> adminAccounts = accountService.getAll();
        req.setAttribute("adminAccounts", adminAccounts);
        req.getRequestDispatcher("/WEB-INF/views/admin/login.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int phone = Integer.parseInt(req.getParameter("phone"));
        String password = req.getParameter("password");
        try (Connection connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword)){
                String sql = "select * from adminaccount where phone = ? and password = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, phone);
            preparedStatement.setString(2, password);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                req.getRequestDispatcher("/WEB-INF/views/admin/orderlist.jsp").forward(req, resp);
            } else {
                req.setAttribute("error", "Tên đăng nhập hoặc mật khẩu sai!");
                req.getRequestDispatcher("/WEB-INF/views/admin/login.jsp").forward(req, resp);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
