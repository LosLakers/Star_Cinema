<%@include file="login_navbar.jsp" %>

<%
    boolean authorized = false;

    if (loginBean.getCookieValue("username").equals(loginBean.getUsername()) && status.equals("profile")) {
        authorized = true;
        loginBean.getUser();
    }

    if (status.equals("edit")) {
        authorized = true;
        loginBean.updateUser();
    }
%>

<% if (authorized) {%>
<div class="jumbotron">
    <div class="container">
        <h1>Profilo Utente</h1>
    </div>
</div>
<div class="container">
    <br/>
    <div class="row">
        <form class="col-xs-4" action="user_page.jsp" method="post">
            <div class="form-group">
                <label class="control-label">Nome</label>
                <div class="controls">
                    <input type="text" class="form-control" name="name" placeholder="Nome" required="required" 
                           value="<%=loginBean.getName()%>"/>
                </div>
                <br/>
                <label class="control-label">Cognome</label>
                <div class="controls">
                    <input type="text" class="form-control" name="surname" placeholder="Cognome" required="required" 
                           value="<%=loginBean.getSurname()%>"/>
                </div>
                <br/>
                <label class="control-label">Email</label>
                <div class="controls">
                    <input type="email" class="form-control" name="email" placeholder="Email" required="required" 
                           value="<%=loginBean.getEmail()%>"/>
                </div>
                <br/>
                <label class="control-label">Carta di Credito</label>
                <div class="controls">
                    <input type="number" class="form-control" name="creditcard" placeholder="CreditCard" 
                           value="<%=loginBean.getCreditcard()%>"/>
                </div>
                <br/>
                <input type="hidden" name="status" value="edit"/>
                <input type="hidden" name="username" value="<%=username%>"/>
                <input type="hidden" name="password" value="<%=password%>"/>
                <button type="submit" class="btn btn-primary">Modifica</button>
        </form>
    </div>

    <a href="#">Lista Biglietti Acquistati</a>
    #Abbonamento
    #ingressi disponibili
</div>
<%}%>
</body>
</html>