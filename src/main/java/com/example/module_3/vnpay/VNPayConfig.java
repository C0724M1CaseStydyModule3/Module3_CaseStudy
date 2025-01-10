package com.example.module_3.vnpay;

import java.util.HashMap;
import java.util.Map;

public class VNPayConfig {
    public static final String VNPAY_URL = "https://sandbox.vnpayment.vn/paymentv2/vpcpay.html"; // URL Sandbox
    public static final String TMN_CODE = "DH3OC576"; // Thay bằng TMN Code từ VNPay
    public static final String HASH_SECRET = "RDW05H0AKY4OGQL4VSONUVNGIX91NUSY"; // Thay bằng Secret Key từ VNPay
    public static final String RETURN_URL = "http://localhost:8080/vnpay_return"; // URL nhận callback từ VNPay

    public static Map<String, String> getDefaultParams() {
        Map<String, String> params = new HashMap<>();
        params.put("vnp_Version", "2.1.0");
        params.put("vnp_Command", "pay");
        params.put("vnp_TmnCode", TMN_CODE);
        params.put("vnp_Locale", "vn");
        params.put("vnp_CurrCode", "VND");
        params.put("vnp_ReturnUrl", RETURN_URL);
        return params;
    }
}