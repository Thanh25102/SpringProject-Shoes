<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!--
	ustora by freshdesignweb.com
	Twitter: https://twitter.com/freshdesignweb
	URL: https://www.freshdesignweb.com/ustora/
-->
<head>
<title>Product Detail</title>
</head>
<div class="product-big-title-area">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="product-bit-title text-center">
					<h2>Shop</h2>
				</div>
			</div>
		</div>
	</div>
</div>


<div class="single-product-area">
	<div class="zigzag-bottom"></div>
	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<div class="single-sidebar">
					<h2 class="sidebar-title">Search Products</h2>
					<form action="">
						<input type="text" placeholder="Search products..."> <input
							type="submit" value="Search">
					</form>
				</div>

				<div class="single-sidebar">
					<h2 class="sidebar-title">Products</h2>
					<div class="thubmnail-recent">
						<img src="<c:url value='/template/home/img/product-thumb-1.jpg'/>"
							class="recent-thumb" alt="">
						<h2>
							<a href="">Sony Smart TV - 2015</a>
						</h2>
						<div class="product-sidebar-price">
							<ins>$700.00</ins>
							<del>$100.00</del>
						</div>
					</div>
					<div class="thubmnail-recent">
						<img src="<c:url value='/template/home/img/product-thumb-1.jpg'/>"
							class="recent-thumb" alt="">
						<h2>
							<a href="">Sony Smart TV - 2015</a>
						</h2>
						<div class="product-sidebar-price">
							<ins>$700.00</ins>
							<del>$100.00</del>
						</div>
					</div>
					<div class="thubmnail-recent">
						<img src="<c:url value='/template/home/img/product-thumb-1.jpg'/>"
							class="recent-thumb" alt="">
						<h2>
							<a href="">Sony Smart TV - 2015</a>
						</h2>
						<div class="product-sidebar-price">
							<ins>$700.00</ins>
							<del>$100.00</del>
						</div>
					</div>
					<div class="thubmnail-recent">
						<img src="<c:url value='/template/home/img/product-thumb-1.jpg'/>"
							class="recent-thumb" alt="">
						<h2>
							<a href="">Sony Smart TV - 2015</a>
						</h2>
						<div class="product-sidebar-price">
							<ins>$700.00</ins>
							<del>$100.00</del>
						</div>
					</div>
				</div>

				<div class="single-sidebar">
					<h2 class="sidebar-title">Recent Posts</h2>
					<ul>
						<li><a href="">Sony Smart TV - 2015</a></li>
						<li><a href="">Sony Smart TV - 2015</a></li>
						<li><a href="">Sony Smart TV - 2015</a></li>
						<li><a href="">Sony Smart TV - 2015</a></li>
						<li><a href="">Sony Smart TV - 2015</a></li>
					</ul>
				</div>
			</div>

			<div class="col-md-8">
				<div class="product-content-right">
					<div class="product-breadcroumb">
						<a href="">Home</a> <a
							href="<c:url value="/shop?idCategory=${product.categoryId}"/>">${product.categoryName}</a>
						<a href="<c:url value="/product-detail?id=${product.id}"/>">${product.name}</a>
					</div>

					<div class="row">
						<div class="col-sm-6">
							<div class="product-images">
								<div class="product-main-img">
									<img
										src="${product.url[0]}"
										alt="">
								</div>

								<div class="product-gallery">
									<img
										src="${product.url[0]}"
										alt=""> <img
										src="${product.url[0]}"
										alt=""> <img
										src="${product.url[0]}"
										alt=""> <img
										src="${product.url[0]}"
										alt=""> <img
										src="${product.url[0]}"
										alt=""> <img
										src="${product.url[0]}"
										alt="">
								</div>
							</div>
						</div>

						<div class="col-sm-6">
							<div class="product-inner">
								<h2 class="product-name">${product.name}</h2>
								<div class="product-inner-price">
									<ins>$${product.price}</ins>
									<del>$${product.price}</del>
								</div>

								<form action="" class="cart">
									<div class="quantity">
										<input type="number" size="4" class="input-text qty text"
											title="Qty" value="1" name="quantity" min="1" step="1">
									</div>
									<button class="add_to_cart_button" type="submit">Add
										to cart</button>
								</form>

								<div class="product-inner-category">
									<p>
										Category: <a href="">Summer</a>. Tags: <a href="">awesome</a>,
										<a href="">best</a>, <a href="">sale</a>, <a href="">shoes</a>.
									</p>
								</div>

								<div role="tabpanel">
									<ul class="product-tab" role="tablist">
										<li role="presentation" class="active"><a href="#home"
											aria-controls="home" role="tab" data-toggle="tab">Description</a></li>
										<li role="presentation"><a href="#profile"
											aria-controls="profile" role="tab" data-toggle="tab">Reviews</a></li>
									</ul>
									<div class="tab-content">
										<div role="tabpanel" class="tab-pane fade in active" id="home">
											<h2>Product Description</h2>
											<p>${product.description}</p>

										</div>
										<div role="tabpanel" class="tab-pane fade" id="profile">
											<h2>Reviews</h2>
											<div class="submit-review">
												<p>
													<label for="name">Name</label> <input name="name"
														type="text">
												</p>
												<p>
													<label for="email">Email</label> <input name="email"
														type="email">
												</p>
												<div class="rating-chooser">
													<p>Your rating</p>

													<div class="rating-wrap-post">
														<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
															class="fa fa-star"></i> <i class="fa fa-star"></i> <i
															class="fa fa-star"></i>
													</div>
												</div>
												<p>
													<label for="review">Your review</label>
													<textarea name="review" id="" cols="30" rows="10"></textarea>
												</p>
												<p>
													<input type="submit" value="Submit">
												</p>
											</div>
										</div>
									</div>
								</div>

							</div>
						</div>
					</div>


					<div class="related-products-wrapper">
						<h2 class="related-products-title">Related Products</h2>
						<div class="related-products-carousel">
							<c:forEach var="product" items="${productLimit10}">
								<div class="single-product">
									<div class="product-f-image" style="padding: 20px 0;">
										<img
											src="${product.url[0]}"
											alt="">
										<div class="product-hover">
											<a href="" class="add-to-cart-link"><i
												class="fa fa-shopping-cart"></i> Add to cart</a> <a
												href="<c:url value="/product-detail?id=${product.id}"/>"
												class="view-details-link"><i class="fa fa-link"></i> See
												details</a>
										</div>
									</div>

									<h2>
										<a href="<c:url value="/product-detail?id=${product.id}"/>">${product.name}/</a>
									</h2>

									<div class="product-carousel-price">
										<ins>$${product.price}</ins>
										<del>$${product.price}</del>
									</div>
								</div>
							</c:forEach>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>


