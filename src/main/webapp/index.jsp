<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://displaytag.sf.net" prefix="display" %>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
    <jsp:include page="layouts/headerLib.jsp"></jsp:include>
</head>

<body>
<%--<jsp:include page="menu-before.jsp"></jsp:include>--%>

<div class="container">
    <div id="SkafContent" class="row h-100">
        <div style="width: 80%" class="mx-auto my-auto">
            <div style="width: 100%" class="card text-white bg-dark mb-12">
                <div class="card-header">CONNEXION</div>
                <div class="card-body">
                    <form method="post" enctype="multipart/form-data" action="users/connecter.action">
                        <div class="form-row align-items-center">
                            <div class="col-md-5">
                                <div style="height: 100%" class="col-auto">
                                    <div style="height: 100%" class="input-group mb-2">
                                        <div style="height: 100%" class="input-group-prepend">
                                            <div style="height: 100%" class="input-group-text">LOGIN :</div>
                                        </div>
                                        <input name="bean.username" type="text" class="form-control mb-2"  placeholder="Username"  required>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-5">
                                <div style="height: 100%" class="col-auto">
                                    <div style="height: 100%" class="input-group mb-2">
                                        <div style="height: 100%" class="input-group-prepend">
                                            <div style="height: 100%" class="input-group-text">PASSWORD :</div>
                                        </div>
                                        <input name="bean.password" type="password" class="form-control mb-2"  placeholder="password"  required>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div style="height: 100%" class="col-auto">
                                    <div style="height: 100%" class="input-group mb-2">
                                        <button style="font-size: 93%; height: 100%" type="submit" class="btn btn-primary mb-2">SE CONNECTER</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>