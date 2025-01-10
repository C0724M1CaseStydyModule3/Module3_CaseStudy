package com.example.module_3.vnpay;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import java.util.Base64;

public class VNPayUtil {

    public static String hmacSHA512(String key, String data) {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(key.getBytes(), "HmacSHA512");
            Mac mac = Mac.getInstance("HmacSHA512");
            mac.init(secretKeySpec);
            byte[] hmac = mac.doFinal(data.getBytes());
            return Base64.getEncoder().encodeToString(hmac);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}