<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="ftm" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<jsp:include page="head.jsp" flush="true"></jsp:include>
<body>
	<div class="wrapper products-single-wrapper">
		<div class="preloader-wrap">
			<div class="preloader">
				<span class="dot"></span>
				<div class="dots">
					<span></span> <span></span> <span></span>
				</div>
			</div>
		</div>
		<jsp:include page="header.jsp" flush="true"></jsp:include>
		<main class="main-content site-wrapper-reveal">
			<!--== Start Page Title Area ==-->
			<div class="page-title-area page-title-area2">
				<div class="container">
					<div class="row">
						<div class="col-lg-12">
							<div class="page-title-content content-style-2">
								<div class="bread-crumbs">
									<a href="index">Home<span class="breadcrumb-sep">></span></a><a
										href="index">Uncategorized<span class="breadcrumb-sep">></span></a><span
										class="active">Product Detail</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--== End Page Title Area ==-->

			<!--== Start Shop Area ==-->
			<section class="product-area shop-single-product">
				<div class="container">
					<div class="row">
						<div class="col-lg-6">
							<div class="single-product-slider">
								<div class="product-dec-slider-right">
									<div class="single-product-thumb">
										<div class="single-product-thumb-slider">
											
												<div class="thumb-item">
													<a class="lightbox-image" data-fancybox="gallery"
														href="<c:url value='/resources/images/${product.image}'/>">
														<img
														src="<c:url value='/resources/images/${product.image}'/>"
														alt="Image-HasTech">
													</a>
												</div>
											
										</div>
										
									</div>
								</div>
								
							</div>
						</div>
						<div class="col-lg-6">
							<div class="single-product-info">
								<h4 class="title">${product.proName}</h4>
								<div class="product-rating">
									<div class="ratting-icons">
										<i class="lastudioicon-star-rate-1"></i> <i
											class="lastudioicon-star-rate-1"></i> <i
											class="lastudioicon-star-rate-1"></i> <i
											class="lastudioicon-star-rate-1"></i> <i
											class="lastudioicon-star-rate-1"></i>
									</div>
									<div class="review">
										<a href="#/">(1 customer review)</a>
										<p>
											<span></span>99 in stock
										</p>
									</div>
								</div>
								<div class="prices">
									<span class="price">${product.price}</span>
								</div>
								<p class="product-desc">${product.description }</p>
								<div class="quick-product-action">
									<div class="action-top">
										<div class="pro-qty-area">
											<div class="pro-qty">
												<input type="text" id="quantity1" title="Quantity" value="1" />
											</div>
										</div>
										<a class="btn-theme btn-black" href="shop-cart.html">Add
											to cart</a>
									</div>
									<div class="action-bottom">
										<a class="btn-wishlist" href="shop-wishlist.html"><i
											class="labtn-icon labtn-icon-wishlist"></i>Add to wishlist</a> <a
											class="btn-compare" href="shop-compare.html"><i
											class="labtn-icon labtn-icon-compare"></i>Add to compare</a>
									</div>
								</div>
								<div class="product-ratting">
									<div class="product-sku">
										SKU: <span>REF. LA-276</span>
									</div>
								</div>
								<div class="product-categorys">
									<div class="product-category">
										Category: <span>Uncategorized</span>
									</div>
								</div>
								<div class="widget">
									<h3 class="title">Tags:</h3>
									<div class="widget-tags">
										<ul>
											<li><a href="product">Blazer,</a></li>
											<li><a href="product">Fashion,</a></li>
											<li><a href="product">wordpress,</a></li>
										</ul>
									</div>
								</div>
								<div class="product-social-info">
									<a href="#"><span class="lastudioicon-b-facebook"></span></a> <a
										href="#"><span class="lastudioicon-b-twitter"></span></a> <a
										href="#"><span class="lastudioicon-b-linkedin"></span></a> <a
										href="#"><span class="lastudioicon-b-pinterest"></span></a>
								</div>
								<div class="product-nextprev">
									<a href="product-detail"> <i
										class="lastudioicon-arrow-left"></i>
									</a> <a href="product-detail"> <i
										class="lastudioicon-arrow-right"></i>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!--== End Shop Area ==-->

			<!--== Start Shop Tab Area ==-->
			<section class="product-area product-description-review-area">
				<div class="container">
					<div class="row">
						<div class="col-lg-12">
							<div class="product-description-review">
								<ul class="nav nav-tabs product-description-tab-menu" id="myTab"
									role="tablist">
									<li class="nav-item" role="presentation">
										<button class="nav-link active" id="product-desc-tab"
											data-bs-toggle="tab" data-bs-target="#productDesc"
											type="button" role="tab" aria-controls="productDesc"
											aria-selected="true">Description</button>
									</li>
									<li class="nav-item" role="presentation">
										<button class="nav-link" id="product-review-tab"
											data-bs-toggle="tab" data-bs-target="#productReview"
											type="button" role="tab" aria-controls="productReview"
											aria-selected="false">Reviews (1)</button>
									</li>
								</ul>
								<div class="tab-content product-description-tab-content"
									id="myTabContent">
									<div class="tab-pane fade show active" id="productDesc"
										role="tabpanel" aria-labelledby="product-desc-tab">
										<div class="product-desc">
											<div class="product-desc-row">
												<div class="product-thumb">
													<img
														src="<c:url value="/resources/images/${product.image}"/>"
														alt="Moren-Shop">
												</div>
												<div class="product-content">
													<h4>${product.proName}</h4>
													<p>Donec accumsan auctor iaculis. Sed suscipit arcu
														ligula, at egestas magna molestie a. Proin ac ex maximus,
														ultrices justo eget, sodales orci. Aliquam egestas libero
														ac turpis pharetra, in vehicula lacus scelerisque.
														Vestibulum ut sem laoreet, feugiat tellus at.</p>
													<p>Duis efficitur gravida tincidunt. Nam sodales vel
														odio at sollicitudin. Vestibulum sed rutrum nisl. Nulla
														diam arcu, facilisis nec blandit non, interdum et orci.
														Nam aliquam lorem vitae risus molestie convallis.</p>
												</div>
											</div>
										</div>
									</div>
									<div class="tab-pane fade" id="productReview" role="tabpanel"
										aria-labelledby="product-review-tab">
										<div class="product-review">
											<div class="product-review-comments">
												<h4 class="title">
													1 review for <span>Product Simple</span>
												</h4>
												<div class="comment-item">
													<div class="thumb">
														<img
															src="<c:url value="/resources/assets/img/icons/s1.jpg"/>"
															alt="Moren-Shop">
													</div>
													<div class="content">
														<div class="rating">
															<span class="lastudioicon-star-rate-1"></span> <span
																class="lastudioicon-star-rate-1"></span> <span
																class="lastudioicon-star-rate-1"></span> <span
																class="lastudioicon-star-rate-1"></span> <span
																class="lastudioicon-star-rate-1"></span>
														</div>
														<h5 class="meta">
															<span>Agnes Wilson </span> – December 24, 2020
														</h5>
														<span class="review">There are no reviews yet.</span>
													</div>
												</div>
											</div>
											<div class="product-review-form">
												<h3 class="title">Add a review</h3>
												<div class="rating">
													<span class="rating-title">Your rating *</span> <span
														class="lastudioicon-star-rate-2"></span> <span
														class="lastudioicon-star-rate-2"></span> <span
														class="lastudioicon-star-rate-2"></span> <span
														class="lastudioicon-star-rate-2"></span> <span
														class="lastudioicon-star-rate-2"></span>
												</div>
												<form action="#" method="post">
													<div class="review-form-content">
														<div class="row">
															<div class="col-md-12">
																<div class="form-group">
																	<label for="reviewFormTextarea">Your review *</label>
																	<textarea class="form-control" id="reviewFormTextarea"
																		name="comment" rows="7" required></textarea>
																</div>
															</div>
														</div>
														<div class="row">
															<div class="col-md-12">
																<div class="form-group">
																	<button class="btn btn-theme btn-black" type="submit">Submit</button>
																</div>
															</div>
														</div>
													</div>
												</form>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!--== End Shop Tab Area ==-->

			<!--== Start Products Area Wrapper ==-->
			
			<!--== End Products Area Wrapper ==-->
		</main>
		<jsp:include page="footer.jsp" flush="true"></jsp:include>
	</div>
	<jsp:include page="scripts.jsp" flush="true"></jsp:include>
</body>
</html>