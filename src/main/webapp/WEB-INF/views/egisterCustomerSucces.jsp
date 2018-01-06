<%--
  Created by IntelliJ IDEA.
  User: IonutCandea
  Date: 06-Jan-18
  Time: 9:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>

<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron">
                <div class="container">
                    <h1>Customer registered successfully!</h1>
                </div>
            </div>
        </section>

        <section class="container">
            <p><a href="<spring:url value="/product/productList" />" class="btn btn-default">Products</a></p>
        </section>

        <%@ include file="/WEB-INF/views/template/footer.jsp" %>
