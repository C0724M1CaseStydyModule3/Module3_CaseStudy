package com.example.module_3.controller;

import com.example.module_3.entity.CartItem;
import com.example.module_3.entity.Product;
import com.example.module_3.repository.ProductRepository;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class CartController  extends HttpServlet {
    private List<CartItem> cart = new ArrayList<>();
    private ProductRepository Productrepository= new ProductRepository();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Product> products =Productrepository .getAllProducts();
        req.setAttribute("products", products);
        req.setAttribute("cart", cart);
        RequestDispatcher dispatcher = req.getRequestDispatcher("view/index.jsp");
        dispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int productId = Integer.parseInt(req.getParameter("productId"));
        Product product = Productrepository.getAllProducts()
                .stream()
                .filter(p -> p.getId() == productId)
                .findFirst()
                .orElse(null);

        if (product != null) {
            cart.add(new CartItem(product, 1));
        }
        resp.sendRedirect("cart");
    }
}