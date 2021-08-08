package model;

import java.io.Serializable;
import java.sql.Date;
import java.time.LocalDateTime;

public class Bill implements Serializable{
    private int id;
    private int customerId;
    private String buyDate;
    private double priceTotal;

    public Bill() {
    }

    public Bill(int id, int customerId, String buyDate, double priceTotal) {
        this.id = id;
        this.customerId = customerId;
        this.buyDate = buyDate;
        this.priceTotal = priceTotal;
    }

    public Bill(int customerId, String buyDate, double priceTotal) {
        this.customerId = customerId;
        this.buyDate = buyDate;
        this.priceTotal = priceTotal;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    public String getBuyDate() {
        return buyDate;
    }

    public void setBuyDate(String buyDate) {
        this.buyDate = buyDate;
    }

    public double getPriceTotal() {
        return priceTotal;
    }

    public void setPriceTotal(double priceTotal) {
        this.priceTotal = priceTotal;
    }
}