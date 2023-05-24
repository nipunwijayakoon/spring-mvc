package com.dev.pos;


import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.LinkedHashMap;

public class Customer {


//    @Max(10)
//    @Min(3)
    @Size(max = 10, min = 3, message = "insert valid name")
    @NotNull(message = "name is required!")
    private String name;
    private String address;

    private String city;

    private String[] cardType;

    private LinkedHashMap<?,?> cityData;

    private String jobType;

    public Customer() {
        cityData = new Database().data;
    }

    public Customer(String name, String address, String city, String[] cardType, LinkedHashMap<?, ?> cityData, String jobType) {
        this.name = name;
        this.address = address;
        this.city = city;
        this.cardType = cardType;
        this.cityData = cityData;
        this.jobType = jobType;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public LinkedHashMap<?, ?> getCityData() {
        return cityData;
    }

    public void setCityData(LinkedHashMap<?, ?> cityData) {
        this.cityData = cityData;
    }

    public String[] getCardType() {
        return cardType;
    }

    public void setCardType(String[] cardType) {
        this.cardType = cardType;
    }

    public String getJobType() {
        return jobType;
    }

    public void setJobType(String jobType) {
        this.jobType = jobType;
    }
}
