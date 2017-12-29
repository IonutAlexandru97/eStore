<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@include file="/WEB-INF/views/template/header.jsp" %>


<!-- Marketing messaging and featurettes
================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->


<br>
<br>
<br>
<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Admin Page</h1>

            <p class="lead">Administrator page</p>
        </div>
        <c:if test="${pageContext.request.userPrincipal.name != null}">
        <h2>
            Welcome: ${pageContext.request.userPrincipal.name} | <a href="<c:url value="/logout"/> ">Logout</a>
        </h2>
        </c:if>

        <h3>
            <a href="<c:url value="/admin/productInventory"/> "> Product Inventory</a>
        </h3>

        <p>Here you can view, check and modify the product inventory</p>

        <%@include file="/WEB-INF/views/template/footer.jsp" %>
