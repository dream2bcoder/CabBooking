<%-- 
    Document   : error
    Created on : Aug 25, 2017, 5:37:03 PM
    Author     : BASAK-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error Page</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.indigo-pink.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/Styles/Style.css">
    </head>
    <body>
        <main class="mdl-layout__content error-page">
            <div class="page-content error-page">
                <div class="mdl-grid ">
                    <div class="mdl-cell mdl-cell--12-col text-center">
                        <img src="../../resources/Assets/Images/page-error.png" class="error-logo"/>
                    </div>
                    <div class="mdl-cell mdl-cell--12-col text-center">
                        <h3>Oops! Something went wrong</h3>
                        <p>We face some difficulty in processing your request.Try again</p>
                        <h5>ERROR:</h5>
                    </div>
                </div>
            </div>
        </main>
    </body>
</html>
