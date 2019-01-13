<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>

<%@taglib uri="/struts-tags" prefix="s" %>
<%@taglib uri="http://displaytag.sf.net" prefix="display" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="layouts/headerLib.jsp"></jsp:include>
</head>
<body style="width: 100%" class="size-1140">
<jsp:include page="menu-admin.jsp"></jsp:include>
<section>
<div id="SkafContent">
    <div id="first-block">
        <div class="line">
            <h2>GESTION DES ARTICLES</h2>
            <display:table name="articles" class="table mx-auto">
                <display:column property="id"></display:column>
                <display:column property="name"></display:column>
                <display:column property="description"></display:column>
                <display:column property="stockQuantity"></display:column>
                <display:column property="price"></display:column>
                <display:column title="ACTION">
                    <button class="btn btn-danger" onclick="deleteArticle(${article.id})">SUPPRIMER</button>
                    <button class="btn btn-warning" onclick="showUpdateForm(this,${article.id})">MODIFIER</button>
                </display:column>
            </display:table>
            <div>
                <button class="btn btn-success btn-block" onclick="showAddForm()">AJOUTER ARTICLE</button>
            </div>

            <div id="updateForm" style="display: none;">
                <table class="table">
                    <tr>
                        <input type="hidden" name="id" id="idUpdate"/>
                        <input type="hidden" name="ref" id="refUpdate"/>
                        <td>NOM :</td>
                        <td><input type="text" name="name" id="nameUpdate"/></td>
                    </tr>
                    <tr>
                        <td>DESCREPTION :</td>
                        <td><input type="text" name="desc" id="descUpdate"/></td>
                    </tr>
                    <tr>
                        <td>PRIX</td>
                        <td><input type="number" name="price" id="priceUpdate"/></td>
                    </tr>
                    <tr>
                        <td>QUANTITE EN STOCK</td>
                        <td><input type="number" name="quantity" id="quantityUpdate"/></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <button class="btn btn-primary btn-block" onclick="updateArticle()">VALIDER</button>
                        </td>
                    </tr>
                </table>
            </div>


            <!-- ADD ARTICLE FORM -->
            <jsp:include page="addArticle.jsp"></jsp:include>

        </div>
    </div>
</div><!-- /container -->
<jsp:include page="layouts/bottomLib.jsp"></jsp:include>
</section>
<script type="text/javascript">
    function showUpdateForm(that, id) {
        var ref = $(that).parent().prev().prev().prev().prev().prev().text();
        var name = $(that).parent().prev().prev().prev().prev().text();
        var desc = $(that).parent().prev().prev().prev().text();
        var price = $(that).parent().prev().prev().text();
        var quantity = $(that).parent().prev().text();
        $("#idUpdate").val(id);
        $("#refUpdate").val(ref);
        $("#nameUpdate").val(name);
        $("#descUpdate").val(desc);
        $("#priceUpdate").val(price);
        $("#quantityUpdate").val(quantity);
        $('#updateForm').show();
    }

    function updateArticle() {
        $.ajax({
            type: "POST",
            url: "articles/updateArticle.action",
            data: "id=" + $("#idUpdate").val() + "&name=" + $("#nameUpdate").val() + "&desc=" + $("#descUpdate").val() +
                "&price=" + $("#priceUpdate").val() + "&quantity=" + $("#quantityUpdate").val() + "&ref=" + $("#refUpdate").val(),
            success: function (result) {
                alert(result);
                window.location.replace('articles/allArticles.action');
            },
            error: function (result) {
                alert("Some error occured.");
            }
        });
    }

    function deleteArticle(id) {
        //var id = $(that).parent().prev().prev().prev().prev().prev().text();
        $.ajax({
            type: "POST",
            url: "articles/deleteArticle.action",
            data: "id=" + id,
            success: function (result) {
                alert("ARTICLE BIEN SUPPRIMER!");
                window.location.replace('menuArticle.action');
            },
            error: function (result) {
                alert("Some error occured.");
            }
        });
    }

    function showAddForm() {
        $('#addForm').show();
    }

    function addArticle() {
        $.ajax({
            type: "POST",
            url: "articles/addArticle.action",
            data: "ref=" + $("#refAdd").val() + "&name=" + $("#nameAdd").val() + "&desc=" + $("#descAdd").val() +
                "&price=" + $("#priceAdd").val() + "&quantity=" + $("#quantityAdd").val(),
            success: function (result) {
                alert(result);
                window.location.replace('menuArticle.action');
            },
            error: function (result) {
                alert("Some error occured.");
            }
        });
    }
</script>
</body>
</html>