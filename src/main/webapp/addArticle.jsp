<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<div id="addForm" style="display: none;">
    <table class="table">
        <tr>
            <td>Referance:</td>
            <td><input type="text" name="ref" id="refAdd" /></td>
        </tr>
        <tr>
            <td>NOM:</td>
            <td><input type="text" name="name" id="nameAdd" /></td>
        </tr>
        <tr>
            <td>DESCREPTION</td>
            <td><input type="text" name="desc" id="descAdd" /></td>
        </tr>
        <tr>
            <td>PRIX</td>
            <td><input type="number" name="price" id="priceAdd" /></td>
        </tr>
        <tr>
            <td>QUANTITE EN STOCK</td>
            <td><input type="number" name="quantity" id="quantityAdd" /></td>
        </tr>
        <tr>
            <td colspan="2"><button class="btn btn-primary btn-block"
                                    onclick="addArticle()">Ajouter</button></td>
        </tr>
    </table>
</div>