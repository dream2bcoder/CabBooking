<%-- 
    Document   : Dashboard
    Created on : Jul 29, 2017, 5:06:27 PM
    Author     : BASAK
--%>
<%@page import="com.cb.model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    if (null == request.getSession(false) || null == request.getSession(false).getAttribute("account")) {
        response.sendRedirect(request.getContextPath() + "/Views/Login.jsp");
        return;
    }
%>

<% User user = (User) request.getSession(false).getAttribute("account");%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Dashboard</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.indigo-pink.min.css">
        <link rel="stylesheet" href="../../resources/Styles/Style.css">
        <link rel="stylesheet" href="../../resources/Styles/Account.css">

        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:300,400,500,700" type="text/css">
    </head>
    <body bgcolor="#f1f1f1">
        <div class="mdl-layout mdl-js-layout">
            <%@include file="../../WEB-INF/private/Layout/postloginheader.jspf" %>
            <main class="mdl-layout__content">
                <div class="page-content"><!-- Your content goes here -->
                    <section class="mdl-grid dashboard-section">

                        <div class="fl-right">
                            <div class="demo-card-event mdl-card mdl-shadow--2dp">
                                <div class="mdl-card__title ">
                                    <h4>Succesfull trip</h4>
                                </div>
                                <div class="mdl-card__actions">
                                    <h3><i class="material-icons">done_all</i> <span class="fl-right">235</span></h3>
                                    <div class="mdl-layout-spacer"></div>
                                    <hr>
                                    <a href="" class="text-link ">VIEW DETAILS</a>
                                </div>
                            </div>

                            <div class="demo-card-event mdl-card mdl-shadow--2dp">
                                <div class="mdl-card__title ">
                                    <h4>Cancelled trip</h4>
                                </div>
                                <div class="mdl-card__actions">
                                    <h3><i class="material-icons">clear</i> <span class="fl-right">35</span></h3>
                                    <div class="mdl-layout-spacer"></div>
                                    <hr>
                                    <a href="" class="text-link ">VIEW DETAILS</a>
                                </div>
                            </div>
                        </div>

                        <div class="fl-left">
                            <div class="demo-card-event mdl-card mdl-shadow--2dp">
                                <div class="mdl-card__title ">
                                    <h4>Featured services</h4>
                                </div>
                                <div class="mdl-card__actions">
                                    <h3><i class="material-icons">clear</i> <span class="fl-right">35</span></h3>
                                    <div class="mdl-layout-spacer"></div>
                                    <hr>
                                    <a href="" class="text-link ">VIEW DETAILS</a>
                                </div>
                            </div>

                            <div class="demo-card-event mdl-card mdl-shadow--2dp">
                                <div class="mdl-card__title ">
                                    <h4>Your upcoming trip</h4>
                                </div>
                                <div class="mdl-card__actions">
                                    <h6 class="text-center"><span >You have no upcoming trip right now</span></h6>
                                    <div class="mdl-layout-spacer"></div>

                                </div>
                            </div>

                            <div class="demo-card-event mdl-card mdl-shadow--2dp">
                                <div class="mdl-card__title ">
                                    <h4>Your previous trip</h4>
                                </div>
                                <div class="mdl-card__actions">
                                    <h3><i class="material-icons">clear</i> <span class="fl-right">35</span></h3>
                                    <div class="mdl-layout-spacer"></div>
                                    <hr>
                                    <a href="" class="text-link ">VIEW DETAILS</a>
                                </div>
                            </div>
                        </div>

                        <div class="fl-left marg-lf">
                            <div class="demo-card-event mdl-card mdl-shadow--2dp news-card">
                                <div class="mdl-card__title ">
                                    <h4>Whats on news</h4>
                                </div>
                                <div class="mdl-card__actions">
                                    <h3><i class="material-icons">clear</i> <span class="fl-right">35</span></h3>
                                    <div class="mdl-layout-spacer"></div>
                                    <hr>
                                    <a href="" class="text-link ">VIEW DETAILS</a>
                                </div>
                            </div>

                        </div>
                    </section>

                </div>
            </main>
        </div>




        <script defer src="https://code.getmdl.io/1.3.0/material.min.js"></script>
        <script src="https://cdn.bootcss.com/jquery/1.9.0/jquery.min.js"></script>
        <script src="../../resources/Scripts/basic-utility.js"></script>
    </body>
</html>