package com.cb.fare;

import com.cb.db.DAO;
import com.cb.model.Fare;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.Type;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author BASAK
 */
public class FareController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("application/json;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            Gson gson = new Gson();
            Type type = new TypeToken<List<Fare>>() {}.getType();
            
            String actionType = request.getParameter("action");
            if(null != actionType && actionType.equals("searchByCity")) {
                String cityName = request.getParameter("city");
                out.write(gson.toJson(DAO.instance().fetchFareByCity(cityName), type));
            } else {
                out.write(gson.toJson(DAO.instance().fetchFareDetails(), type));
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
}
