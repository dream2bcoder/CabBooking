/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cb.filter;

import com.cb.sesson.CookieController;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Subhankar
 */
public class AuthenticationFilter implements Filter {
    
    public AuthenticationFilter() {
    }    

    /**
     *
     * @param request The servlet request we are processing
     * @param response The servlet response we are creating
     * @param chain The filter chain we are processing
     *
     * @exception IOException if an input/output error occurs
     * @exception ServletException if a servlet error occurs
     */
    @Override
    public void doFilter(ServletRequest request, ServletResponse response,
            FilterChain chain)
            throws IOException, ServletException {
        
        HttpSession session = ((HttpServletRequest) request).getSession(false);
        
        if(null == session || session.getAttribute("account") == null) {
            if(CookieController.validateUserInfo((HttpServletRequest) request, (HttpServletResponse) response)) 
                return;
            ((HttpServletResponse) response).sendRedirect(((HttpServletRequest) request).getContextPath() + "/Views/Login.jsp");
        } else {
            chain.doFilter(request, response);
        }
    }

    /**
     * Destroy method for this filter
     */
    @Override
    public void destroy() {        
    }

    /**
     * Init method for this filter
     * @param filterConfig
     */
    @Override
    public void init(FilterConfig filterConfig) {        
        
    }
}
