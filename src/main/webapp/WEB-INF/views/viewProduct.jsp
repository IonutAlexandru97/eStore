<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>


<!-- Marketing messaging and featurettes
================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->


<br>
<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Product Detail</h1>

            <p class="lead">Product Information</p>
        </div>

        <div class="container" ng-app="cartApp">
            <div class="row">
                <div class="col-md-5">
                    <img src="<c:url value="/images/${product.productId}.png" />" style="width: 100%">
                </div>

                <div class="col-md-5">
                    <h3>${product.productName}</h3>
                    <p>${product.productDescription}</p>
                    <p>
                        <strong>Aditional Informations</strong> : ${product.productAditionalInfo}
                    </p>
                    <p>
                        <strong> Category</strong> : ${product.productCategory}
                    </p>
                    <p>
                        <strong> Condition</strong> : ${product.productCondition}
                    </p>
                    <h4>${product.productPrice} &euro;</h4>

                    <br>

                    <c:set var="role" scope="page" value="${param.role}"/>
                    <c:set var="url" scope="page" value="/productList"/>
                    <c:if test="${role='admin'}">
                        <c:set var="url" scope="page" value="/admin/productInventory"/>
                    </c:if>

                    <p ng-controller="cartCtrl">
                        <a href="<c:url value="/product/productList"/>" class="btn btn-default">Back</a>
                        <a href="#" class="btn btn-warning btn-large" ng-click="addToCart('${product.productId}')"><i
                                class="fa fa-shopping-cart"></i>Order Now</a>
                        <a href="<spring:url value="/customer/cart"/>" class="btn btn-default"><i class="fa fa-hand-o-right"></i>View Cart</a>
                    </p>
                </div>
            </div>
        </div>

        <script src="<c:url value="/js/controller.js"/> "></script>
        <%@include file="/WEB-INF/views/template/footer.jsp" %>
