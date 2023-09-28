<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<jsp:include page="head.jsp" flush="true"></jsp:include>
<body>
	<div class="wrapper page-Shop-wrapper">

		<!--== Start Preloader Content ==-->
		<div class="preloader-wrap">
			<div class="preloader">
				<span class="dot"></span>
				<div class="dots">
					<span></span> <span></span> <span></span>
				</div>
			</div>
		</div>
		<!--== End Preloader Content ==-->

		<!--== Start Header Wrapper ==-->
		<jsp:include page="header.jsp" flush="true"></jsp:include>

		<main class="main-content">
			<!--== Start Page Title Area ==-->
			<section class="page-title-area bg-img"
				data-bg-img="<c:url value="/resources/assets/img/photos/bg-page1.jpg"/>">
				<div class="container">
					<div class="row">
						<div class="col-lg-12">
							<div class="page-title-content">
								<h2 class="title">Shop</h2>
								<div class="bread-crumbs">
									<a href="index.html">Home<span class="breadcrumb-sep">></span></a><span
										class="active">Shop</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!--== End Page Title Area ==-->

			<!--== Start Product Area Wrapper ==-->
			<section class="product-area product-shop-inner-area">
				<div class="container">
					<div class="row">
						<div class="col-lg-3 order-1 order-lg-0">
							<div class="sidebar-area inner-right-padding shop-sidebar-area">
								<div class="widget">
									<div class="widget-search-box">
										<form action="#" method="post">
											<div class="form-input-item">
												<label for="search2" class="sr-only">Search Here</label> <input
													type="text" id="search2" placeholder="Search entire store…">
												<button type="submit" class="btn-src">
													<i class="icofont-search-1"></i>
												</button>
											</div>
										</form>
									</div>
								</div>
								<div class="widget">
									<h3 class="widget-title">Categories</h3>
									<div class="widget-custom-menu">
										<ul>
										<c:forEach items="${list}" var="c">
											<li class="has-sub"><a class="collapsed"
												data-bs-toggle="collapse" href="#has-sub1" role="button"
												aria-expanded="false" aria-controls="has-sub1">${c.cateName}</a>
												<ul class="collapse" id="has-sub1" style="">
													<li><a href="product">New in</a></li>
													<li><a href="product">Clothing</a></li>
													<li><a href="product">Coats</a></li>
													<li><a href="product">Jackets</a></li>
													<li><a href="product">Shirts</a></li>
													<li><a href="product">T-shirts</a></li>
													<li><a href="product">Blazers</a></li>
												</ul>
												</li>
										</c:forEach>
											
											
											
											
										</ul>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-9 order-0 order-lg-1">
							<div class="inner-left-padding">
								<div class="shop-toolbar-wrap">
									<div class="shop-toolbar-left">
										<div class="product-showing-status">
											<p class="count-result">Showing 1–12 of 88 results</p>
										</div>
									</div>
									<div class="shop-toolbar-right">
										<div class="product-sorting-menu product-view-count">
											<span class="current">Show 12 <i
												class="lastudioicon-down-arrow"></i></span>
											<ul>
												<li class="active"><a href="product" class="active">Show
														12</a></li>
												<li><a href="product">Show 15</a></li>
												<li><a href="product">Show 30</a></li>
											</ul>
										</div>
										<div class="product-sorting-menu product-view-count">
											<span class="current">Filters <i
												class="lastudioicon-down-arrow"></i></span>
											<ul>
												<li class="active"><a href="product" class="active">Filters</a></li>
												<li><a href="product">Categories</a></li>
												<li><a href="product">Tags</a></li>
											</ul>
										</div>
										<div class="product-sorting-menu product-sorting">
											<span class="current">Sort by Default <i
												class="lastudioicon-down-arrow"></i></span>
											<ul>
												<li class="active"><a href="product" class="active">Sort
														by Default</a></li>
												<li><a href="product">Sort by Popularity</a></li>
												<li><a href="product">Sort by Rated</a></li>
												<li><a href="product">Sort by Latest</a></li>
												<li><a href="product">Sort by Price: <i
														class="lastudioicon-arrow-up"></i></a></li>
												<li><a href="product">Sort by Price: <i
														class="lastudioicon-arrow-down"></i></a></li>
											</ul>
										</div>
										<div class="product-view-mode">
											<nav>
												<div class="nav nav-tabs active" id="nav-tab" role="tablist">
													<button class="nav-link" id="nav-list-tab"
														data-bs-toggle="tab" data-bs-target="#nav-list"
														type="button" role="tab" aria-controls="nav-list"
														aria-selected="false">
														<i class="lastudioicon-list-bullet-2"></i>
													</button>
													<button class="nav-link" id="nav-grid-tab"
														data-bs-toggle="tab" data-bs-target="#nav-grid"
														type="button" role="tab" aria-controls="nav-grid"
														aria-selected="true">
														<i class="lastudioicon-microsoft"></i>
													</button>
												</div>
											</nav>
										</div>
									</div>
								</div>
								<div class="tab-content" id="nav-tabContent">
									<div class="tab-pane fade show active" id="nav-grid"
										role="tabpanel" aria-labelledby="nav-grid-tab">
										<div class="row row-gutter-60 product-items-style4">
											<div class="col-sm-6 col-md-4">
												<!-- Start Product Item -->
												<div class="product-item">
													<div class="product-thumb">
														<a href="product-detail"> <img
															src="<c:url value="/resources/assets/img/shop/13.jpg"/>"
															alt="Moren-Shop"> <span class="thumb-overlay"></span>
														</a>
														<div class="product-action action-style3">
															<a class="action-cart ht-tooltip"
																data-tippy-content="Add to cart" href="shop-cart.html"
																title="Add to cart"> <i
																class="lastudioicon-shopping-cart-3"></i>
															</a> <a class="action-quick-view ht-tooltip"
																data-tippy-content="Quick View"
																href="javascript:void(0);" title="Wishlist"> <i
																class="lastudioicon-search-zoom-in"></i>
															</a> <a class="action-wishlist ht-tooltip"
																data-tippy-content="Add to wishlist"
																href="shop-wishlist.html" title="Add to wishlist"> <i
																class="lastudioicon-heart-2"></i>
															</a> <a class="action-compare ht-tooltip"
																data-tippy-content="Add to compare"
																href="shop-compare.html" title="Add to compare"> <i
																class="lastudioicon-compare"></i>
															</a>
														</div>
													</div>
													<div class="product-info info-style2">
														<div class="content-inner">
															<h4 class="title">
																<a href="product-detail">Believer Delicate
																	Earrings</a>
															</h4>
															<div class="prices">
																<span class="price">£69.00</span>
															</div>
														</div>
													</div>
												</div>
												<!-- End Product Item -->
											</div>
											<div class="col-sm-6 col-md-4">
												<!-- Start Product Item -->
												<div class="product-item">
													<div class="product-thumb">
														<a href="product-detail"> <img
															src="<c:url value="/resources/assets/img/shop/19.jpg"/>"
															alt="Moren-Shop"> <span class="thumb-overlay"></span>
														</a>
														<div class="product-action action-style3">
															<a class="action-cart ht-tooltip"
																data-tippy-content="Add to cart" href="shop-cart.html"
																title="Add to cart"> <i
																class="lastudioicon-shopping-cart-3"></i>
															</a> <a class="action-quick-view ht-tooltip"
																data-tippy-content="Quick View"
																href="javascript:void(0);" title="Wishlist"> <i
																class="lastudioicon-search-zoom-in"></i>
															</a> <a class="action-wishlist ht-tooltip"
																data-tippy-content="Add to wishlist"
																href="shop-wishlist.html" title="Add to wishlist"> <i
																class="lastudioicon-heart-2"></i>
															</a> <a class="action-compare ht-tooltip"
																data-tippy-content="Add to compare"
																href="shop-compare.html" title="Add to compare"> <i
																class="lastudioicon-compare"></i>
															</a>
														</div>
													</div>
													<div class="product-info info-style2">
														<div class="content-inner">
															<h4 class="title">
																<a href="product-detail">Believer Delicate
																	Earrings</a>
															</h4>
															<div class="prices">
																<span class="price">£39.90</span>
															</div>
														</div>
													</div>
												</div>
												<!-- End Product Item -->
											</div>
											<div class="col-sm-6 col-md-4">
												<!-- Start Product Item -->
												<div class="product-item">
													<div class="product-thumb">
														<a href="product-detail"> <img
															src="<c:url value="/resources/assets/img/shop/20.jpg"/>"
															alt="Moren-Shop"> <span class="thumb-overlay"></span>
														</a>
														<div class="product-action action-style3">
															<a class="action-cart ht-tooltip"
																data-tippy-content="Add to cart" href="shop-cart.html"
																title="Add to cart"> <i
																class="lastudioicon-shopping-cart-3"></i>
															</a> <a class="action-quick-view ht-tooltip"
																data-tippy-content="Quick View"
																href="javascript:void(0);" title="Wishlist"> <i
																class="lastudioicon-search-zoom-in"></i>
															</a> <a class="action-wishlist ht-tooltip"
																data-tippy-content="Add to wishlist"
																href="shop-wishlist.html" title="Add to wishlist"> <i
																class="lastudioicon-heart-2"></i>
															</a> <a class="action-compare ht-tooltip"
																data-tippy-content="Add to compare"
																href="shop-compare.html" title="Add to compare"> <i
																class="lastudioicon-compare"></i>
															</a>
														</div>
													</div>
													<div class="product-info info-style2">
														<div class="content-inner">
															<h4 class="title">
																<a href="product-detail">Black & Gold
																	Forever Double Choker Necklace</a>
															</h4>
															<div class="prices">
																<span class="price">£39.90</span>
															</div>
														</div>
													</div>
												</div>
												<!-- End Product Item -->
											</div>
											<div class="col-sm-6 col-md-4">
												<!-- Start Product Item -->
												<div class="product-item">
													<div class="product-thumb">
														<a href="product-detail"> <img
															src="<c:url value="/resources/assets/img/shop/31.jpg"/>"
															alt="Moren-Shop"> <span class="thumb-overlay"></span>
														</a>
														<div class="product-action action-style3">
															<a class="action-cart ht-tooltip"
																data-tippy-content="Add to cart" href="shop-cart.html"
																title="Add to cart"> <i
																class="lastudioicon-shopping-cart-3"></i>
															</a> <a class="action-quick-view ht-tooltip"
																data-tippy-content="Quick View"
																href="javascript:void(0);" title="Wishlist"> <i
																class="lastudioicon-search-zoom-in"></i>
															</a> <a class="action-wishlist ht-tooltip"
																data-tippy-content="Add to wishlist"
																href="shop-wishlist.html" title="Add to wishlist"> <i
																class="lastudioicon-heart-2"></i>
															</a> <a class="action-compare ht-tooltip"
																data-tippy-content="Add to compare"
																href="shop-compare.html" title="Add to compare"> <i
																class="lastudioicon-compare"></i>
															</a>
														</div>
													</div>
													<div class="product-info info-style2">
														<div class="content-inner">
															<h4 class="title">
																<a href="product-detail">Black check
																	texture shirt</a>
															</h4>
															<div class="prices">
																<span class="price">£19.90</span>
															</div>
														</div>
													</div>
												</div>
												<!-- End Product Item -->
											</div>
											<div class="col-sm-6 col-md-4">
												<!-- Start Product Item -->
												<div class="product-item">
													<div class="product-thumb">
														<a href="product-detail"> <img
															src="<c:url value="/resources/assets/img/shop/4.jpg"/>"
															alt="Moren-Shop"> <span class="thumb-overlay"></span>
														</a>
														<div class="product-action action-style3">
															<a class="action-cart ht-tooltip"
																data-tippy-content="Add to cart" href="shop-cart.html"
																title="Add to cart"> <i
																class="lastudioicon-shopping-cart-3"></i>
															</a> <a class="action-quick-view ht-tooltip"
																data-tippy-content="Quick View"
																href="javascript:void(0);" title="Wishlist"> <i
																class="lastudioicon-search-zoom-in"></i>
															</a> <a class="action-wishlist ht-tooltip"
																data-tippy-content="Add to wishlist"
																href="shop-wishlist.html" title="Add to wishlist"> <i
																class="lastudioicon-heart-2"></i>
															</a> <a class="action-compare ht-tooltip"
																data-tippy-content="Add to compare"
																href="shop-compare.html" title="Add to compare"> <i
																class="lastudioicon-compare"></i>
															</a>
														</div>
													</div>
													<div class="product-info info-style2">
														<div class="content-inner">
															<h4 class="title">
																<a href="product-detail">Black check
																	texture shirt</a>
															</h4>
															<div class="prices">
																<span class="price">£19.90</span>
															</div>
														</div>
													</div>
												</div>
												<!-- End Product Item -->
											</div>
											<div class="col-sm-6 col-md-4">
												<!-- Start Product Item -->
												<div class="product-item">
													<div class="product-thumb">
														<a href="product-detail"> <img
															src="<c:url value="/resources/assets/img/shop/33.jpg"/>"
															alt="Moren-Shop"> <span class="thumb-overlay"></span>
														</a>
														<div class="product-action action-style3">
															<a class="action-cart ht-tooltip"
																data-tippy-content="Add to cart" href="shop-cart.html"
																title="Add to cart"> <i
																class="lastudioicon-shopping-cart-3"></i>
															</a> <a class="action-quick-view ht-tooltip"
																data-tippy-content="Quick View"
																href="javascript:void(0);" title="Wishlist"> <i
																class="lastudioicon-search-zoom-in"></i>
															</a> <a class="action-wishlist ht-tooltip"
																data-tippy-content="Add to wishlist"
																href="shop-wishlist.html" title="Add to wishlist"> <i
																class="lastudioicon-heart-2"></i>
															</a> <a class="action-compare ht-tooltip"
																data-tippy-content="Add to compare"
																href="shop-compare.html" title="Add to compare"> <i
																class="lastudioicon-compare"></i>
															</a>
														</div>
													</div>
													<div class="product-info info-style2">
														<div class="content-inner">
															<h4 class="title">
																<a href="product-detail">Blue wide-leg
																	jeans</a>
															</h4>
															<div class="prices">
																<span class="price">£35.90</span>
															</div>
														</div>
													</div>
												</div>
												<!-- End Product Item -->
											</div>
											<div class="col-sm-6 col-md-4">
												<!-- Start Product Item -->
												<div class="product-item">
													<div class="product-thumb">
														<a href="product-detail"> <img
															src="<c:url value="/resources/assets/img/shop/6.jpg"/>"
															alt="Moren-Shop"> <span class="thumb-overlay"></span>
														</a>
														<div class="product-action action-style3">
															<a class="action-cart ht-tooltip"
																data-tippy-content="Add to cart" href="shop-cart.html"
																title="Add to cart"> <i
																class="lastudioicon-shopping-cart-3"></i>
															</a> <a class="action-quick-view ht-tooltip"
																data-tippy-content="Quick View"
																href="javascript:void(0);" title="Wishlist"> <i
																class="lastudioicon-search-zoom-in"></i>
															</a> <a class="action-wishlist ht-tooltip"
																data-tippy-content="Add to wishlist"
																href="shop-wishlist.html" title="Add to wishlist"> <i
																class="lastudioicon-heart-2"></i>
															</a> <a class="action-compare ht-tooltip"
																data-tippy-content="Add to compare"
																href="shop-compare.html" title="Add to compare"> <i
																class="lastudioicon-compare"></i>
															</a>
														</div>
													</div>
													<div class="product-info info-style2">
														<div class="content-inner">
															<h4 class="title">
																<a href="product-detail">Blue wide-leg
																	jeans</a>
															</h4>
															<div class="prices">
																<span class="price">£35.90</span>
															</div>
														</div>
													</div>
												</div>
												<!-- End Product Item -->
											</div>
											<div class="col-sm-6 col-md-4">
												<!-- Start Product Item -->
												<div class="product-item">
													<div class="product-thumb">
														<a href="product-detail"> <img
															src="<c:url value="/resources/assets/img/shop/26.jpg"/>"
															alt="Moren-Shop"> <span class="thumb-overlay"></span>
														</a>
														<div class="product-action action-style3">
															<a class="action-cart ht-tooltip"
																data-tippy-content="Add to cart" href="shop-cart.html"
																title="Add to cart"> <i
																class="lastudioicon-shopping-cart-3"></i>
															</a> <a class="action-quick-view ht-tooltip"
																data-tippy-content="Quick View"
																href="javascript:void(0);" title="Wishlist"> <i
																class="lastudioicon-search-zoom-in"></i>
															</a> <a class="action-wishlist ht-tooltip"
																data-tippy-content="Add to wishlist"
																href="shop-wishlist.html" title="Add to wishlist"> <i
																class="lastudioicon-heart-2"></i>
															</a> <a class="action-compare ht-tooltip"
																data-tippy-content="Add to compare"
																href="shop-compare.html" title="Add to compare"> <i
																class="lastudioicon-compare"></i>
															</a>
														</div>
													</div>
													<div class="product-info info-style2">
														<div class="content-inner">
															<h4 class="title">
																<a href="product-detail">buttoned
																	waistcoat</a>
															</h4>
															<div class="prices">
																<span class="price">£45.90</span>
															</div>
														</div>
													</div>
												</div>
												<!-- End Product Item -->
											</div>
											<div class="col-sm-6 col-md-4">
												<!-- Start Product Item -->
												<div class="product-item">
													<div class="product-thumb">
														<a href="product-detail"> <img
															src="<c:url value="/resources/assets/img/shop/8.jpg"/>"
															alt="Moren-Shop"> <span class="thumb-overlay"></span>
														</a>
														<div class="product-action action-style3">
															<a class="action-cart ht-tooltip"
																data-tippy-content="Add to cart" href="shop-cart.html"
																title="Add to cart"> <i
																class="lastudioicon-shopping-cart-3"></i>
															</a> <a class="action-quick-view ht-tooltip"
																data-tippy-content="Quick View"
																href="javascript:void(0);" title="Wishlist"> <i
																class="lastudioicon-search-zoom-in"></i>
															</a> <a class="action-wishlist ht-tooltip"
																data-tippy-content="Add to wishlist"
																href="shop-wishlist.html" title="Add to wishlist"> <i
																class="lastudioicon-heart-2"></i>
															</a> <a class="action-compare ht-tooltip"
																data-tippy-content="Add to compare"
																href="shop-compare.html" title="Add to compare"> <i
																class="lastudioicon-compare"></i>
															</a>
														</div>
													</div>
													<div class="product-info info-style2">
														<div class="content-inner">
															<h4 class="title">
																<a href="product-detail">Buttoned
																	Waistcoat</a>
															</h4>
															<div class="prices">
																<span class="price">£45.90</span>
															</div>
														</div>
													</div>
												</div>
												<!-- End Product Item -->
											</div>
											<div class="col-sm-6 col-md-4">
												<!-- Start Product Item -->
												<div class="product-item">
													<div class="product-thumb">
														<a href="product-detail"> <img
															src="<c:url value="/resources/assets/img/shop/11.jpg"/>"
															alt="Moren-Shop"> <span class="thumb-overlay"></span>
														</a>
														<div class="product-action action-style3">
															<a class="action-cart ht-tooltip"
																data-tippy-content="Add to cart" href="shop-cart.html"
																title="Add to cart"> <i
																class="lastudioicon-shopping-cart-3"></i>
															</a> <a class="action-quick-view ht-tooltip"
																data-tippy-content="Quick View"
																href="javascript:void(0);" title="Wishlist"> <i
																class="lastudioicon-search-zoom-in"></i>
															</a> <a class="action-wishlist ht-tooltip"
																data-tippy-content="Add to wishlist"
																href="shop-wishlist.html" title="Add to wishlist"> <i
																class="lastudioicon-heart-2"></i>
															</a> <a class="action-compare ht-tooltip"
																data-tippy-content="Add to compare"
																href="shop-compare.html" title="Add to compare"> <i
																class="lastudioicon-compare"></i>
															</a>
														</div>
													</div>
													<div class="product-info info-style2">
														<div class="content-inner">
															<h4 class="title">
																<a href="product-detail">Disappearing Into
																	the Sea Necklace</a>
															</h4>
															<div class="prices">
																<span class="price">£39.90</span>
															</div>
														</div>
													</div>
												</div>
												<!-- End Product Item -->
											</div>
											<div class="col-sm-6 col-md-4">
												<!-- Start Product Item -->
												<div class="product-item">
													<div class="product-thumb">
														<a href="product-detail"> <img
															src="<c:url value="/resources/assets/img/shop/21.jpg"/>"
															alt="Moren-Shop"> <span class="thumb-overlay"></span>
														</a>
														<div class="product-action action-style3">
															<a class="action-cart ht-tooltip"
																data-tippy-content="Add to cart" href="shop-cart.html"
																title="Add to cart"> <i
																class="lastudioicon-shopping-cart-3"></i>
															</a> <a class="action-quick-view ht-tooltip"
																data-tippy-content="Quick View"
																href="javascript:void(0);" title="Wishlist"> <i
																class="lastudioicon-search-zoom-in"></i>
															</a> <a class="action-wishlist ht-tooltip"
																data-tippy-content="Add to wishlist"
																href="shop-wishlist.html" title="Add to wishlist"> <i
																class="lastudioicon-heart-2"></i>
															</a> <a class="action-compare ht-tooltip"
																data-tippy-content="Add to compare"
																href="shop-compare.html" title="Add to compare"> <i
																class="lastudioicon-compare"></i>
															</a>
														</div>
													</div>
													<div class="product-info info-style2">
														<div class="content-inner">
															<h4 class="title">
																<a href="product-detail">Disappearing Into
																	the Sea Necklace</a>
															</h4>
															<div class="prices">
																<span class="price">£49.90</span>
															</div>
														</div>
													</div>
												</div>
												<!-- End Product Item -->
											</div>
											<div class="col-sm-6 col-md-4">
												<!-- Start Product Item -->
												<div class="product-item">
													<div class="product-thumb">
														<a href="product-detail"> <img
															src="<c:url value="/resources/assets/img/shop/87.jpg"/>"
															alt="Moren-Shop"> <span class="thumb-overlay"></span>
														</a>
														<div class="product-action action-style3">
															<a class="action-cart ht-tooltip"
																data-tippy-content="Add to cart" href="shop-cart.html"
																title="Add to cart"> <i
																class="lastudioicon-shopping-cart-3"></i>
															</a> <a class="action-quick-view ht-tooltip"
																data-tippy-content="Quick View"
																href="javascript:void(0);" title="Wishlist"> <i
																class="lastudioicon-search-zoom-in"></i>
															</a> <a class="action-wishlist ht-tooltip"
																data-tippy-content="Add to wishlist"
																href="shop-wishlist.html" title="Add to wishlist"> <i
																class="lastudioicon-heart-2"></i>
															</a> <a class="action-compare ht-tooltip"
																data-tippy-content="Add to compare"
																href="shop-compare.html" title="Add to compare"> <i
																class="lastudioicon-compare"></i>
															</a>
														</div>
													</div>
													<div class="product-info info-style2">
														<div class="content-inner">
															<h4 class="title">
																<a href="product-detail">Double Breasted
																	Blazer</a>
															</h4>
															<div class="prices">
																<span class="price">£49.90</span>
															</div>
														</div>
													</div>
												</div>
												<!-- End Product Item -->
											</div>
										</div>
									</div>
									<div class="tab-pane fade" id="nav-list" role="tabpanel"
										aria-labelledby="nav-list-tab">
										<div class="row">
											<div class="col-12 product-items-list">
												<!-- Start Product Item -->
												<div class="product-item ">
													<div class="product-thumb">
														<a href="product-detail"> <img
															src="<c:url value="/resources/assets/img/shop/list1.jpg"/>"
															alt="Moren-Shop"> <span class="thumb-overlay"></span>
														</a>
														<div class="product-action">
															<a class="action-quick-view ht-tooltip"
																data-tippy-content="Quick View"
																href="javascript:void(0);" title="Wishlist"> <i
																class="lastudioicon-search-zoom-in"></i>
															</a>
														</div>
													</div>
													<div class="product-info">
														<div class="content-inner">
															<h4 class="title">
																<a href="product-detail">Believer Delicate
																	Earrings</a>
															</h4>
															<div class="prices">
																<span class="price">£69.00</span>
															</div>
															<p>Lorem ipsum dolor sit amet, consectetur adipiscing
																elit. Fringilla quis ipsum enim viverra. Enim in morbi
																tincidunt ante luctus tincidunt integer. Sed adipiscing
																vehicula.</p>
															<div class="product-action-btn">
																<a class="btn-add-cart btn-theme" href="shop-cart.html">Add
																	to cart</a> <a class="btn-wishlist"
																	href="shop-wishlist.html"> <i
																	class="lastudioicon-heart-2"></i>
																</a> <a class="btn-compare" href="shop-compare.html"> <i
																	class="lastudioicon-compare"></i>
																</a>
															</div>
														</div>
													</div>
												</div>
												<!-- End Product Item -->

												<!-- Start Product Item -->
												<div class="product-item ">
													<div class="product-thumb">
														<a href="product-detail"> <img
															src="<c:url value="/resources/assets/img/shop/list2.jpg"/>"
															alt="Moren-Shop"> <span class="thumb-overlay"></span>
														</a>
														<div class="product-action">
															<a class="action-quick-view ht-tooltip"
																data-tippy-content="Quick View"
																href="javascript:void(0);" title="Wishlist"> <i
																class="lastudioicon-search-zoom-in"></i>
															</a>
														</div>
													</div>
													<div class="product-info">
														<div class="content-inner">
															<h4 class="title">
																<a href="product-detail">Believer Delicate
																	Earrings</a>
															</h4>
															<div class="prices">
																<span class="price">£39.00</span>
															</div>
															<p>Lorem ipsum dolor sit amet, consectetur adipiscing
																elit. Fringilla quis ipsum enim viverra. Enim in morbi
																tincidunt ante luctus tincidunt integer. Sed adipiscing
																vehicula.</p>
															<div class="product-action-btn">
																<a class="btn-add-cart btn-theme" href="shop-cart.html">Add
																	to cart</a> <a class="btn-wishlist"
																	href="shop-wishlist.html"> <i
																	class="lastudioicon-heart-2"></i>
																</a> <a class="btn-compare" href="shop-compare.html"> <i
																	class="lastudioicon-compare"></i>
																</a>
															</div>
														</div>
													</div>
												</div>
												<!-- End Product Item -->

												<!-- Start Product Item -->
												<div class="product-item ">
													<div class="product-thumb">
														<a href="product-detail"> <img
															src="<c:url value="/resources/assets/img/shop/list3.jpg"/>"
															alt="Moren-Shop"> <span class="thumb-overlay"></span>
														</a>
														<div class="product-action">
															<a class="action-quick-view ht-tooltip"
																data-tippy-content="Quick View"
																href="javascript:void(0);" title="Wishlist"> <i
																class="lastudioicon-search-zoom-in"></i>
															</a>
														</div>
													</div>
													<div class="product-info">
														<div class="content-inner">
															<h4 class="title">
																<a href="product-detail">Black & Gold
																	Forever Double Choker Necklace</a>
															</h4>
															<div class="prices">
																<span class="price">£39.00</span>
															</div>
															<p>Lorem ipsum dolor sit amet, consectetur adipiscing
																elit. Fringilla quis ipsum enim viverra. Enim in morbi
																tincidunt ante luctus tincidunt integer. Sed adipiscing
																vehicula.</p>
															<div class="product-action-btn">
																<a class="btn-add-cart btn-theme" href="shop-cart.html">Add
																	to cart</a> <a class="btn-wishlist"
																	href="shop-wishlist.html"> <i
																	class="lastudioicon-heart-2"></i>
																</a> <a class="btn-compare" href="shop-compare.html"> <i
																	class="lastudioicon-compare"></i>
																</a>
															</div>
														</div>
													</div>
												</div>
												<!-- End Product Item -->

												<!-- Start Product Item -->
												<div class="product-item ">
													<div class="product-thumb">
														<a href="product-detail"> <img
															src="<c:url value="/resources/assets/img/shop/list4.jpg"/>"
															alt="Moren-Shop"> <span class="thumb-overlay"></span>
														</a>
														<div class="product-action">
															<a class="action-quick-view ht-tooltip"
																data-tippy-content="Quick View"
																href="javascript:void(0);" title="Wishlist"> <i
																class="lastudioicon-search-zoom-in"></i>
															</a>
														</div>
													</div>
													<div class="product-info">
														<div class="content-inner">
															<h4 class="title">
																<a href="product-detail">Black check
																	texture shirt</a>
															</h4>
															<div class="prices">
																<span class="price">£19.90</span>
															</div>
															<p>Lorem ipsum dolor sit amet, consectetur adipiscing
																elit. Fringilla quis ipsum enim viverra. Enim in morbi
																tincidunt ante luctus tincidunt integer. Sed adipiscing
																vehicula.</p>
															<div class="product-action-btn">
																<a class="btn-add-cart btn-theme" href="shop-cart.html">Add
																	to cart</a> <a class="btn-wishlist"
																	href="shop-wishlist.html"> <i
																	class="lastudioicon-heart-2"></i>
																</a> <a class="btn-compare" href="shop-compare.html"> <i
																	class="lastudioicon-compare"></i>
																</a>
															</div>
														</div>
													</div>
												</div>
												<!-- End Product Item -->

												<!-- Start Product Item -->
												<div class="product-item ">
													<div class="product-thumb">
														<a href="product-detail"> <img
															src="<c:url value="/resources/assets/img/shop/list5.jpg"/>"
															alt="Moren-Shop"> <span class="thumb-overlay"></span>
														</a>
														<div class="product-action">
															<a class="action-quick-view ht-tooltip"
																data-tippy-content="Quick View"
																href="javascript:void(0);" title="Wishlist"> <i
																class="lastudioicon-search-zoom-in"></i>
															</a>
														</div>
													</div>
													<div class="product-info">
														<div class="content-inner">
															<h4 class="title">
																<a href="product-detail">Black check
																	texture shirt</a>
															</h4>
															<div class="prices">
																<span class="price">£19.90</span>
															</div>
															<p>Lorem ipsum dolor sit amet, consectetur adipiscing
																elit. Fringilla quis ipsum enim viverra. Enim in morbi
																tincidunt ante luctus tincidunt integer. Sed adipiscing
																vehicula.</p>
															<div class="product-action-btn">
																<a class="btn-add-cart btn-theme" href="shop-cart.html">Add
																	to cart</a> <a class="btn-wishlist"
																	href="shop-wishlist.html"> <i
																	class="lastudioicon-heart-2"></i>
																</a> <a class="btn-compare" href="shop-compare.html"> <i
																	class="lastudioicon-compare"></i>
																</a>
															</div>
														</div>
													</div>
												</div>
												<!-- End Product Item -->
											</div>
										</div>
									</div>
								</div>
								<div class="pagination-area">
									<nav>
										<ul class="page-numbers">
											<li><a class="page-number active" href="product">1</a>
											</li>
											<li><a class="page-number" href="product">2</a></li>
											<li><a class="page-number" href="product">3</a></li>
											<li><a class="page-number" href="product">4</a></li>
											<li><a class="page-numbe" href="product">…</a></li>
											<li><a class="page-number" href="product">6</a></li>
											<li><a class="page-number" href="product">7</a></li>
											<li><a class="page-number" href="product">8</a></li>
											<li><a class="page-number next" href="product"> <i
													class="icofont-long-arrow-right"></i>
											</a></li>
										</ul>
									</nav>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!--== End Product Area Wrapper ==-->
		</main>

		<!--== Start Footer Area Wrapper ==-->
		<jsp:include page="footer.jsp" flush="true"></jsp:include>
	</div>
	<jsp:include page="scripts.jsp"></jsp:include>
</body>
</html>