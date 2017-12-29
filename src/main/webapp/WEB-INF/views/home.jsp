<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>

<!-- Carousel
================================================== -->
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img class="first-slide home-image" src="<c:url value="/images/back1.jpg" />" alt="First slide">
            <div class="container">
                <div class="carousel-caption">
                    <h1>Welcome to Artwork4You</h1>
                    <p>Here you can browse a collection of artworks made by great artists which may blow your mind. Be
                        prepared to explore another worlds through their vision.</p>
                </div>
            </div>
        </div>
        <div class="item">
            <img class="second-slide home-image" src="<c:url value="/images/back2.jpg" />" alt="Second slide">
            <div class="container">
                <div class="carousel-caption">
                    <h1>Facts You Should know about Artwork</h1>
                    <p>Nothing makes a house feel more like a home than an enticing display of art. Not only can
                        carefully selected artwork add personality to your decor, it can enhance your home's interior
                        design by adding layers and visual interest.</p>
                </div>
            </div>
        </div>
        <div class="item">
            <img class="third-slide home-image " src="<c:url value="/images/back3.jpg" />" alt="Third slide">
            <div class="container">
                <div class="carousel-caption">
                    <h1>It's a hard choice</h1>
                    <p>With such a huge selection of paintings, fine art prints, and sculptures available, it can be
                        overwhelming trying to find that perfect piece. But here we can help you. Go to About Us section
                        to see some tips to help you narrow down your artwork search. </p>
                </div>
            </div>
        </div>
    </div>
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>
<!-- /.carousel -->


<!-- Marketing messaging and featurettes
================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container marketing">

    <!-- Three columns of text below the carousel -->
    <!--
    <div class="row">
        <div class="col-lg-4">
            <a class="btn btn-default" href="<c:url value="/product/productList?searchCondition=Instrument" />"
               role="button">
                <img class="img-circle" src="<c:url value="/images/instrument.jpg"/>" alt="Instrument Image" width="140"
                     height="140">
            </a>

            <h2>Instrument:</h2>
            <p>Well crafted and delicate instruments</p>

        </div>


        <div class="col-lg-4">
            <a class="btn btn-default" href="<c:url value="/product/productList?searchCondition=Record" />"
               role="button">
                <img class="img-circle" src="<c:url value="/images/record.gif"/>" alt="Instrument Image" width="140"
                     height="140">
            </a>

            <h2>Discography:</h2>
            <p>An exceptional collections of music records in favor of the traditional and modern genre of jazz </p>

        </div>


        <div class="col-lg-4">
            <a class="btn btn-default" href="<c:url value="/product/productList?searchCondition=Accessory" />"
               role="button">
                <img class="img-circle" src="<c:url value="/images/accessory.jpg"/>" alt="Instrument Image" width="140"
                     height="140">
            </a>

            <h2>Accessories:</h2>
            <p>All musical and related geeky goods</p>

        </div>
    </div>
    -->


    <%@ include file="/WEB-INF/views/template/footer.jsp" %>
