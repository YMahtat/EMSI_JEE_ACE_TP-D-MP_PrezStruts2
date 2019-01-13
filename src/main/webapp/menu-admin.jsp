<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">EMSI - Skaf @ ECommerce</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <div class="navbar-nav">
            <a class="nav-item nav-link" href="articles/allArticles.action">GESTION DES ARTICLES</a>
            <a class="nav-item nav-link" href="clients/allClients.action">GESTION DES CLIENTS</a>
            <a class="nav-item nav-link" href="users/currentProfil.action">PERSO(PROFIL)</a>
            <a class="nav-item nav-link" href="users/logout.action">DECONNEXION</a>
        </div>
    </div>
</nav>
<img src="<%=request.getContextPath() %>/images/cover1.png" width="100%" style="width: 100%;">