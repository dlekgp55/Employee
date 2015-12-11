<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="false" trimDirectiveWhitespaces="true" %>	 	<!-- ssession 이 안만들어 지도록, trim - 웹에서 source보기에서 빈공간 없게 보이게 함. -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<%@ taglib prefix="sitemesh" tagdir="/WEB-INF/tags/sitemesh" %> 		<%-- <sitemesh:write property='title'/> warning이 사라지게 함	 --%>  
<!DOCTYPE html>
<html lang="ko" data-ng-app="employeeApp">
<head>
 <title><sitemesh:write property='title'/></title>
 
	<sitemesh:write property='head'/>

</head>
<body data-ng-controller="mainController" class="container">
<!-- Static navbar -->
      <nav class="navbar navbar-default {{staticOrFixed}}">			<!-- fixed로 변경할수도 있음 -->
        <div class="container-fluid">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Project name</a>
          </div>
          <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
              <li class="active"><a href="#">Home</a></li>
              <li><a href="#">About</a></li>
              <li><a href="#">Contact</a></li>
              <li><a href="/Employee/city/main.html">City</a></li>
              <li><a href="/Employee/country/main.html">Country</a></li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
                <ul class="dropdown-menu">
                  <li><a href="#">Action</a></li>
                  <li><a href="#">Another action</a></li>
                  <li><a href="#">Something else here</a></li>
                  <li role="separator" class="divider"></li>
                  <li class="dropdown-header">Nav header</li>
                  <li><a href="#">Separated link</a></li>
                  <li><a href="#">One more separated link</a></li>
                </ul>
              </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
              <li class="active"><a href="#" data-ng-click="setMenuStyle('navbar-static-top')">Default</a></li>
              <li><a href="" data-ng-click="setMenuStyle('navbar-static-top')">Static top</a></li>
              <li><a href="" data-ng-click="setMenuStyle('navbar-fixed-top')">Fixed top</a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
      </nav>

      <!-- Main component for a primary marketing message or call to action -->
<!--       <div class="jumbotron"> -->
<!--         <h1>Navbar example</h1> -->
<!--         <p>This example is a quick exercise to illustrate how the default, static navbar and fixed to top navbar work. It includes the responsive CSS and HTML, so it also adapts to your viewport and device.</p> -->
<!--         <p> -->
<!--           <a class="btn btn-lg btn-primary" href="../../components/#navbar" role="button">View navbar docs &raquo;</a> -->
<!--         </p> -->
<!--       </div> -->
      
	<sitemesh:write property='body'/>			<!-- 해당 jsp의 body 부분이 들어 온다. 즉, body 나오기 전에 위의 h1이 먼저 나온다. -->

</body>
</html>