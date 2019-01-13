<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<div id="addForm" style="display: none;">
    <h3>ADD : </h3>
    <form id="addFormForm">
        <table class="table">
            <tr>
                <td>Reference : </td>
                <td><input type="text" name="bean.reference" id="refAdd" required="required"/></td>
            </tr>
            <tr>
                <td>NOM : </td>
                <td><input type="text" name="bean.name" id="nameAdd" required="required"/></td>
            </tr>
            <tr>
                <td>DESCREPTION : </td>
                <td><input type="text" name="bean.description" id="descAdd" required="required"/></td>
            </tr>
            <tr>
                <td>PRIX : </td>
                <td><input type="number" name="bean.price" id="priceAdd" required="required"/></td>
            </tr>
            <tr>
                <td>QUANTITE EN STOCK : </td>
                <td><input type="number" name="bean.stockQuantity" id="quantityAdd" required="required"/></td>
            </tr>
            <tr>
                <td colspan="2"><button class="btn btn-primary btn-block" type="submit">AJOUTER</button></td>
            </tr>
        </table>
    </form>
    <table class="table">
        <tr>
            <td colspan="2"><button class="btn btn-secondary btn-block" onclick="showAddForm()">ANNULER</button></td>
        </tr>
    </table>
</div>