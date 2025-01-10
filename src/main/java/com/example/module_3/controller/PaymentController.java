package com.example.module_3.controller;


import com.example.module_3.vnpay.VNPayConfig;
import com.example.module_3.vnpay.VNPayService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

public class PaymentController {

    public void createPayment(HttpServletRequest request, HttpServletResponse response) throws IOException {
        VNPayService vnpayService = new VNPayService();
        Map<String, String> vnpParams = VNPayConfig.getDefaultParams();

        // Thêm thông tin thanh toán
        vnpParams.put("vnp_OrderInfo", "Thanh toán đơn hàng");
        vnpParams.put("vnp_Amount", String.valueOf(100000 * 100)); // Số tiền: 100.000 VND
        vnpParams.put("vnp_IpAddr", request.getRemoteAddr());
        vnpParams.put("vnp_TxnRef", String.valueOf(System.currentTimeMillis())); // Mã giao dịch duy nhất

        String paymentUrl = vnpayService.createPaymentUrl(vnpParams);
        response.sendRedirect(paymentUrl); // Redirect tới URL VNPay
    }
}
