<%-- 
    Document   : Cars
    Created on : Jul 8, 2017, 5:17:27 PM
    Author     : BASAK
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Cars</title>
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
      <section class="mdl-grid cars-banner">
        <div class="mdl-grid">
          <div class="mdl-cell mdl-cell--12-col">
            <h2 class="section-component-heading">Our Cars</h2>
          </div>
        </div>
        <div class="mdl-grid car-type-row">
          <div class="mdl-cell mdl-cell--12-col car-type-header cl29586C">
            <h5 class="site-subheading ">Luxury</h5>
          </div>
          <div class="mdl-cell mdl-cell--12-col card-component-row">
            <div class="mdl-cell mdl-cell--3-col demo-card-square mdl-card mdl-shadow--2dp">
              <div class="mdl-card__title mdl-card--expand car_bmw">
                <h2 class="mdl-card__title-text">BMW</h2>
              </div>
              <div class="mdl-card__supporting-text">
                Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                Aenan convallis.
              </div>
            </div>

            <div class=" mdl-cell mdl-cell--3-col demo-card-square mdl-card mdl-shadow--2dp">
              <div class="mdl-card__title mdl-card--expand car_bmw">
                <h2 class="mdl-card__title-text">BMW</h2>
              </div>
              <div class="mdl-card__supporting-text">
                Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                Aenan convallis.
              </div>
            </div>

            <div class=" mdl-cell mdl-cell--3-col demo-card-square mdl-card mdl-shadow--2dp">
              <div class="mdl-card__title mdl-card--expand car_bmw">
                <h2 class="mdl-card__title-text">BMW</h2>
              </div>
              <div class="mdl-card__supporting-text">
                Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                Aenan convallis.
              </div>
            </div>

            <div class=" mdl-cell mdl-cell--3-col demo-card-square mdl-card mdl-shadow--2dp">
              <div class="mdl-card__title mdl-card--expand car_bmw">
                <h2 class="mdl-card__title-text">BMW</h2>
              </div>
              <div class="mdl-card__supporting-text">
                Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                Aenan convallis.
              </div>
            </div>

            <button class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect  read-more-btn cl29586C">
              <i class="material-icons">keyboard_arrow_down</i>
            </button>
          </div>
          <p class="view-all">View all</p>
        </div>
        <div class="mdl-grid car-type-row">
          <div class="mdl-cell mdl-cell--12-col car-type-header clD2A456">
            <h5 class="site-subheading">Luxury</h5>
          </div>
          <div class="mdl-cell mdl-cell--12-col card-component-row">
            <div class="mdl-cell mdl-cell--3-col demo-card-square mdl-card mdl-shadow--2dp">
              <div class="mdl-card__title mdl-card--expand car_bmw">
                <h2 class="mdl-card__title-text">BMW</h2>
              </div>
              <div class="mdl-card__supporting-text">
                Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                Aenan convallis.
              </div>
            </div>

            <div class=" mdl-cell mdl-cell--3-col demo-card-square mdl-card mdl-shadow--2dp">
              <div class="mdl-card__title mdl-card--expand car_bmw">
                <h2 class="mdl-card__title-text">BMW</h2>
              </div>
              <div class="mdl-card__supporting-text">
                Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                Aenan convallis.
              </div>
            </div>

            <button class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect clD2A456 read-more-btn">
              <i class="material-icons">keyboard_arrow_down</i>
            </button>
          </div>
          <p class="view-all">View all</p>
        </div>
        <div class="mdl-grid car-type-row">
          <div class="mdl-cell mdl-cell--12-col">
            <h5 class="site-subheading">Luxury</h5>
          </div>
          <div class="mdl-cell mdl-cell--12-col card-component-row">
            <div class="mdl-cell mdl-cell--3-col demo-card-square mdl-card mdl-shadow--2dp">
              <div class="mdl-card__title mdl-card--expand car_bmw">
                <h2 class="mdl-card__title-text">BMW</h2>
              </div>
              <div class="mdl-card__supporting-text">
                Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                Aenan convallis.
              </div>
            </div>

            <div class=" mdl-cell mdl-cell--3-col demo-card-square mdl-card mdl-shadow--2dp">
              <div class="mdl-card__title mdl-card--expand car_bmw">
                <h2 class="mdl-card__title-text">BMW</h2>
              </div>
              <div class="mdl-card__supporting-text">
                Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                Aenan convallis.
              </div>
            </div>

            <button class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored read-more-btn">
              <i class="material-icons">keyboard_arrow_down</i>
            </button>
          </div>
          <p class="view-all">View all</p>
        </div>
      </section>
    </div>
  </main>
</div>

<script defer src="https://code.getmdl.io/1.3.0/material.min.js"></script>
<script src="../resources/Scripts/data.js"></script>

</body>
</html>
