<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<div id="updateForm" style="display: none;">
    <h3>UPDATE : </h3>
    <form id="updateFormForm">
        <table class="table">
            <tr>
                <td>ID : </td>
                <td><input type="text" name="bean.id" id="idUpd" required="required disabled"/></td>
            </tr>

            <tr>
                <td>Reference : </td>
                <td><input type="text" name="bean.reference" id="refUpd" required="required disabled"/></td>
            </tr>
            <tr>
                <td>NOM : </td>
                <td><input type="text" name="bean.name" id="nameUpd" required="required"/></td>
            </tr>
            <tr>
                <td>DESCREPTION : </td>
                <td><input type="text" name="bean.description" id="descUpd" required="required"/></td>
            </tr>
            <tr>
                <td>PRIX : </td>
                <td><input type="number" name="bean.price" id="priceUpd" required="required"/></td>
            </tr>
            <tr>
                <td>QUANTITE EN STOCK : </td>
                <td><input type="number" name="bean.stockQuantity" id="quantityUpd" required="required"/></td>
            </tr>
            <tr>
                <td colspan="2"><button type="submit"
                                        class="btn btn-primary btn-block">VALIDER</button></td>
            </tr>
        </table>
    </form>
    <table class="table">
        <tr>
            <td colspan="2"><button class="btn btn-secondary btn-block" onclick="showUpdateForm()">ANNULER</button></td>
        </tr>
    </table>
    <br>
    <br>
    <br>
</div>