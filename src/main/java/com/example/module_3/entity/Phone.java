package com.example.module_3.entity;

public class Phone {
    private String phoneID;
    private String phoneName;
    private String phoneBrand;
    private String description;
    private int price;
    private int stock;

    public Phone() {
    }

    public Phone(String phoneID, String phoneName, String phoneBrand, String description, int price, int stock) {
        this.phoneID = phoneID;
        this.phoneName = phoneName;
        this.phoneBrand = phoneBrand;
        this.description = description;
        this.price = price;
        this.stock = stock;
    }

    public String getPhoneID() {
        return phoneID;
    }

    public void setPhoneID(String phoneID) {
        this.phoneID = phoneID;
    }

    public String getPhoneName() {
        return phoneName;
    }

    public void setPhoneName(String phoneName) {
        this.phoneName = phoneName;
    }

    public String getPhoneBrand() {
        return phoneBrand;
    }

    public void setPhoneBrand(String phoneBrand) {
        this.phoneBrand = phoneBrand;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    @Override
    public String toString() {
        return "Phone{" +
                "phoneID='" + phoneID + '\'' +
                ", phoneName='" + phoneName + '\'' +
                ", phoneBrand='" + phoneBrand + '\'' +
                ", description='" + description + '\'' +
                ", price=" + price +
                ", stock=" + stock +
                '}';
    }
}
