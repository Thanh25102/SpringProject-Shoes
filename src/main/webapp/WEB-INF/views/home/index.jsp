<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <div class="slider-area">
        	<!-- Slider -->
			<div class="block-slider block-slider4">
				<ul class="" id="bxslider-home4">
					<c:forEach var="product" items="${slide}" >
						<li>
							<img src="<c:url value="/template/home/img/${product.url}"/>" alt="Slide">
							<div class="caption-group">
								<h2 class="caption title">
                                        ${ product.id } <span class="primary">${ product.name } <strong>Plus</strong></span>
								</h2>
								<h4 class="caption subtitle">${product.thumbnail }</h4>
								<a class="caption button-radius" href="#"><span class="icon"></span>Shop now</a>
							</div>
						</li>
					</c:forEach>
				</ul>
			</div>
			<!-- ./Slider -->
    </div> <!-- End slider area -->
    <h1><c:if test="${ currentUser !=null }">${ currentUser.toString() }</c:if></h1>
    	
    <div class="promo-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <div class="single-promo promo1">
                        <i class="fa fa-refresh"></i>
                        <p>30 Days return</p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="single-promo promo2">
                        <i class="fa fa-truck"></i>
                        <p>Free shipping</p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="single-promo promo3">
                        <i class="fa fa-lock"></i>
                        <p>Secure payments</p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="single-promo promo4">
                        <i class="fa fa-gift"></i>
                        <p>New products</p>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End promo area -->
    
    <div class="maincontent-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="latest-product">
                        <h2 class="section-title">Latest Products</h2>
                        <div class="product-carousel">
                            <c:forEach var="product" items="${products}">
	                            <div class="single-product">
	                                <div class="product-f-image" style="padding:30px 0;">
	                                    <img src="<c:url value="/template/home/img/shoes/${product.categoryName}/${empty product.url[0] ? 'green.png' : product.url[0]}"/>" alt="">
	                                    <div class="product-hover">
	                                        <a href="#" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Add to cart</a>
	                                        <a href="single-product.jsp" class="view-details-link"><i class="fa fa-link"></i> See details</a>
	                                    </div>
	                                </div>
	                                
	                                <h2><a href="single-product.jsp">${product.name}</a></h2>
	                                
	                                <div class="product-carousel-price">
	                                    <ins>${product.price}</ins> <del>${product.price}</del>
	                                </div> 
	                            </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End main content area -->
    
    <div class="brands-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="brand-wrapper">
                        <div class="brand-list">
                            <img src="<c:url value="/template/home/img/brand1.png"/>" alt="">
                            <img src="<c:url value="/template/home/img/brand2.png"/>" alt="">
                            <img src="<c:url value="/template/home/img/brand3.png"/>" alt="">
                            <img src="<c:url value="/template/home/img/brand4.png"/>" alt="">
                            <img src="<c:url value="/template/home/img/brand5.png"/>" alt="">
                            <img src="<c:url value="/template/home/img/brand6.png"/>" alt="">
                            <img src="<c:url value="/template/home/img/brand1.png"/>" alt="">
                            <img src="<c:url value="/template/home/img/brand2.png"/>" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End brands area -->
    
    <div class="product-widget-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="single-product-widget">
                        <h2 class="product-wid-title">Top Sellers</h2>
                        <a href="" class="wid-view-more">View All</a>
                        <div class="single-wid-product">
                            <a href="single-product.jsp"><img src="<c:url value="/template/home/img/product-thumb-1.jpg"/>" alt="" class="product-thumb"></a>
                            <h2><a href="single-product.jsp">Sony Smart TV - 2015</a></h2>
                            <div class="product-wid-rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product-wid-price">
                                <ins>$400.00</ins> <del>$425.00</del>
                            </div>                            
                        </div>
                        <div class="single-wid-product">
                            <a href="single-product.jsp"><img src="<c:url value="/template/home/img/product-thumb-2.jpg"/>" alt="" class="product-thumb"></a>
                            <h2><a href="single-product.jsp">Apple new mac book 2015</a></h2>
                            <div class="product-wid-rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product-wid-price">
                                <ins>$400.00</ins> <del>$425.00</del>
                            </div>                            
                        </div>
                        <div class="single-wid-product">
                            <a href="single-product.jsp"><img src="<c:url value="/template/home/img/product-thumb-3.jpg"/>" alt="" class="product-thumb"></a>
                            <h2><a href="single-product.jsp">Apple new i phone 6</a></h2>
                            <div class="product-wid-rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product-wid-price">
                                <ins>$400.00</ins> <del>$425.00</del>
                            </div>                            
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="single-product-widget">
                        <h2 class="product-wid-title">Recently Viewed</h2>
                        <a href="#" class="wid-view-more">View All</a>
                        <div class="single-wid-product">
                            <a href="single-product.jsp"><img src="<c:url value="/template/home/img/product-thumb-4.jpg"/>" alt="" class="product-thumb"></a>
                            <h2><a href="single-product.jsp">Sony playstation microsoft</a></h2>
                            <div class="product-wid-rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product-wid-price">
                                <ins>$400.00</ins> <del>$425.00</del>
                            </div>                            
                        </div>
                        <div class="single-wid-product">
                            <a href="single-product.jsp"><img src="<c:url value="/template/home/img/product-thumb-1.jpg"/>" alt="" class="product-thumb"></a>
                            <h2><a href="single-product.jsp">Sony Smart Air Condtion</a></h2>
                            <div class="product-wid-rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product-wid-price">
                                <ins>$400.00</ins> <del>$425.00</del>
                            </div>                            
                        </div>
                        <div class="single-wid-product">
                            <a href="single-product.jsp"><img src="<c:url value="/template/home/img/product-thumb-2.jpg"/>" alt="" class="product-thumb"></a>
                            <h2><a href="single-product.jsp">Samsung gallaxy note 4</a></h2>
                            <div class="product-wid-rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product-wid-price">
                                <ins>$400.00</ins> <del>$425.00</del>
                            </div>                            
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="single-product-widget">
                        <h2 class="product-wid-title">Top New</h2>
                        <a href="#" class="wid-view-more">View All</a>
                        <div class="single-wid-product">
                            <a href="single-product.jsp"><img src="<c:url value="/template/home/img/product-thumb-3.jpg"/>" alt="" class="product-thumb"></a>
                            <h2><a href="single-product.jsp">Apple new i phone 6</a></h2>
                            <div class="product-wid-rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product-wid-price">
                                <ins>$400.00</ins> <del>$425.00</del>
                            </div>                            
                        </div>
                        <div class="single-wid-product">
                            <a href="single-product.jsp"><img src="<c:url value="/template/home/img/product-thumb-4.jpg"/>" alt="" class="product-thumb"></a>
                            <h2><a href="single-product.jsp">Samsung gallaxy note 4</a></h2>
                            <div class="product-wid-rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product-wid-price">
                                <ins>$400.00</ins> <del>$425.00</del>
                            </div>                            
                        </div>
                        <div class="single-wid-product">
                            <a href="single-product.jsp"><img src="<c:url value="/template/home/img/product-thumb-1.jpg"/>" alt="" class="product-thumb"></a>
                            <h2><a href="single-product.jsp">Sony playstation microsoft</a></h2>
                            <div class="product-wid-rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product-wid-price">
                                <ins>$400.00</ins> <del>$425.00</del>
                            </div>                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End product widget area -->
    
