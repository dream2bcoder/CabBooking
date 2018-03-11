<%-- 
    Document   : Home
    Created on : Jul 8, 2017, 5:15:32 PM
    Author     : BASAK
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Title</title>
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
  <link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.indigo-pink.min.css">
  <link rel="stylesheet" href="../resources/Styles/Style.css">
  <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:300,400,500,700" type="text/css">
</head>
<body>

<div class="demo-layout-waterfall mdl-layout mdl-js-layout">
<%@include file="../WEB-INF/private/Layout/header.jspf" %>
  <main class="mdl-layout__content">
    <div class="page-content">

      <div class="mdl-grid welcome-banner">
        <div class="mdl-cell mdl-cell--12-col ">

          <h3>Welcome to google material design</h3>
          <p class="banner-sub-heading">Explore the varieties of components</p>
          <button class="mdl-button mdl-js-button mdl-button--fab mdl-button--colored read-more-btn">
            <i class="material-icons">keyboard_arrow_down</i>
          </button>
        </div>

      </div>

      <div class="mdl-grid components-wrapper">
        <div class="mdl-cell mdl-cell--6-col  section">
          <h2 class="section-component-heading">Make your journey <br> quick, easy and affordable</h2>
          <p></p>
        </div>
        <div class="mdl-cell mdl-cell--6-col  section">


        </div>
      </div>

      <div class="mdl-grid grid-2">
        <div class="mdl-cell mdl-cell--6-col travel-section section">
          <h2 class="section-component-heading">Longest distance <br> in shortest time</h2>
          <p class="section-para">Our cab follows the shortest route to your destination saving both your valuable time and money.</p>
        </div>
        <div class="mdl-cell mdl-cell--6-col  travel-section section">

        </div>
      </div>

      <div class="mdl-grid ">
        <div class="mdl-cell mdl-cell--6-col   section">
            <img src="../resources/Assets/Images/Untitled collage.jpg" />
        </div>
        <div class="mdl-cell mdl-cell--6-col   section">
          <h2 class="section-component-heading">Choose your own car</h2>
          <p class="section-para">Choose your favourite car from our wide range of collections.We also provide extra amenities like Music/MP3, Wifi, Charging point etc.</p>
          <p class="section-para">You can also track your cab from anywhere.</p>
          <button class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored">
            visit our gallery
          </button>
        </div>
      </div>

      <div class="mdl-grid grid-3">
        <div class="mdl-cell mdl-cell--12-col text-center  section">
          <h2 class="section-component-heading">Pay only for your journey. No waiting charge</h2>
          <p class="section-para">Choose your favourite car from our wide range of collections.We also provide extra amenities like Music/MP3, Wifi, Charging point etc.</p>

        </div>
      </div>

      <div class="mdl-grid ">
        <div class="mdl-cell mdl-cell--6-col section text-center">
            <img src="../resources/Assets/Images/payment-mockup.png" />
        </div>
        <div class="mdl-cell mdl-cell--6-col   section">
          <h2 class="section-component-heading">Go cashless</h2>
          <p class="section-para">Make your payment more easy and safe with our payment gateway.</p>
          <p class="section-para">You can pay your ride with Credit/Debit.</p>
        </div>
      </div>


      </div>
  </main>
</div>





<script defer src="https://code.getmdl.io/1.3.0/material.min.js"></script>
<script src="../resources/Scripts/data.js"></script>
<script>

  document.querySelector('#p3').addEventListener('mdl-componentupgraded', function() {
    this.MaterialProgress.setProgress(33);
    this.MaterialProgress.setBuffer(87);
  });
/* script for snackbar*/
  (function() {
    'use strict';
    var snackbarContainer = document.querySelector('#demo-snackbar-example');
    var showSnackbarButton = document.querySelector('#demo-show-snackbar');
    var handler = function(event) {
      showSnackbarButton.style.backgroundColor = '';
    };
    showSnackbarButton.addEventListener('click', function() {
      'use strict';
      showSnackbarButton.style.backgroundColor = '#' +
        Math.floor(Math.random() * 0xFFFFFF).toString(16);
      var data = {
        message: 'Button color changed.',
        timeout: 2000,
        actionHandler: handler,
        actionText: 'Undo'
      };
      snackbarContainer.MaterialSnackbar.showSnackbar(data);
    });
  }());

  window.onload = function() {
    buildTBody(table_data);
  }

  function buildTBody(data) {
    data.forEach( function(o) {
      var _tr = document.createElement('tr');
      Object.keys(o).forEach( function(h) {
        var _td = document.createElement('td');
        _td.innerHTML = o[h];
        _tr.appendChild(_td);
      });
      document.getElementsByTagName('tbody')[0].appendChild(_tr);
    })
  }
</script>
</body>
</html>
