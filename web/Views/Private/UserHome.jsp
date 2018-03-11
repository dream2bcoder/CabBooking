<%-- 
    Document   : UserHome
    Created on : Jul 9, 2017, 1:59:05 AM
    Author     : BASAK
--%>

<%@page import="com.cb.model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    if( null == request.getSession(false) || null == request.getSession(false).getAttribute("account")) {
        response.sendRedirect(request.getContextPath() + "/Views/Login.jsp");
        return;
    }
%>

<% User user = (User) request.getSession(false).getAttribute("account"); %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>User account</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.indigo-pink.min.css">
        <link rel="stylesheet" href="../../resources/Styles/Account.css">
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700" type="text/css">
    </head>
    <body>
        <div class="demo-layout-waterfall mdl-layout mdl-js-layout">
            <header class="mdl-layout__header mdl-layout__header--waterfall">
                <!-- Top row, always visible -->
                <div class="mdl-layout__header-row">
                    <!-- Title -->
                    <span class="mdl-layout-title">Title</span>
                    <div class="mdl-layout-spacer">
                        <div class="search-group">
                            <div><i class="material-icons">search</i></div>
                            <div class="input-wrapper"><input type="text" class="search-input" placeholder="Search"/></div>
                        </div>
                        <div class="user-acc-group">
                            <i class="material-icons">account_circle</i>
                            <span><%= user.getFirstName() %></span>
                        </div>
                    </div>
                    
                </div>
                <!-- Bottom row, not visible on scroll -->
                <div class="mdl-layout__header-row">
                    <div class="mdl-layout-spacer"></div>
                    <!-- Navigation -->
                    <nav class="mdl-navigation">
                        <a class="mdl-navigation__link" href="">Link</a>
                        <a class="mdl-navigation__link" href="">Link</a>
                        <a class="mdl-navigation__link" href="">Link</a>
                        <a class="mdl-navigation__link" href="UserProfileInfo.jsp">Link</a>
                    </nav>
                </div>
            </header>
            <div class="mdl-layout__drawer">
                <span class="mdl-layout-title">Title</span>
                <nav class="mdl-navigation">
                    <a class="mdl-navigation__link" href=""><i class="material-icons">assignment</i> Book cab</a>
                    <a class="mdl-navigation__link" href=""><i class="material-icons">show_chart</i> Booking status</a>
                    <a class="mdl-navigation__link" href=""><i class="material-icons">assignment</i> Settings</a>
                    <a class="mdl-navigation__link" href=""><i class="material-icons">history</i> History</a>
                    <hr>
                    <a class="mdl-navigation__link" href=""><i class="material-icons">settings</i> Settings</a>
                    <a class="mdl-navigation__link" href=""><i class="material-icons">feedback</i> Send feedback</a>
                    <a class="mdl-navigation__link" href=""><i class="material-icons">help</i> Help</a>
                 
                </nav>
            </div>
            <main class="mdl-layout__content">
                <div class="page-content main-page">
                    <h4>Nothing here yet</h1>
                </div>
            </main>
        </div>




        <script src="../resources/Scripts/jquery-2.1.1.js"></script>
        <script defer src="https://code.getmdl.io/1.3.0/material.min.js"></script>
    </body>
</html>