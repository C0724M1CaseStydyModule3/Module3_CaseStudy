package com.example.module_3.controller;


import com.example.module_3.entity.Phone;
import com.example.module_3.service.IPhoneService;
import com.example.module_3.service.PhoneService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "PhoneController", urlPatterns = "/phone")
public class PhoneController extends HttpServlet {
    private final PhoneService phoneService = new PhoneService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                req.getRequestDispatcher("/WEB-INF/views/phone/create.jsp").forward(req, resp);
                break;
            case "update":
                break;
            case "delete":
                break;
            default:
                List<Phone> phones = phoneService.getAll();
                req.setAttribute("phones", phones);
                req.getRequestDispatcher("/WEB-INF/views/phone/list.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
