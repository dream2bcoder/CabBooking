<%-- 
    Document   : UserHome
    Created on : Jul 9, 2017, 1:59:05 AM
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
        <title>Profile</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.indigo-pink.min.css">
        <link rel="stylesheet" href="../../resources/Styles/Style.css">
        <link rel="stylesheet" href="../../resources/Styles/Account.css">

        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:300,400,500,700" type="text/css">
    </head>
    <body>
        <div class="mdl-layout mdl-js-layout">
            <%@include file="../../WEB-INF/private/Layout/postloginheader.jspf" %>
            <main class="mdl-layout__content">
                <div class="page-content user-profile-wrapper"><!-- Your content goes here -->
                    <section class="mdl-grid profile-info">
                        <div class="mdl-cell mdl-cell--3-col">
                            <img src="../../resources/Assets/Images/profile-avatar-empty.png"  class="prof-avatar"/>
                        </div>
                        <div class="mdl-cell mdl-cell--9-col">
                            <h3>Demo Username</h3>
                            <h5 class="color-gray">Site@domainname.com</h5>
                        </div>

                    </section>

                    <section class="mdl-grid profile-info">
                        <div class="mdl-cell mdl-cell--11-col">
                            <span class="prof-heading">Personal info</span>
                        </div>
                        <div class="mdl-cell mdl-cell--1-col">
                            <button class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab expand-section" id="section1">
                                <i class="material-icons">expand_more</i>
                            </button>
                        </div>

                        <div class="mdl-grid pro-subsection" for="section1">
                            <div class="mdl-cell mdl-cell--5-col">
                                <label>First name</label>
                                <div class="mdl-textfield mdl-js-textfield">
                                    <input class="mdl-textfield__input" type="text" id="sample1">
                                    <label class="mdl-textfield__label" for="sample1">Text...</label>
                                </div>
                            </div>
                            <div class="mdl-cell mdl-cell--5-col">
                                <label>Last name</label>
                                <div class="mdl-textfield mdl-js-textfield">
                                    <input class="mdl-textfield__input" type="text" id="sample1">
                                    <label class="mdl-textfield__label" for="sample1">Text...</label>
                                </div>
                            </div>
                            <div class="mdl-cell mdl-cell--10-col">
                                <label>Email</label>
                                <div class="mdl-textfield mdl-js-textfield">
                                    <input class="mdl-textfield__input" type="text" id="sample1">
                                    <label class="mdl-textfield__label" for="sample1">Text...</label>
                                </div>
                            </div>

                            <div class="mdl-cell mdl-cell--4-col">
                                <label>Birthday</label>
                                <div class="mdl-textfield mdl-js-textfield width40">
                                    <input class="mdl-textfield__input" type="text" id="sample1">
                                    <label class="mdl-textfield__label" for="sample1">DD</label>
                                </div>
                                <div class="mdl-textfield mdl-js-textfield width40">
                                    <input class="mdl-textfield__input" type="text" id="sample1">
                                    <label class="mdl-textfield__label" for="sample1">MM</label>
                                </div>
                                <div class="mdl-textfield mdl-js-textfield width60">
                                    <input class="mdl-textfield__input" type="text" id="sample1">
                                    <label class="mdl-textfield__label" for="sample1">YYYY</label>
                                </div>
                            </div>
                            <div class="mdl-cell mdl-cell--3-col">
                                <label>Gender</label>

                            </div>
                            <div class="mdl-cell mdl-cell--3-col">
                                <label>Nationality</label>
                            </div>

                            <div class="mdl-cell mdl-cell--10-col text-right">
                                <button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect ">
                                    cancel
                                </button>
                                <button class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored mdl-js-ripple-effect marg-l20">
                                    save
                                </button>
                            </div>
                        </div>
                    </section>

                    <section class="mdl-grid profile-info">
                        <div class="mdl-cell mdl-cell--11-col">
                            <span class="prof-heading">Contact info</span>
                        </div>
                        <div class="mdl-cell mdl-cell--1-col">
                            <button class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab expand-section" id="section2">
                                <i class="material-icons">expand_more</i>
                            </button>
                        </div>
                        <div class="mdl-grid pro-subsection" for="section2">
                            <div class="mdl-cell mdl-cell--10-col">
                                <label>Permanent address</label>
                                <div class="mdl-textfield mdl-js-textfield">
                                    <input class="mdl-textfield__input" type="text" id="sample1">
                                    <label class="mdl-textfield__label" for="sample1">Text...</label>
                                </div>
                            </div>
                            <div class="mdl-cell mdl-cell--4-col">
                                <label>Phone no</label>
                                <div class="mdl-textfield mdl-js-textfield">
                                    <input class="mdl-textfield__input" type="text" id="sample1">
                                    <label class="mdl-textfield__label" for="sample1">Text...</label>
                                </div>
                            </div>
                            <div class="mdl-cell mdl-cell--3-col">
                                <label>Country</label>
                                <div class="mdl-textfield mdl-js-textfield">
                                    <input class="mdl-textfield__input" type="text" id="sample1">
                                    <label class="mdl-textfield__label" for="sample1">Text...</label>
                                </div>
                            </div>
                            <div class="mdl-cell mdl-cell--3-col">
                                <label>State</label>
                                <div class="mdl-textfield mdl-js-textfield">
                                    <input class="mdl-textfield__input" type="text" id="sample1">
                                    <label class="mdl-textfield__label" for="sample1">Text...</label>
                                </div>
                            </div>
                            <div class="mdl-cell mdl-cell--10-col text-right">
                                <button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect ">
                                    cancel
                                </button>
                                <button class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored mdl-js-ripple-effect marg-l20">
                                    save
                                </button>
                            </div>
                        </div>
                    </section>
                    <section class="mdl-grid profile-info">
                        <div class="mdl-cell mdl-cell--11-col">
                            <span class="prof-heading">Security</span>
                        </div>
                        <div class="mdl-cell mdl-cell--1-col">
                            <button class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab expand-section" id="section3">
                                <i class="material-icons">expand_more</i>
                            </button>
                        </div>
                        <div class="mdl-grid pro-subsection" for="section3">
                            <div class="mdl-cell mdl-cell--12-col">
                                <label>Password</label>
                                <p>We keep your password protected from other users.You can change your password any time from here.</p>
                                <a class="text-link" onclick="openModalPopup('changePassword');">Change password</a>
                            </div>
                        </div>
                    </section>
                </div>




                <div class="dialog-wrapper" id="changePassword">
                    <div class="mdl-grid dialog-main confirmation-dialog">
                        <div class="mdl-cell mdl-cell--12-col dialog-header">
                            <h3 class="modal-title">Change your password</h3>
                        </div>
                        <div class="mdl-cell mdl-cell--12-col dialog-body">
                            <p>First verify it's you</p>
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                <input class="mdl-textfield__input required" type="password" id="sample3">
                                <label class="mdl-textfield__label" for="sample3">Old password</label>
                            </div>
                            <p>Set new password</p>
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                <input class="mdl-textfield__input required" type="password" id="sample3">
                                <label class="mdl-textfield__label" for="sample3">New password</label>
                            </div>
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                <input class="mdl-textfield__input required" type="password" id="sample3">
                                <label class="mdl-textfield__label" for="sample3">Re-enter new password</label>
                            </div>
                        </div>
                        <div class="mdl-cell mdl-cell--12-col dialog-footer text-right">
                            <button class="text-link">CANCEL</button>
                            <button class="text-link">SAVE</button>
                        </div>
                    </div>
                </div>


                <div class="dialog-wrapper" id="uploadPhotoModal">
                    <div class="mdl-grid dialog-main confirmation-dialog">
                        <div class="mdl-cell mdl-cell--12-col dialog-header">
                            <h3 class="modal-title">Choose profile photo</h3>
                        </div>
                        <div class="mdl-cell mdl-cell--12-col dialog-body">
                            <input type="file" id="input-file-now-custom-2" class="dropify"  />
                        </div>
                        <div class="mdl-cell mdl-cell--12-col dialog-footer text-right">
                            <button class="text-link">CANCEL</button>
                            <button class="text-link">REMOVE</button>
                        </div>
                    </div>
                </div>
            </main>
        </div>




        <script defer src="https://code.getmdl.io/1.3.0/material.min.js"></script>
        <script src="https://cdn.bootcss.com/jquery/1.9.0/jquery.min.js"></script>
        <script src="../../resources/Scripts/dropify.min.js"></script>
        <script src="../../resources/Scripts/basic-utility.js"></script>
        <script src="../../resources/Scripts/modal-script.js"></script>
        <script>
                                    $(document).ready(function () {
                                        // Basic

                                        $('.profile-edit-btn').click(function () {
                                            $(this).parent('.profile-subsection').animate({'background': 'white'}, 500);
                                            $(this).parent('.profile-subsection').children(".profile-info-txt").removeClass("disabled");
                                        });

                                        $('.dropify').dropify();

                                        // Translated
                                        $('.dropify-fr').dropify({
                                            messages: {
                                                default: 'Glissez-déposez un fichier ici ou cliquez',
                                                replace: 'Glissez-déposez un fichier ou cliquez pour remplacer',
                                                remove: 'Supprimer',
                                                error: 'Désolé, le fichier trop volumineux'
                                            }
                                        });

                                        // Used events
                                        var drEvent = $('#input-file-events').dropify();

                                        drEvent.on('dropify.beforeClear', function (event, element) {
                                            return confirm("Do you really want to delete \"" + element.file.name + "\" ?");
                                        });

                                        drEvent.on('dropify.afterClear', function (event, element) {
                                            alert('File deleted');
                                        });

                                        drEvent.on('dropify.errors', function (event, element) {
                                            console.log('Has Errors');
                                        });

                                        var drDestroy = $('#input-file-to-destroy').dropify();
                                        drDestroy = drDestroy.data('dropify')
                                        $('#toggleDropify').on('click', function (e) {
                                            e.preventDefault();
                                            if (drDestroy.isDropified()) {
                                                drDestroy.destroy();
                                            } else {
                                                drDestroy.init();
                                            }
                                        });
                                        $('.expand-section').click(function () {
                                            var id = $(this).attr('id');
                                            $('div[for="' + id + '"').toggleClass('expanded');
                                        });
                                    });
        </script>

    </body>
</html>