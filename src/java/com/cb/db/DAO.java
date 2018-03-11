package com.cb.db;

import com.cb.model.Booking;
import com.cb.model.Car;
import com.cb.model.Fare;
import com.cb.model.User;
import java.io.Serializable;

import java.math.BigDecimal;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
//import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Time;
import java.util.ArrayList;
import java.util.List;

import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Subhankar
 */
public class DAO implements Serializable, AutoCloseable {

    private Connection db = null;
    private PreparedStatement pstmt = null;
    private ResultSet rs = null;

    public boolean isIdExists(String numaricId, String tableName) {
        boolean idExist = false;

        try {
            open();
            BigDecimal id = new BigDecimal(numaricId);
            String sql = "SELECT * FROM " + tableName + " WHERE id = ?";

            pstmt = db.prepareStatement(sql);
            pstmt.setBigDecimal(1, id);
            rs = pstmt.executeQuery();

            if (null != rs && rs.next()) {
                idExist = true;
            }

        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return idExist;
    }
    
    public boolean isEmailExists(String email) {
        boolean exist = false;

        try {
            open();

            pstmt = db.prepareStatement(QueryStrings.Q_USR_EMAILID_EXIST);
            pstmt.setString(1, email);
            rs = pstmt.executeQuery();

            if (null != rs && rs.next()) {
                exist = true;
            }

        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return exist;
    }

    public boolean createNewUser(User user) {
        boolean isCreated = false;

        try {
            open();

            pstmt = db.prepareStatement(QueryStrings.I_USR_INFO);

            pstmt.setString(1, user.getId());
            pstmt.setString(2, user.getFirstName());
            pstmt.setString(3, user.getLastName());
            pstmt.setString(4, user.getGender());
            pstmt.setString(5, user.getEmail());
            pstmt.setString(6, user.getContact());
            pstmt.setString(7, user.getAddress());
            pstmt.setString(8, user.getPassword());

            if (pstmt.executeUpdate() > 0) {
                db.commit();
                isCreated = true;
            } else {
                db.rollback();
            }

        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        releaseOtherResources();
        return isCreated;
    }
    
    public boolean addBookingDetails(Booking booking) {
        boolean isCreated = false;

        try {
            open();

            pstmt = db.prepareStatement(QueryStrings.I_BOOKING_INFO);

            pstmt.setString(1, booking.getId());
            pstmt.setString(2, booking.getUserId());
            pstmt.setString(3, booking.getPickupLocation());
            pstmt.setString(4, booking.getDropLocation());
            pstmt.setDate(5, new Date(booking.getPickupDateInMillis()));
            pstmt.setTime(6, new Time(booking.getPickupTimeInMillis()));
            pstmt.setString(7, booking.getDistance());
            pstmt.setString(8, booking.getEstimateTime());
            pstmt.setString(9, booking.getCarId());
            pstmt.setDouble(10, booking.getBaseFare());
            pstmt.setDouble(11, booking.getDistanceFare());
            pstmt.setDouble(12, booking.getExtraFare());
            pstmt.setDouble(13, booking.getSubTotal());
            pstmt.setString(14, booking.getPaymentType());

            if (pstmt.executeUpdate() > 0) {
                db.commit();
                isCreated = true;
            } else {
                db.rollback();
            }

        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        releaseOtherResources();
        return isCreated;
    }

   public User fetchLoginDetails(String userId) {
        User user = new User();
        user.setId(userId);
        return fetchLoginDetails(user, true);
    }
    
    public User fetchLoginDetails(User user) {
        return fetchLoginDetails(user, false);
    }

    private User fetchLoginDetails(User user, boolean authenticateUsingId) {
        //boolean isCreated = false;

        try {
            open();

            if(!authenticateUsingId) {
                if (user.getContact() != null) {
                    pstmt = db.prepareStatement(QueryStrings.Q_USR_INFO_PH);
                    pstmt.setString(1, user.getContact());
                } else {
                    pstmt = db.prepareStatement(QueryStrings.Q_USR_INFO_EM);
                    pstmt.setString(1, user.getEmail());
                }

                pstmt.setString(2, user.getPassword());
            } else {
                if(user.getId() != null) {
                    pstmt = db.prepareStatement(QueryStrings.Q_USR_INFO_ID);
                    pstmt.setString(1, user.getId());
                } else {
                    releaseOtherResources();
                    return null;
                }
            }

            if ((rs = pstmt.executeQuery()) != null) {
                if (rs.next()) {
                    user.setId(rs.getString("usrid"));
                    user.setFirstName(rs.getString("fname"));
                    user.setLastName(rs.getString("lname"));
                    user.setEmail(rs.getString("email"));
                    user.setContact(rs.getString("contact"));
                    user.setAddress(rs.getString("address"));
                    user.setPassword("");

                    releaseOtherResources();
                    return user;
                }
            }

        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        releaseOtherResources();
        return null;
    }

    public List<Fare> fetchFareDetails() {
        List<Fare> fareDetails = new ArrayList<>();

        try {
            open();

            pstmt = db.prepareStatement(QueryStrings.Q_FARE_INFO);

            if ((rs = pstmt.executeQuery()) != null) {
                Fare fare;
                while (rs.next()) {
                    fare = new Fare();
                    fare.setId(rs.getString("id"));
                    fare.setCity(rs.getString("city"));
                    fare.setFareType(rs.getString("fare_type"));
                    fare.setBaseFare(rs.getString("base_fare"));
                    fare.setDistFare(rs.getString("dist_fare"));
                    fare.setRideTimeFare(rs.getString("ride_t_fare"));
                    fare.setCancelFee(rs.getString("cancel_fee"));
                    fareDetails.add(fare);
                }

                releaseOtherResources();
                return fareDetails;
            }

        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        releaseOtherResources();
        return null;
    }

    public List<Car> fetchCarsDetails() {
        List<Car> carsDetails = new ArrayList<>();

        try {
            open();

            pstmt = db.prepareStatement(QueryStrings.Q_CARS_INFO);

            if ((rs = pstmt.executeQuery()) != null) {
                Car car;
                while (rs.next()) {
                    car = new Car();
                    car.setId(rs.getInt("car_id"));
                    car.setCarType(rs.getString("car_type"));
                    car.setCarModel(rs.getString("car_model"));
                    car.setCarName(rs.getString("car_name"));
                    car.setCarImageURI(rs.getString("car_image"));
                    carsDetails.add(car);
                }

                releaseOtherResources();
                return carsDetails;
            }

        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        releaseOtherResources();
        return null;
    }
    
    public List<Fare> fetchFareByCity(String cityName) {
        List<Fare> fareDetails = new ArrayList<>();

        try {
            open();

            pstmt = db.prepareStatement(QueryStrings.Q_FARE_INFO_BY_CITY);

            pstmt.setString(1, cityName);
            
            if ((rs = pstmt.executeQuery()) != null) {
                Fare fare;
                while (rs.next()) {
                    fare = new Fare();
                    fare.setId(rs.getString("id"));
                    fare.setCity(rs.getString("city"));
                    fare.setFareType(rs.getString("fare_type"));
                    fare.setBaseFare(rs.getString("base_fare"));
                    fare.setDistFare(rs.getString("dist_fare"));
                    fare.setRideTimeFare(rs.getString("ride_t_fare"));
                    fare.setCancelFee(rs.getString("cancel_fee"));
                    fareDetails.add(fare);
                }

                releaseOtherResources();
                return fareDetails;
            }

        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        releaseOtherResources();
        return null;
    }

    private void releaseOtherResources() {
        release(false, true, true);
    }
    
    public void release() {
        release(true, true, true);
    }

    private void release(boolean closeConnection, boolean closePreparedStatement, boolean closeResultSet) {
        release(closeConnection ? db : null, closePreparedStatement ? pstmt : null, closeResultSet ? rs : null);
    }

    private void release(Connection connection, PreparedStatement preparedStatement, ResultSet resultSet) {

        if (resultSet != null) {
            try {
                rs.close();
            } catch (SQLException ex) {
                rs = null;
            }
        }

        if (preparedStatement != null) {
            try {
                pstmt.close();
            } catch (SQLException ex) {
                pstmt = null;
            }
        }

        if (connection != null) {
            try {
                db.close();
            } catch (SQLException ex) {
                db = null;
            }
        }
    }

    /* =================================================== X =================================================== */
    public static boolean isConnectionOK() {
        boolean isOK = false;
        try {
            isOK = DAO.instance().open() != null;
            //DAO.instance().close();
        } catch (Exception ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return isOK;
    }

    @Override
    public void close() throws Exception {
        release(true, true, true);
        System.out.println("connection closed...");
    }

    public final Connection open() throws SQLException {
        if (null == db) {
            db = DBProvider.instance().getConnection();
            db.setAutoCommit(false);
            System.out.println("connection opened...");
        }
        return db;
    }

    public static DAO instance() {
        if (null == dao) {
            dao = new DAO();
        }
        return dao;
    }

    private static DAO dao = null;

}
