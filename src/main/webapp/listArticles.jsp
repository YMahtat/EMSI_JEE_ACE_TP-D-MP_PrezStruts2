<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://displaytag.sf.net" prefix="display" %>
<%@taglib uri="/struts-tags" prefix="s" %>

<!DOCTYPE html>
<html lang="fr">
<head>
    <jsp:include page="layouts/headerLib.jsp"></jsp:include>
</head>
<body style="width: 100%">
<jsp:include page="menu-admin.jsp"></jsp:include>
<div id="SkafContent">
            <h2>GESTION DES ARTICLES</h2>
            <div style="text-align: center;width: 100%">
                <display:table name="articles" uid="article" class="table mx-auto">
                    <display:column property="id"></display:column>
                    <display:column property="reference"></display:column>
                    <display:column property="name"></display:column>
                    <display:column property="description"></display:column>
                    <display:column property="price"></display:column>
                    <display:column property="stockQuantity"></display:column>
                    <display:column title="ACTION">
                        <button class="btn btn-danger" onclick="deleteArticle(<s:property value="%{#attr.article.id}"/>)">SUPPRIMER</button>
                        <button class="btn btn-warning" onclick="showUpdateForm(this,<s:property value="%{#attr.article.id}"/>)">MODIFIER</button>
                    </display:column>
                </display:table>
            </div>
            <div style="text-align: center;width: 100%">
                <button class="btn btn-success btn-block" onclick="showAddForm()">AJOUTER ARTICLE</button>
            </div>


            <!-- UPDATE ARTICLE FORM -->
            <jsp:include page="updateArticle.jsp"></jsp:include>
            <!-- ADD ARTICLE FORM -->
            <jsp:include page="addArticle.jsp"></jsp:include>
</div>
<script type="text/javascript">
    var showUpdate = false;
    var showAdd = false;
    $(document).ready(function(){
        //UPDATE FORM : ON-SUBMIT
        $("#updateFormForm").on('submit',function(event){
            event.preventDefault();
            updateArticle();
        });
        //ADD FORM : ON-SUBMIT
        $("#addFormForm").on('submit',function(event){
            event.preventDefault();
            addArticle();
        });
    });
    function showUpdateForm(that,id){
        if(showUpdate == false){
            var ref   = $(that).parent().prev().prev().prev().prev().prev().text();
            var name = $(that).parent().prev().prev().prev().prev().text();
            var desc = $(that).parent().prev().prev().prev().text();
            var price = $(that).parent().prev().prev().text();
            var quantity = $(that).parent().prev().text();
            $("#idUpd").val(id);
            $("#refUpd").val(ref);
            $("#nameUpd").val(name);
            $("#descUpd").val(desc);
            $("#priceUpd").val(price);
            $("#quantityUpd").val(quantity);
            $('#updateForm').show();
            showUpdate = true;
            showAdd = false;
            $('#addForm').hide();
        }
        else{
            $('#updateForm').hide();
            showUpdate = false;
        }
    }

    function updateArticle() {
        $.ajax({
            type:"POST",
            url:"articles/updateArticle.action",
            data:"bean.id="+$("#idUpd").val()+"&bean.reference="+$("#refUpd").val()+"&bean.name="+$("#nameUpd").val()+"&bean.description="+$("#descUpd").val()+
                "&bean.price="+$("#priceUpd").val()+"&bean.stockQuantity="+$("#quantityUpd").val(),
            success:function(result){
                window.location.replace('<%=request.getContextPath() %>/articles/allArticles.action');
            },
            error: function(data, textStatus, jqXHR){
                console.log('jqXHR:');
                console.log(jqXHR);
                console.log('textStatus:');
                console.log(textStatus);
                console.log('data:');
                console.log(data);
                window.location.replace('<%=request.getContextPath() %>/error.jsp');
            }
        });
    }

    function deleteArticle(id) {
        //var id = $(that).parent().prev().prev().prev().prev().prev().text();
        $.ajax({
            type:"POST",
            url:"articles/deleteArticle.action",
            data:"id="+id,
            success:function(result){
                window.location.replace('<%=request.getContextPath() %>/articles/allArticles.action');
            },
            error: function(result){
                window.location.replace('<%=request.getContextPath() %>/error.jsp');
            }
        });
    }

    function showAddForm() {
        if(showAdd == false){
            $('#addForm').show();
            showUpdate = false;
            showAdd = true;
            $('#updateForm').hide();
        }
        else {
            $('#addForm').hide();
            showAdd = false;
        }
    }
    function addArticle() {
        $.ajax({
            type:"POST",
            url:"articles/addArticle.action",
            data:"bean.reference="+$("#refAdd").val()+"&bean.name="+$("#nameAdd").val()+"&bean.description="+$("#descAdd").val()+
                "&bean.price="+$("#priceAdd").val()+"&bean.stockQuantity="+$("#quantityAdd").val(),
            success:function(result){
                window.location.replace('<%=request.getContextPath() %>/articles/allArticles.action');
            },
            error: function(result){
                window.location.replace('<%=request.getContextPath() %>/error.jsp');
            }
        });
    }
</script>
</body>
</html>