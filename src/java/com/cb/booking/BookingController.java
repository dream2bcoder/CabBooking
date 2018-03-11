package com.cb.booking;

import com.cb.db.DAO;
import com.cb.model.Booking;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author BASAK
 */
public class BookingController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String userId, pickupLocation, dropLocation, pickupDate, pickupTime;
        String distance, estimateTime, carId;
        double baseFare, distanceFare, extraFare, subTotal;
        String paymentType;

        try (PrintWriter out = response.getWriter()) {

            userId = request.getParameter("userid");
            if (userId != null && !userId.equals("")) {
                pickupLocation = request.getParameter("pickuploc");
                if (pickupLocation != null && !pickupLocation.equals("")) {
                    dropLocation = request.getParameter("droploc");
                    if (dropLocation != null && !dropLocation.equals("")) {
                        pickupDate = request.getParameter("pickupdate");
                        if (pickupDate != null && !pickupDate.equals("")) {
                            pickupTime = request.getParameter("pickuptime");
                            if (pickupTime != null && !pickupTime.equals("")) {
                                distance = request.getParameter("dist");
                                if (distance != null && !distance.equals("")) {
                                    estimateTime = request.getParameter("esttime");
                                    if (estimateTime != null && !estimateTime.equals("")) {
                                        carId = request.getParameter("carid");
                                        if (carId != null && !carId.equals("")) {
                                            paymentType = request.getParameter("paytype");
                                            if (paymentType != null && !paymentType.equals("")) {
                                                baseFare = getAmount(request.getParameter("bfare"));
                                                distanceFare = getAmount(request.getParameter("distfare"));
                                                extraFare = getAmount(request.getParameter("exfare"));
                                                subTotal = getAmount(request.getParameter("subfare"));
                                                
                                                Booking booking = new Booking(carId, userId, pickupLocation, dropLocation, pickupDate, pickupTime, distance, estimateTime, carId, baseFare, distanceFare, extraFare, subTotal, paymentType);
                                                if(DAO.instance().addBookingDetails(booking)) {
                                                    out.print("success");
                                                } else {
                                                    response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
                                                    out.print("error");
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    
    private double getAmount(String amtParam) {
        
        try {
            return amtParam != null && amtParam.equals("") ? 0 : Double.parseDouble(amtParam);
        } catch(NumberFormatException nfe) {
            
        }
        
        return 0;
    }
}
