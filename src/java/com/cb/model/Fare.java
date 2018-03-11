package com.cb.model;

/**
 *
 * @author BASAK
 */
public class Fare {
    
    private int id;
    private String fareType, baseFare, distFare, rideTimeFare, cancelFee, city;

    public Fare() {
    }
    
    public Fare(String city, String baseFare, String distFare, String rideTimeFare, String cancelFee, String fareType) {
        this.city = city;
        this.baseFare = baseFare;
        this.distFare = distFare;
        this.rideTimeFare = rideTimeFare;
        this.cancelFee = cancelFee;
        this.fareType = fareType;
    }

    public int getId() {
        return id;
    }

    public void setId(Object id) {
        if(id instanceof String) {
            this.id = Integer.parseInt( (String) id);
        } else if(id instanceof Number) {
            this.id = (Integer) id; 
        }
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getBaseFare() {
        return baseFare;
    }

    public void setBaseFare(String baseFare) {
        this.baseFare = baseFare;
    }

    public String getDistFare() {
        return distFare;
    }

    public void setDistFare(String distFare) {
        this.distFare = distFare;
    }

    public String getRideTimeFare() {
        return rideTimeFare;
    }

    public void setRideTimeFare(String rideTimeFare) {
        this.rideTimeFare = rideTimeFare;
    }

    public String getCancelFee() {
        return cancelFee;
    }

    public void setCancelFee(String cancelFee) {
        this.cancelFee = cancelFee;
    }

    public String getFareType() {
        return fareType;
    }

    public void setFareType(String fareType) {
        this.fareType = fareType;
    }
}
