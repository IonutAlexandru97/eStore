<%--
  Created by IntelliJ IDEA.
  User: Alex
  Date: 26.11.2017
  Time: 14:03
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Product Detail</h1>
            <p class="lead">Here are information of the product</p>
        </div>

        <div class="container">

            <div class="row">

                <div class="col-md-5">
                    <img src="#" alt="image" style="width: 400%; height: 300px " />
                </div>
                <div class="col-md-5">
                    <h3>${product.productName}</h3>
                    <p>${product.productDescription}</p>
                    <p>
                        <strong>Manufacture</strong> : ${product.productManufacturer}
                    </p>
                    <p>
                        <strong>Category</strong> : ${product.productCategory}
                    </p>
                    <p>
                        <strong>Condition</strong> : ${product.productCondition}
                    </p>
                    <h4>${product.productPrice} RON</h4>
                </div>

            </div>


        </div>

        <%@include file="/WEB-INF/views/template/footer.jsp" %>
