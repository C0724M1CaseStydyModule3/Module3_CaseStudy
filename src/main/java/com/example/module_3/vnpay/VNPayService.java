package com.example.module_3.vnpay;

import java.net.URLEncoder;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

public class VNPayService {


    public String createPaymentUrl(Map<String, String> params) {
        try {
            // Sắp xếp tham số theo thứ tự alphabet
            Map<String, String> sortedParams = new TreeMap<>(params);
            StringBuilder query = new StringBuilder();
            StringBuilder hashData = new StringBuilder();

            Set<Map.Entry<String, String>> entries = sortedParams.entrySet();
            for (Map.Entry<String, String> entry : entries) {
                String key = entry.getKey();
                String value = entry.getValue();
                if ((value != null) && (!value.isEmpty())) {
                    hashData.append(key).append('=').append(value).append('&');
                    query.append(URLEncoder.encode(key, "UTF-8"))
                            .append('=')
                            .append(URLEncoder.encode(value, "UTF-8"))
                            .append('&');
                }
            }

            // Xóa ký tự `&` cuối cùng
            hashData.deleteCharAt(hashData.length() - 1);
            query.deleteCharAt(query.length() - 1);

            // Tạo checksum
            String secureHash = VNPayUtil.hmacSHA512(VNPayConfig.HASH_SECRET, hashData.toString());
            query.append("&vnp_SecureHash=").append(secureHash);

            // Trả về URL thanh toán
            return VNPayConfig.VNPAY_URL + "?" + query.toString();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }}