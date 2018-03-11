<%-- 
Document   : Signup
Created on : Jul 8, 2017, 5:16:48 PM
Author     : BASAK
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Sign up</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.indigo-pink.min.css">
<link rel="stylesheet" href="../resources/Styles/Style.css">
<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700" type="text/css">
</head>
<body>
<div class="demo-layout-waterfall mdl-layout mdl-js-layout">
    <main class="mdl-layout__content">
        <div class="page-content">
            <div class="mdl-grid signup-grid">
                <div class="mdl-cell mdl-cell--6-col signup-left-side">
                    <div>
                        <h3>Make your booking more easy by creating an account</h3>
                    </div>
                </div>
                <div class="mdl-cell mdl-cell--6-col signup-right-side">
                    <div class="mdl-grid signup-content">
                        <div class="mdl-cell mdl-cell--12-col">
                            <h4 class="">Create an account</h4>
                        </div>
                        <div class="mdl-cell mdl-cell--6-col">
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                <input class="mdl-textfield__input" type="text" id="fname">
                                <label class="mdl-textfield__label" for="fname">First name</label>
                            </div>
                        </div>
                        <div class="mdl-cell mdl-cell--6-col">
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                <input class="mdl-textfield__input" type="text" id="lname">
                                <label class="mdl-textfield__label" for="lname">Last name</label>
                            </div>
                        </div>
                        <div class="mdl-cell mdl-cell--12-col">
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                <input class="mdl-textfield__input" type="text" id="addrs">
                                <label class="mdl-textfield__label" for="addrs">Address</label>
                            </div>
                        </div>
                        <div class="mdl-cell mdl-cell--6-col">
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                <input class="mdl-textfield__input" type="text" id="email" onblur="checkDuplicate()">
                                <label class="mdl-textfield__label" for="email">Email</label>
                            </div>
                            <span class="error-msg" id="duplicate-email-error"></span>
                        </div>
                        <div class="mdl-cell mdl-cell--6-col">
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                <input class="mdl-textfield__input" type="text" pattern="-?[0-9]*(\.[0-9]+)?" id="contct">
                                <label class="mdl-textfield__label" for="contct">Contact</label>
                                <span class="mdl-textfield__error">Contact must be a number!</span>
                            </div>
                        </div>
                        <div class="mdl-cell mdl-cell--12-col">
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                <input class="mdl-textfield__input" type="password" id="passwd">
                                <label class="mdl-textfield__label" for="passwd">Choose password</label>
                            </div>
                        </div>
                        <div class="mdl-cell mdl-cell--12-col">
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                <input class="mdl-textfield__input" type="password" id="passwdConfirm">
                                <label class="mdl-textfield__label" for="passwdConfirm">Confirm password</label>
                            </div>
                        </div>
                        <div class="mdl-cell mdl-cell--12-col text-right">
                            <button id="signup" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--colored">
                                create
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
</div>

<script src="../resources/Scripts/jquery-2.1.1.js"></script>
<script defer src="https://code.getmdl.io/1.3.0/material.min.js"></script>

<script>
    $(document).ready(function () {
        $('#signup').click(function () {
            alert();
            $.ajax({
                url: '${pageContext.request.contextPath}/session/signup.do',
                type: 'POST',
                data: {
                    fname: $('#fname').val(),
                    lname: $('#lname').val(),
                    addrs: $('#addrs').val(),
                    email: $('#email').val(),
                    contct: $('#contct').val(),
                    passwd: $('#passwd').val()
                },

                success: function (response) {
                    alert(response);
                },
                error: function (response, error) {
                    alert(error + ": " + response);
                }
            });
        });
    });

    function validEmail(email) {
        var pattern = /^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,4}$/;
        return email && email !== '' && String(email).match(pattern);
    }
    function checkDuplicate() {
        
        var email = $('#email').val();
        if (validEmail(email)) {
            $.ajax({
                url: '${pageContext.request.contextPath}/session/uniqueEmail.do',
                type: 'POST',
                data: {
                    email: email 
                },
                success: function (response) {
                    alert(response);
                    if(response === "false"){
                        $('.error-msg').show();
                        $('#duplicate-email-error').text("Email id already exist.Try another");
                    }
                    else{
                        $('.error-msg').hide();
                        $('#duplicate-email-error').text("");
                    }
                },
                error: function (response, error) {
                    alert(error + ": " + response);
                }
            });
        }
    }
</script>

</body>
</html>
