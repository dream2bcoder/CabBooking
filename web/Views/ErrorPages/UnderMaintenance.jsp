<%-- 
    Document   : UnderMaintenance
    Created on : Aug 30, 2017, 2:02:01 PM
    Author     : BASAK-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Maintenance Page</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.indigo-pink.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/Styles/Style.css">
    </head>
    <body bgcolor="#777">
        <main class="mdl-layout__content maintain-page">
            <div class="page-content maintain-page">
                <div class="mdl-grid ">
                    <div class="mdl-cell mdl-cell--12-col text-center">
                        <img src="../../resources/Assets/Images/maintenance-icon.png" class="maintain-logo"/>
                    </div>
                    <div class="mdl-cell mdl-cell--12-col text-center">
                        <h3>This page is under maintainance</h3>
                        <p>We are working on some new features on this page.</br>We wil be back soon.</p>
                        <button class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored">
                            back to our main site
                        </button>
                    </div>
                </div>
            </div>
        </main>
        
        <script defer src="https://code.getmdl.io/1.3.0/material.min.js"></script>
        <script src="https://cdn.bootcss.com/jquery/1.9.0/jquery.min.js"></script>
    </body>

</html>
