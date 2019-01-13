<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>

<%@taglib uri="/struts-tags" prefix="s" %>
<%@taglib uri="http://displaytag.sf.net" prefix="display" %>

<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<jsp:include page="layouts/headerLib.jsp"></jsp:include>
  
<body>

<div id="skafMenu">
    <s:url var="menu_url" action="menu"/>
    <jsp:include page="${menu_url}"></jsp:include>
</div>

<div id="skafContent"></div>

<jsp:include page="layouts/bottomLib.jsp"></jsp:include>
<div id="skafJS"></div>


</body>
</html>
