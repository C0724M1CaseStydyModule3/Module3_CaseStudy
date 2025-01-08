package com.example.mvc.controller;

import com.example.mvc.entity.Phone;
import com.example.mvc.service.IPhoneService;
import com.example.mvc.service.PhoneService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "phoneController", urlPatterns = "/phone")
public class PhoneController extends HttpServlet {
    private IPhoneService phoneService = new PhoneService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Phone> phones = phoneService.getAll();
        req.setAttribute("phones", phones);
        req.getRequestDispatcher("/WEB-INF/view/phone/list.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
