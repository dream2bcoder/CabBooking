package com.cb.model;

/**
 *
 * @author BASAK
 */
public class Car {
    int id;
    String carType, carModel, carName;
    String carImageURI;

    public Car() {
    }

    public Car(int id, String carType, String carModel, String carName, String carImageURI) {
        this.id = id;
        this.carType = carType;
        this.carModel = carModel;
        this.carName = carName;
        this.carImageURI = carImageURI;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCarType() {
        return carType;
    }

    public void setCarType(String carType) {
        this.carType = carType;
    }

    public String getCarModel() {
        return carModel;
    }

    public void setCarModel(String carModel) {
        this.carModel = carModel;
    }

    public String getCarName() {
        return carName;
    }

    public void setCarName(String carName) {
        this.carName = carName;
    }

    public String getCarImageURI() {
        return carImageURI;
    }

    public void setCarImageURI(String carImageURI) {
        this.carImageURI = carImageURI;
    }
}
