<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<head>
    <title>Shop</title>
</head>

    <div class="product-big-title-area">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="product-bit-title text-center">
                        <h2>${(fn:length(productCategories) == 0 || empty productCategories) ? 'Shop' : productCategories[0].categoryName}</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="brands-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="brand-wrapper">
                        <div class="brand-list">
                            <c:forEach var="category" items="${ categories }">
                                    <img src="<c:url value="/template/home/img/categories/${category.logo}"/>" alt="">
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="single-product-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <c:forEach var="product" items="${productCategories}">
                    <div class="col-md-3 col-sm-6">
                        <div class="single-shop-product">
                            <div class="product-upper">
                                <img src="<c:url value="/template/home/img/shoes/${product.categoryName}/${product.url[0]}"/>" alt="">
                            </div>
                            <h2 style="text-align:center"><a href="">${product.name}</a></h2>
                            <div class="product-carousel-price" style="text-align:center">
                                <ins>$${product.price}</ins> <del>$${product.price}</del>
                            </div>

                            <div class="product-option-shop" style="text-align:center">
                                <a class="add_to_cart_button" data-quantity="1" data-product_sku="" data-product_id="70" rel="nofollow" href="/canvas/shop/?add-to-cart=70">Add to cart</a>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
            
            <div class="row">
                <div class="col-md-12">
                    <div class="product-pagination text-center">
                        <nav>
                          <ul class="pagination">
                              <c:set var="curPage" value="${empty param.page ? 1 : param.page}"/>
                            <li>
                              <a href="./shop?idCategory=${empty param.idCategory ? 1 : param.idCategory}&&page=${curPage <= 1 ? 1 : curPage - 1}" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                              </a>
                            </li>
                                <c:forEach var="index" begin="1" end="${totalPage}"  >
                                    <li><a href="./shop?idCategory=${empty param.idCategory ? 1 : param.idCategory}&&page=${index}">${index}</a></li>
                                </c:forEach>
                            <li>
                              <a href="./shop?idCategory=${empty param.idCategory ? 1 : param.idCategory}&&page=${curPage >= totalPage ? totalPage : curPage + 1}" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                              </a>
                            </li>
                          </ul>
                        </nav>                        
                    </div>
                </div>
            </div>
        </div>
    </div>

