package com.cb.sesson;

import java.io.IOException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Subhankar
 */
public class CookieController {
    
    private static final String VOLATILE_USER_ID = "_volatile_user_id";
    
    public static boolean isUserCookieExist(HttpServletRequest request) {
        return isCookieExist(request, VOLATILE_USER_ID);
    }
    
    public static boolean isCookieExist(HttpServletRequest request, String key) {
        Cookie[] cookies = request.getCookies();
        for(Cookie ck : cookies) {
            if(ck.getName().equalsIgnoreCase(key)) {
                return true;
            }
        }
        return false;
    }
    
    public static void createUserCookie(HttpServletRequest request, HttpServletResponse response, String userId) {
        createCookie(request, response, VOLATILE_USER_ID, userId, 3600);
    }
    
    public static void createCookie(HttpServletRequest request, HttpServletResponse response, String key, String value, int activeSeconds) {
        if(isCookieExist(request, key)) {
            destroyCookie(request, response, key);
        }
        Cookie ck = new Cookie(key, value);
        ck.setMaxAge(activeSeconds);
        ck.setPath(request.getContextPath());
        response.addCookie(ck);
    }
    
    public static void destroyUserCookie(HttpServletRequest request, HttpServletResponse response) {
        destroyCookie(request, response, VOLATILE_USER_ID);
    }
    
    public static void destroyCookie(HttpServletRequest request, HttpServletResponse response, String key) {
        Cookie[] cookies = request.getCookies();
        for(Cookie ck : cookies) {
            if(ck.getName().equalsIgnoreCase(key)) {
                ck.setMaxAge(-1);
                ck.setValue(null);
                ck.setPath(request.getContextPath());
                response.addCookie(ck);
            }
        }
    }
    
    public static boolean validateUserInfo(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String value = getCookieValue(request, response, VOLATILE_USER_ID);
        
        if(null != value && !value.isEmpty()) {
            response.sendRedirect(request.getContextPath() + "/session/login.do?uid=" + value);
            return true;
        }
        
        return false;
    }
    
    public static String getCookieValue(HttpServletRequest request, HttpServletResponse response, String key) throws IOException {
        Cookie[] cookies = request.getCookies();
        
        for(int i=0;null != cookies && i<cookies.length;i++) {
            if(cookies[i].getName().equalsIgnoreCase(key)) {
               return cookies[i].getValue();
            }
        }
        
        return null;
    }
}
