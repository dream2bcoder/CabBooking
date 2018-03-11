<%-- 
    Document   : Tariff
    Created on : Jul 8, 2017, 5:17:15 PM
    Author     : BASAK
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Tariff</title>
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
  <link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.indigo-pink.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/Styles/Style.css">
  <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:300,400,500,700" type="text/css">
</head>
<body bgcolor="#f3f3f3">
<div class="demo-layout-waterfall mdl-layout mdl-js-layout">
<%@include file="../WEB-INF/private/Layout/header.jspf" %>

  <main class="mdl-layout__content">
    <div class="page-content">
      <section class="mdl-grid tariff-banner">
        <div class="mdl-grid">
          <div class="mdl-cell mdl-cell--12-col">
            <h2 class="section-component-heading">Our Tariff</h2>
          </div>
          <div class="mdl-cell mdl-cell--12-col">
            <span class="city-name">Chennai</span>
          </div>

          <!--Standard fare grid-->
          <div class="mdl-cell mdl-cell--12-col">
            <h5 class="site-subheading">Standard fare</h5>
            <table class="mdl-data-table mdl-js-data-table mdl-data-table--selectable mdl-shadow--2dp">
              <thead>
              <tr>
                <th class="mdl-data-table__cell--non-numeric">Categorie</th>
                <th>Base fare</th>
                <th>Distance fare</th>
                <th>Ride time fare</th>
                <th>Cancellation fee</th>
              </tr>
              </thead>
              <tbody></tbody>
            </table>
          </div>

          <!--special fare grid-->
          <div class="mdl-cell mdl-cell--12-col">
            <h5 class="site-subheading">Special fare</h5>
            <table class="city-grid mdl-data-table mdl-js-data-table mdl-data-table--selectable mdl-shadow--2dp ">
              <thead>
              <tr>
                <th class="mdl-data-table__cell--non-numeric">Categorie</th>
                <th>Base fare</th>
                <th>Distance fare</th>
                <th>Ride time fare</th>
                <th>Cancellation fee</th>
              </tr>
              </thead>
              <tbody></tbody>
            </table>
          </div>
        </div>
      </section>
    </div>

    <div class="dialog-wrapper">

      <div class="mdl-grid dialog-main">
        <div class="mdl-cell mdl-cell--12-col dialog-header">
          <h3 class="modal-title">Select a city</h3>
        </div>

        <div class="mdl-cell mdl-cell--12-col dialog-body">
          <ul class="demo-list-item mdl-list" id="city">

          </ul>
        </div>
      </div>
    </div>

    <button class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect more-filter">
      <i class="material-icons">filter_list</i>
    </button>
  </main>
</div>


<script src="../resources/Scripts/jquery-2.1.1.js"></script>
<script defer src="https://code.getmdl.io/1.3.0/material.min.js"></script>
<script src="../resources/Scripts/data.js"></script>
<script src="../resources/Scripts/basic-utility.js"></script>
<script>
  window.onload = function() {
    //(table_data);
    //populateList(city_list);
  };
  
  $(document).ready( function() {
     $.ajax({
         url: '${pageContext.request.contextPath}/farechart.do',
         success: function(response) {
             buildTBody(response);
             populateList(response);
             alert(1);
         },
         error: function(response, error) {
             alert(error);
         }
     }); 
     
     $(document).on('click','.city_item',function(){
        var currentCity = ($(this).text());
        $.ajax({
         url: '${pageContext.request.contextPath}/farechart.do?action=searchByCity&city='+ $(this).text() ,
         success: function(response) {
            $('.mdl-data-table tbody').html('');
            buildTBody(response);
           
            alert(response);
             //populateList(response);
         },
         error: function(response, error) {
             alert(error);
         },
         complete: function(){
             $('.city-name').text(currentCity);
         }
     }); 
    });
  });
  
  function sortBy(data, sortField, asc) {
    if(asc === undefined) asc = true;
    if(data instanceof Array) {
        return data.sort( function(d1, d2) {
            return d1[sortField].toString().localeCompare(d2[sortField].toString()) * (asc ? 1 : -1);
        });
    }
    return data;
  }
  
  function removeDuplicates(data, dataField) {
      if(data instanceof Array) {
        let tmp = '';
        return data.filter( function(d) {
            if(tmp !== d[dataField].toString()) {
                tmp = d[dataField].toString();
                return true;
            } else {
                return false;
            }
        });
    }
    return data;
  }

  function buildTBody(data) {
    var tbodys = document.getElementsByTagName('tbody');
    for(var i=0;i<tbodys.length;i++) {
    [].forEach.call(data, function(o) {
      var _tr = document.createElement('tr');
      [].forEach.call(Object.keys(o), function(h) {
          if(h !== 'city') {
            var _td = document.createElement('td');
            _td.innerHTML = o[h];
            _tr.appendChild(_td);
        }
      });
      tbodys[i].appendChild(_tr);
      });
    }
  }

  function populateList(data){
    data = removeDuplicates(sortBy(data, 'city'), 'city');
    console.log(data);
    var _ul = document.getElementById('city');
    [].forEach.call(data, function(_row) {
        if(_row.hasOwnProperty('city') ) {
            var _li = document.createElement('li');
            _li.className = 'mdl-list__item mdl-js-ripple-effect city_item';
            var _span = document.createElement('span');
            _span.className = 'mdl-list__item-primary-content ';
            _span.innerText = _row.city;
            _li.appendChild(_span);
            _ul.appendChild(_li);
        }
    });
  }

</script>
</body>
</html>
