package com.cb.model;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author BASAK
 */
public class Booking {
    
    String id, userId, pickupLocation, dropLocation, pickupDate, pickupTime;
    String distance, estimateTime, carId;
    double baseFare, distanceFare, extraFare, subTotal;
    String paymentType;

    public Booking() {
    }
    
    public Booking(String id, String userId, String pickupLocation, String dropLocation, String pickupDate, String pickupTime, String distance, String estimateTime, String carId, double baseFare, double distanceFare, double extraFare, double subTotal, String paymentType) {
        this.id = id;
        this.userId = userId;
        this.pickupLocation = pickupLocation;
        this.dropLocation = dropLocation;
        this.pickupDate = pickupDate;
        this.pickupTime = pickupTime;
        this.distance = distance;
        this.estimateTime = estimateTime;
        this.carId = carId;
        this.baseFare = baseFare;
        this.distanceFare = distanceFare;
        this.extraFare = extraFare;
        this.subTotal = subTotal;
        this.paymentType = paymentType;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getPickupLocation() {
        return pickupLocation;
    }

    public void setPickupLocation(String pickupLocation) {
        this.pickupLocation = pickupLocation;
    }

    public String getDropLocation() {
        return dropLocation;
    }

    public void setDropLocation(String dropLocation) {
        this.dropLocation = dropLocation;
    }

    public String getPickupDate() {
        return pickupDate;
    }

    public void setPickupDate(String pickupDate) {
        this.pickupDate = pickupDate;
    }

    public String getPickupTime() {
        return pickupTime;
    }
    
    public long getPickupDateInMillis() {
        try {
            SimpleDateFormat sdf = new SimpleDateFormat("MM-dd-yyyy");
            return sdf.parse(pickupDate).getTime();
        } catch (ParseException ex) {
            Logger.getLogger(Booking.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }
    
    public long getPickupTimeInMillis() {
        try {
            SimpleDateFormat sdf = new SimpleDateFormat("HH-mm-ss");
            return sdf.parse(pickupTime).getTime();
        } catch (ParseException ex) {
            Logger.getLogger(Booking.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

    public void setPickupTime(String pickupTime) {
        this.pickupTime = pickupTime;
    }

    public String getDistance() {
        return distance;
    }

    public void setDistance(String distance) {
        this.distance = distance;
    }

    public String getEstimateTime() {
        return estimateTime;
    }

    public void setEstimateTime(String estimateTime) {
        this.estimateTime = estimateTime;
    }

    public String getCarId() {
        return carId;
    }

    public void setCarId(String carId) {
        this.carId = carId;
    }

    public double getBaseFare() {
        return baseFare;
    }

    public void setBaseFare(double baseFare) {
        this.baseFare = baseFare;
    }

    public double getDistanceFare() {
        return distanceFare;
    }

    public void setDistanceFare(double distanceFare) {
        this.distanceFare = distanceFare;
    }

    public double getExtraFare() {
        return extraFare;
    }

    public void setExtraFare(double extraFare) {
        this.extraFare = extraFare;
    }

    public double getSubTotal() {
        return subTotal;
    }

    public void setSubTotal(double subTotal) {
        this.subTotal = subTotal;
    }

    public String getPaymentType() {
        return paymentType;
    }

    public void setPaymentType(String paymentType) {
        this.paymentType = paymentType;
    }
}
