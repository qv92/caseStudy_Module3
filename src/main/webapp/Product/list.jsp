
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="pragma" content="no-cache" />
    <meta http-equiv="cache-control" content="max-age=604800" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Website </title>

    <link href="images/favicon.ico" rel="shortcut icon" type="image/x-icon">

    <!-- jQuery -->
    <script src="js/jquery-2.0.0.min.js" type="text/javascript"></script>

    <!-- Bootstrap4 files-->
    <script src="js/bootstrap.bundle.min.js" type="text/javascript"></script>
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>

    <!-- Font awesome 5 -->
    <link href="fonts/fontawesome/css/all.min.css" type="text/css" rel="stylesheet">

    <!-- custom style -->
    <link href="css/ui.css" rel="stylesheet" type="text/css"/>
    <link href="css/responsive.css" rel="stylesheet" type="text/css" />

    <!-- custom javascript -->
    <script src="js/script.js" type="text/javascript"></script>

</head>
<body>


<header class="section-header">
    <section class="header-main border-bottom">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-xl-2 col-lg-3 col-md-12">
                    <a href="/products" class="brand-wrap">
                        <img class="logo" src="images/logo.png">
                    </a> <!-- brand-wrap.// -->
                </div>
                <div class="col-xl-6 col-lg-5 col-md-6">
                    <form action="?action=search"  method="post" class="search-header">
                        <div class="input-group w-100">
                            <select class="custom-select border-right"  name="category_name">
                                <option value="">Enter Name</option>
                            </select>
                            <input type="text" class="form-control" placeholder="Search" name="name">

                            <div class="input-group-append">
                                <button class="btn btn-primary" type="submit">
                                    <i class="fa fa-search"></i> Search
                                </button>
                            </div>
                        </div>
                    </form> <!-- search-wrap .end// -->
                </div> <!-- col.// -->
                <div class="col-xl-4 col-lg-4 col-md-6">
                    <div class="widgets-wrap float-md-right">
                        <div class="widget-header mr-3">
                            <a href="adminDB/admin-login.jsp" class="widget-view">
                                <div class="icon-area">
                                    <i class="fa fa-user"></i>
<%--                                    <span class="notify"></span>--%>
                                </div>
                                <small class="text"> Log in </small>
                            </a>
                        </div>
                        <div class="widget-header mr-3">
                            <a href="#" class="widget-view">
                                <div class="icon-area">
                                    <i class="fa fa-comment-dots"></i>
<%--                                    <span class="notify"></span>--%>
                                </div>
                                <small class="text"> Message </small>
                            </a>
                        </div>
                        <div class="widget-header mr-3">
                            <a href="#" class="widget-view">
                                <div class="icon-area">
                                    <i class="fa fa-store"></i>
                                </div>
                                <small class="text"> Orders </small>
                            </a>
                        </div>
                        <div class="widget-header mr-3">
                            <a href="/cart" class="widget-view">
                                <div class="icon-area">
                                    <i class="fa fa-shopping-cart"></i>
                                    <span class="notify">
                                        <c:if test="${cart.size()!=null}">
                                        ${cart.size()}
                                    </c:if></span>
                                </div>
                                <small class="text"> Cart </small>
                            </a>
                        </div>
                    </div> <!-- widgets-wrap.// -->
                </div> <!-- col.// -->
            </div> <!-- row.// -->
        </div> <!-- container.// -->
    </section> <!-- header-main .// -->

    <nav class="navbar navbar-main navbar-expand-lg border-bottom">
        <div class="container">

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main_nav" aria-controls="main_nav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="main_nav">
                <ul class="navbar-nav">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="/products"> <i class="fa fa-bars text-muted mr-2"></i> Home </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Blog</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Trade shows</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Services</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Sell with us</a>
                    </li>
                </ul>
                <ul class="navbar-nav ml-md-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="#">Get the app</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="http://example.com" data-toggle="dropdown">English</a>
                        <div class="dropdown-menu dropdown-menu-right">
                            <a class="dropdown-item" href="#">Russian</a>
                            <a class="dropdown-item" href="#">French</a>
                            <a class="dropdown-item" href="#">Spanish</a>
                            <a class="dropdown-item" href="#">Chinese</a>
                        </div>
                    </li>
                </ul>
            </div> <!-- collapse .// -->
        </div> <!-- container .// -->
    </nav>
</header> <!-- section-header.// -->



<!-- ========================= SECTION CONTENT ========================= -->
<section class="section-content padding-y">
    <div class="container">


        <!-- ============================  FILTER TOP  ================================= -->
        <div class="card mb-3">
            <div class="card-body">
                <ol class="breadcrumb float-left">
                    <li class="breadcrumb-item"><a href="/products">Home</a></li>
                    <li class="breadcrumb-item"><a href="/products">Category name</a></li>
                    <li class="breadcrumb-item active">Item details</li>
                </ol>
            </div> <!-- card-body .// -->
        </div> <!-- card.// -->
        <!-- ============================ FILTER TOP END.// ================================= -->


        <div class="row">
            <div class="col-md-2">

                <article class="filter-group">
                    <h6 class="title">
                        <a href="#" class="dropdown-toggle" data-toggle="collapse" data-target="#collapse_1">Category</a>
                    </h6>
                    <div class="filter-content collapse show" id="collapse_1">
                        <div class="inner">
                            <ul class="list-menu">
                                <c:forEach items="${categories}" var="c">
                                    <li><a href="?action=category&categoryId=${c.id}">${c.name}</a></li>
                                </c:forEach>
                            </ul>
                        </div> <!-- inner.// -->
                    </div>
                </article> <!-- filter-group  .// -->
<%--                <article class="filter-group">--%>
<%--                    <h6 class="title">--%>
<%--                        <a href="#" class="dropdown-toggle" data-toggle="collapse" data-target="#collapse_2"> Brands </a>--%>
<%--                    </h6>--%>
<%--                    <div class="filter-content collapse show" id="collapse_2">--%>
<%--                        <div class="inner">--%>
<%--                            <label class="custom-control custom-checkbox">--%>
<%--                                <input type="checkbox" checked="" class="custom-control-input">--%>
<%--                                <div class="custom-control-label">Adidas--%>
<%--                                    <b class="badge badge-pill badge-light float-right">120</b>  </div>--%>
<%--                            </label>--%>
<%--                            <label class="custom-control custom-checkbox">--%>
<%--                                <input type="checkbox" checked="" class="custom-control-input">--%>
<%--                                <div class="custom-control-label">Nike--%>
<%--                                    <b class="badge badge-pill badge-light float-right">15</b>  </div>--%>
<%--                            </label>--%>
<%--                            <label class="custom-control custom-checkbox">--%>
<%--                                <input type="checkbox" checked="" class="custom-control-input">--%>
<%--                                <div class="custom-control-label">The Noth Face--%>
<%--                                    <b class="badge badge-pill badge-light float-right">35</b> </div>--%>
<%--                            </label>--%>
<%--                            <label class="custom-control custom-checkbox">--%>
<%--                                <input type="checkbox" checked="" class="custom-control-input">--%>
<%--                                <div class="custom-control-label">The cat--%>
<%--                                    <b class="badge badge-pill badge-light float-right">89</b> </div>--%>
<%--                            </label>--%>
<%--                            <label class="custom-control custom-checkbox">--%>
<%--                                <input type="checkbox" class="custom-control-input">--%>
<%--                                <div class="custom-control-label">Honda--%>
<%--                                    <b class="badge badge-pill badge-light float-right">30</b>  </div>--%>
<%--                            </label>--%>
<%--                        </div> <!-- inner.// -->--%>
<%--                    </div>--%>
<%--                </article> <!-- filter-group .// -->--%>
                <article class="filter-group">
                    <h6 class="title">
                        <a href="#" class="dropdown-toggle" data-toggle="collapse" data-target="#collapse_3"> Price range </a>
                    </h6>
                    <div class="filter-content collapse show" id="collapse_3">
                        <div class="inner">
<%--                            <input type="range" class="custom-range" min="0" max="100" name="">--%>
                            <form action="/products?action=findByPrice" method="post">
                            <div class="form-row">

                                    <div class="form-group col-md-6">
                                        <label>Min</label>
                                        <input class="form-control" placeholder="$0" type="number" name="priceMin">
                                    </div>
                                    <div class="form-group text-right col-md-6">
                                        <label>Max</label>
                                        <input class="form-control" placeholder="$1,0000" type="number" name="priceMax">
                                    </div>
                                    <a href="/products?action=findByPrice"><button type="submit" class="btn btn-block btn-primary">Apply</button></a>

                            </div> <!-- form-row.// -->
                            </form>
                        </div> <!-- inner.// -->
                    </div>
                </article> <!-- filter-group .// -->



<%--                <article class="filter-group">--%>
<%--                    <h6 class="title">--%>
<%--                        <a href="#" class="dropdown-toggle" data-toggle="collapse" data-target="#collapse_4"> Sizes </a>--%>
<%--                    </h6>--%>
<%--                    <div class="filter-content collapse show" id="collapse_4">--%>
<%--                        <div class="inner">--%>
<%--                            <label class="checkbox-btn">--%>
<%--                                <input type="checkbox">--%>
<%--                                <span class="btn btn-light"> XS </span>--%>
<%--                            </label>--%>

<%--                            <label class="checkbox-btn">--%>
<%--                                <input type="checkbox">--%>
<%--                                <span class="btn btn-light"> SM </span>--%>
<%--                            </label>--%>

<%--                            <label class="checkbox-btn">--%>
<%--                                <input type="checkbox">--%>
<%--                                <span class="btn btn-light"> LG </span>--%>
<%--                            </label>--%>

<%--                            <label class="checkbox-btn">--%>
<%--                                <input type="checkbox">--%>
<%--                                <span class="btn btn-light"> XXL </span>--%>
<%--                            </label>--%>
<%--                        </div> <!-- inner.// -->--%>
<%--                    </div>--%>
<%--                </article> <!-- filter-group .// -->--%>
<%--                <article class="filter-group">--%>
<%--                    <h6 class="title">--%>
<%--                        <a href="#" class="dropdown-toggle" data-toggle="collapse" data-target="#collapse_5"> Condition </a>--%>
<%--                    </h6>--%>
<%--                    <div class="filter-content collapse show" id="collapse_5">--%>
<%--                        <div class="inner">--%>
<%--                            <label class="custom-control custom-radio">--%>
<%--                                <input type="radio" name="myfilter_radio" checked="" class="custom-control-input">--%>
<%--                                <div class="custom-control-label">Any condition</div>--%>
<%--                            </label>--%>

<%--                            <label class="custom-control custom-radio">--%>
<%--                                <input type="radio" name="myfilter_radio" class="custom-control-input">--%>
<%--                                <div class="custom-control-label">Brand new </div>--%>
<%--                            </label>--%>

<%--                            <label class="custom-control custom-radio">--%>
<%--                                <input type="radio" name="myfilter_radio" class="custom-control-input">--%>
<%--                                <div class="custom-control-label">Used items</div>--%>
<%--                            </label>--%>

<%--                            <label class="custom-control custom-radio">--%>
<%--                                <input type="radio" name="myfilter_radio" class="custom-control-input">--%>
<%--                                <div class="custom-control-label">Very old</div>--%>
<%--                            </label>--%>
<%--                        </div> <!-- inner.// -->--%>
<%--                    </div>--%>
<%--                </article> <!-- filter-group .// -->--%>

            </div> <!-- col.// -->
            <main class="col-md-10">


                <header class="mb-3">
                    <div class="form-inline">
                        <strong class="mr-md-auto">${products.size()} Items found </strong>&nbsp;&nbsp;

                                <c:forEach  begin="1" end="${countPage}" var="page">
                                    <strong class="mr-md-1"><a href="?action=page&index=${page}">${page}</a></strong> &nbsp;
                                </c:forEach>


                        <select class="mr-2 form-control" onchange="location = this.value;">
                            <option selected>Sort Product</option>
                            <option value="?action=">Latest items</option>
                            <option value="?action=sortByPriceMin">Price Low To High</option>
                            <option value="?action=sortByPriceMax">Price High To Low</option>
                        </select>
                        <div class="btn-group">
                            <a href="/products" class="btn btn-light" data-toggle="tooltip" title="List view">
                                <i class="fa fa-bars"></i></a>
                            <a href="/products" class="btn btn-light active" data-toggle="tooltip" title="Grid view">
                                <i class="fa fa-th"></i></a>
                        </div>
                    </div>
                </header><!-- sect-heading -->
                <c:forEach items="${products}" var="product">
                    <article class="card card-product-list">
                        <div class="row no-gutters">
                            <aside class="col-md-3">
                                <a href="#" class="img-wrap">
                                    <img src="${product.color}">
                                </a>
                            </aside> <!-- col.// -->
                            <div class="col-md-6">
                                <div class="info-main">
                                    <a href="#" class="h5 title"> ${product.name}  </a>
                                    <div class="rating-wrap mb-2">
                                        <ul class="rating-stars">
                                            <li style="width:80%" class="stars-active">
                                                <i class="fa fa-star"></i> <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i> <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                            </li>
                                            <li>
                                                <i class="fa fa-star"></i> <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i> <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                            </li>
                                        </ul>
                                        <div class="label-rating">7/10</div>
                                    </div> <!-- rating-wrap.// -->

                                    <p class="mb-3">
                                        <span class="tag"> <i class="fa fa-check"></i> Verified</span>
                                        <span class="tag"> 4 Years </span>
                                        <span class="tag"> 60 reviews </span>
                                        <span class="tag"> China </span>
                                    </p>

                                    <p> ${product.description} </p>

                                </div> <!-- info-main.// -->
                            </div> <!-- col.// -->
                            <aside class="col-sm-3">
                                <div class="info-aside">
                                    <div class="price-wrap">
                                        <span class="h5 price">$ ${product.price}</span>
                                        <small class="text-muted">/per bag</small>
                                    </div> <!-- price-wrap.// -->
                                    <small class="text-success">${product.quantity} Quantity</small>

                                    <p class="text-muted mt-3">Guangzhou Electronic Co</p>
                                    <p class="mt-3">
                                        <a href="/add-to-cart?productId=${product.id}" class="btn btn-outline-primary"> <i class="fa fa-envelope"></i> Add to cart </a>
                                        <a href="#" class="btn btn-light"><i class="fa fa-heart"></i> Save </a>
                                    </p>

                                    <label class="custom-control mt-3 custom-checkbox">
                                        <input type="checkbox" class="custom-control-input">
                                        <div class="custom-control-label">Add to compare
                                        </div>
                                    </label>

                                </div> <!-- info-aside.// -->
                            </aside> <!-- col.// -->
                        </div> <!-- row.// -->
                    </article> <!-- card-product .// -->
                </c:forEach>



                <nav class="mb-4" aria-label="Page navigation sample">
                    <ul class="pagination">
                        <c:forEach  begin="1" end="${countPage}" var="page">
                            <li class="page-item active"><a class="page-link" href="?action=page&index=${page}">${page}</a></li> &nbsp;
                        </c:forEach>

                    </ul>
                </nav>


                <div class="box text-center">
                    <p>Did you find what you were looking for？</p>
                    <a href="" class="btn btn-light">Yes</a>
                    <a href="" class="btn btn-light">No</a>
                </div>


            </main> <!-- col.// -->

        </div>

    </div> <!-- container .//  -->
</section>
<!-- ========================= SECTION CONTENT END// ========================= -->


<!-- ========================= SECTION SUBSCRIBE  ========================= -->
<section class="padding-y-lg bg-light border-top">
    <div class="container">

        <p class="pb-2 text-center">Delivering the latest product trends and industry news straight to your inbox</p>

        <div class="row justify-content-md-center">
            <div class="col-lg-4 col-sm-6">
                <form class="form-row">
                    <div class="col-8">
                        <input class="form-control" placeholder="Your Email" type="email">
                    </div> <!-- col.// -->
                    <div class="col-4">
                        <button type="submit" class="btn btn-block btn-warning"> <i class="fa fa-envelope"></i> Subscribe </button>
                    </div> <!-- col.// -->
                </form>
                <small class="form-text">We’ll never share your email address with a third-party. </small>

<%--                <c:forEach items="categories" var="c">--%>
<%--                    <small>${c.name}</small>--%>
<%--                </c:forEach>--%>
            </div> <!-- col-md-6.// -->
        </div>


    </div>
</section>
<!-- ========================= SECTION SUBSCRIBE END// ========================= -->


<!-- ========================= FOOTER ========================= -->
<footer class="section-footer bg-secondary">
    <div class="container">
        <section class="footer-top padding-y-lg text-white">
            <div class="row">
                <aside class="col-md col-6">
                    <h6 class="title">Brands</h6>
                    <ul class="list-unstyled">
                        <li> <a href="#">Adidas</a></li>
                        <li> <a href="#">Puma</a></li>
                        <li> <a href="#">Reebok</a></li>
                        <li> <a href="#">Nike</a></li>
                    </ul>
                </aside>
                <aside class="col-md col-6">
                    <h6 class="title">Company</h6>
                    <ul class="list-unstyled">
                        <li> <a href="#">About us</a></li>
                        <li> <a href="#">Career</a></li>
                        <li> <a href="#">Find a store</a></li>
                        <li> <a href="#">Rules and terms</a></li>
                        <li> <a href="#">Sitemap</a></li>
                    </ul>
                </aside>
                <aside class="col-md col-6">
                    <h6 class="title">Help</h6>
                    <ul class="list-unstyled">
                        <li> <a href="#">Contact us</a></li>
                        <li> <a href="#">Money refund</a></li>
                        <li> <a href="#">Order status</a></li>
                        <li> <a href="#">Shipping info</a></li>
                        <li> <a href="#">Open dispute</a></li>
                    </ul>
                </aside>
                <aside class="col-md col-6">
                    <h6 class="title">Account</h6>
                    <ul class="list-unstyled">
                        <li> <a href="#"> User Login </a></li>
                        <li> <a href="#"> User register </a></li>
                        <li> <a href="#"> Account Setting </a></li>
                        <li> <a href="#"> My Orders </a></li>
                    </ul>
                </aside>
                <aside class="col-md">
                    <h6 class="title">Social</h6>
                    <ul class="list-unstyled">
                        <li><a href="#"> <i class="fab fa-facebook"></i> Facebook </a></li>
                        <li><a href="#"> <i class="fab fa-twitter"></i> Twitter </a></li>
                        <li><a href="#"> <i class="fab fa-instagram"></i> Instagram </a></li>
                        <li><a href="#"> <i class="fab fa-youtube"></i> Youtube </a></li>
                    </ul>
                </aside>
            </div> <!-- row.// -->
        </section>	<!-- footer-top.// -->

        <section class="footer-bottom text-center">

            <p class="text-white">Privacy Policy - Terms of Use - User Information Legal Enquiry Guide</p>
            <p class="text-muted"> &copy 2019 Company name, All rights reserved </p>
            <br>
        </section>
    </div><!-- //container -->
</footer>
<!-- ========================= FOOTER END // ========================= -->


</body>
</html>
<%--<html>--%>
<%--<head>--%>
<%--    <meta charset="utf-8">--%>
<%--    <meta name="viewport" content="width=device-width, initial-scale=1">--%>
<%--    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">--%>
<%--    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>--%>
<%--    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>--%>
<%--    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>--%>
<%--    <title>Title</title>--%>
<%--</head>--%>
<%--<body>--%>


<%--&lt;%&ndash;<div class="container" align="center">&ndash;%&gt;--%>
<%--&lt;%&ndash;<form method="post">&ndash;%&gt;--%>
<%--&lt;%&ndash;    <a href="/products?action=create">Add new product</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;    <input type="hidden" name="action" value="search">&ndash;%&gt;--%>
<%--&lt;%&ndash;    <input type="text" name="name">&ndash;%&gt;--%>
<%--&lt;%&ndash;    <button>Search</button>&ndash;%&gt;--%>
<%--&lt;%&ndash;    <table border="1px solid black">&ndash;%&gt;--%>
<%--&lt;%&ndash;        <tr>&ndash;%&gt;--%>
<%--&lt;%&ndash;            <td colspan="7">Product list</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;        </tr>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <tr>&ndash;%&gt;--%>
<%--&lt;%&ndash;            <td>#</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;            <td>Product Name</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;            <td>Price</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;            <td>Quantity</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;            <td>Color</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;            <td>Category</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;            <td>Action</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;        </tr>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <c:forEach items="${products}" var="product">&ndash;%&gt;--%>
<%--&lt;%&ndash;            <tr>&ndash;%&gt;--%>
<%--&lt;%&ndash;                <td>${product.id}</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;                <td>${product.name}</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;                <td>${product.price}</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;                <td>${product.quantity}</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;                <td><img src="${product.color}"></td>&ndash;%&gt;--%>
<%--&lt;%&ndash;                <td><c:forEach items="${categories}" var="category">&ndash;%&gt;--%>
<%--&lt;%&ndash;                    <c:if test="${product.categoryId == category.id}">&ndash;%&gt;--%>
<%--&lt;%&ndash;                        ${category.name}&ndash;%&gt;--%>
<%--&lt;%&ndash;                    </c:if>&ndash;%&gt;--%>
<%--&lt;%&ndash;                </c:forEach> </td>&ndash;%&gt;--%>
<%--&lt;%&ndash;                <td><a href="/products?action=edit&id=${product.id}">Edit</a>|<a href="/products?action=delete&id=${product.id}">Delete</a></td>&ndash;%&gt;--%>
<%--&lt;%&ndash;            </tr>&ndash;%&gt;--%>
<%--&lt;%&ndash;        </c:forEach>&ndash;%&gt;--%>
<%--&lt;%&ndash;    </table>&ndash;%&gt;--%>
<%--&lt;%&ndash;</form>&ndash;%&gt;--%>
<%--&lt;%&ndash;    <a href="/products">Product</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;    <a href="/users">Users</a>&ndash;%&gt;--%>

<%--&lt;%&ndash;</div>&ndash;%&gt;--%>


<%--</body>--%>
<%--</html>--%>

