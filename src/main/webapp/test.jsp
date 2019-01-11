<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://displaytag.sf.net" prefix="display"%>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
<h1>Test1</h1>
<div>
    <display:table name="articleList">
        <display:column property="id"></display:column>
        <display:column property="name"></display:column>
        <display:column property="description"></display:column>
        <display:column property="stockQuantity"></display:column>
        <display:column property="price"></display:column>
    </display:table>
</div>
</body>
</html>