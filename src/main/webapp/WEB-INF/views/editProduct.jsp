<%--
  Created by IntelliJ IDEA.
  User: IonutCandea
  Date: 02-Dec-17
  Time: 3:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>


<br>
<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Edit Product</h1>

            <p class="lead">Please update the product:</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/admin/product/editProduct" method="post"
                   commandName="product" enctype="multipart/form-data">
            <form:hidden path="productId" value="${product.productId}" />
        <div class="form-group">
            <label for="name">Name</label>
            <form:input path="productName" id="name" class="form-Control" value="${product.productName}"/>
        </div>



        <div class="form-group">
            <label for="category">Category</label>
            <label class="check-inline"><form:radiobutton path="productCategory" id="category"
                                                          value="Dark"/>Dark</label>
            <label class="check-inline"><form:radiobutton path="productCategory" id="category"
                                                          value="Sports"/>Sports </label>
            <label class="check-inline"><form:radiobutton path="productCategory" id="category"
                                                          value="Fantasy"/>Fantasy </label>
            <label class="check-inline"><form:radiobutton path="productCategory" id="category"
                                                          value="Space"/>Space</label>
            <label class="check-inline"><form:radiobutton path="productCategory" id="category"
                                                          value="Science-Fiction"/>Science-Fiction</label>
            <label class="check-inline"><form:radiobutton path="productCategory" id="category"
                                                          value="Anime"/>Anime </label>
            <label class="check-inline"><form:radiobutton path="productCategory" id="category"
                                                          value="Colors"/>Colors </label>
            <label class="check-inline"><form:radiobutton path="productCategory" id="category"
                                                          value="Ocult"/>Ocult </label>
            <label class="check-inline"><form:radiobutton path="productCategory" id="category"
                                                          value="Music"/>Music </label>
            <label class="check-inline"><form:radiobutton path="productCategory" id="category"
                                                          value="Cars"/>Cars</label>
            <label class="check-inline"><form:radiobutton path="productCategory" id="category"
                                                          value="Games"/>Games</label>
            <label class="check-inline"><form:radiobutton path="productCategory" id="category"
                                                          value="Nature"/>Nature</label>
        </div>
        <div class="form-group">
            <label for="author">Author</label>
            <form:textarea path="productDescription" id="author" class="form-Control" value="${product.productDescription}"/>
        </div>

        <div class="form-group">
            <label for="price">Price</label>
            <form:input path="productPrice" id="price" class="form-Control" value="${product.productDescription}"/>
        </div>

        <div class="form-group">
            <label for="condition">Condition</label>
            <label class="check-inline"><form:radiobutton path="productCondition" id="condition"
                                                          value="New"/>New</label>
            <label class="check-inline"><form:radiobutton path="productCondition" id="condition"
                                                          value="Used"/>Used </label>
        </div>

        <div class="form-group">
            <label for="status">Status</label>
            <label class="check-inline"><form:radiobutton path="productStatus" id="status"
                                                          value="Active"/>Active</label>
            <label class="check-inline"><form:radiobutton path="productStatus" id="status"
                                                          value="Inactive"/>Inactive </label>
        </div>

        <div class="form-group">
            <label for="unitInStock">Unit In Stock</label>
            <form:input path="unitInStock" id="unitInStock" class="form-Control" value="${product.unitInStock}"/>
        </div>

        <div class="form-group">
            <label for="aditionalInfo">Aditional Info</label>
            <form:input path="productAditionalInfo" id="aditionalInfo" class="form-Control"/>
        </div>

        <div class="form-group">
            <label class="control-label" for="productImage">Upload Picture</label>
            <form:input id="productImage" path="productImage" type="file" class="form:input-large" value="${product.productDescription}"/>
        </div>

        <br><br>
        <input type="submit" value="Submit" class="btn btn-default">
        <a href="<c:url value="/admin/productInventory"/> " class="btn btn-default">Cancel</a>
        </form:form>


        <%@include file="/WEB-INF/views/template/footer.jsp" %>

