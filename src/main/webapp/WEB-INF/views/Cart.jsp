<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<jsp:include page="head.jsp" flush="true"></jsp:include>
<body>
	<div class="wrapper page-blog-wrapper">

  <!--== Start Preloader Content ==-->
  <div class="preloader-wrap">
    <div class="preloader">
      <span class="dot"></span>
      <div class="dots">
        <span></span>
        <span></span>
        <span></span>
      </div>
    </div>
  </div>
  <!--== End Preloader Content ==-->
<jsp:include page="header.jsp"></jsp:include>
  

  <main class="main-content site-wrapper-reveal">
    <!--== Start Page Title Area ==-->
    <section class="page-title-area bg-img" data-bg-img="assets/img/photos/bg-page5.jpg">
      <div class="container">
        <div class="row">
          <div class="col-lg-12">
            <div class="page-title-content">
              <h2 class="title">Cart</h2>
              <div class="bread-crumbs"><a href="index">Home<span class="breadcrumb-sep">></span></a><span class="active">Cart</span></div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!--== Start Cart Area Wrapper ==-->
    <section class="product-area cart-page-area">
      <div class="container">
        <div class="row">
          <div class="col-lg-8">
            <div class="shipping-info">
<!--               <div class="loading-bar"> -->
<!--                 <div class="load-percent"></div> -->
<!--                 <div class="label-free-shipping"> -->
<!--                   <div class="free-shipping svg-icon-style"> -->
<!--                     <span class="svg-icon" id="svg-icon-shipping2" data-svg-icon="assets/img/icons/shop1.svg"></span> -->
<!--                   </div> -->
<!--                   <p>Spend £101.10 to get Free Shipping</p> -->
<!--                 </div> -->
<!--               </div> -->
            </div>
            <div class="cart-table-wrap">
              <div class="cart-table table-responsive">
                <table>
                  <thead>
                    <tr>
                      <th class="pro-remove"> </th>
                      <th class="pro-thumbnail"> </th>
                      <th class="pro-name">Product</th>
                      <th class="pro-price">Price</th>
                      <th class="pro-quantity">Quantity</th>
                      <th class="pro-subtotal">Subtotal</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td class="pro-remove"><i class="lastudioicon-e-remove"></i></td>
                      <td class="pro-thumbnail">
                        <div class="pro-info">
                          <div class="pro-img">
                            <a href="shop-single-product.html"><img src="assets/img/shop/15.jpg" alt="Moren-Shop"></a>
                          </div>
                        </div>
                      </td>
                      <td class="pro-name"><span>I’m a Unicorn Earrings</span></td>
                      <td class="pro-price"><span>£69.00</span></td>
                      <td class="pro-quantity">
                        <div class="action-top">
                          <div class="pro-qty-area">
                            <div class="pro-qty">
                              <input type="text" id="quantity" title="Quantity" value="1" />
                            </div>
                          </div>
                        </div>
                      <td class="pro-subtotal"><span>£69.00</span></td>
                    </tr>
                    <tr>
                      <td class="pro-remove"><i class="lastudioicon-e-remove"></i></td>
                      <td class="pro-thumbnail">
                        <div class="pro-info">
                          <div class="pro-img">
                            <a href="shop-single-product.html"><img src="assets/img/shop/1.jpg" alt="Moren-Shop"></a>
                          </div>
                        </div>
                      </td>
                      <td class="pro-name"><span>Knit cropped cardigan</span></td>
                      <td class="pro-price"><span>£29.90</span></td>
                      <td class="pro-quantity">
                        <div class="action-top">
                          <div class="pro-qty-area">
                            <div class="pro-qty">
                              <input type="text" id="quantity1" title="Quantity" value="1" />
                            </div>
                          </div>
                        </div>
                      </td>
                      <td class="pro-subtotal"><span>£29.90</span></td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>
            <div class="coupon-action">
              <div class="coupon">
                <input type="text" name="coupon_code" class="input-text" id="coupon_code" value="" placeholder="Coupon code">
                <button type="submit" class="button" name="apply_coupon" value="Apply coupon">Apply coupon</button>
              </div>
              <button type="submit" class="button" name="apply_coupon" value="Apply coupon">Update cart</button>
            </div>
          </div>
          <div class="col-lg-4">
            <div class="cart-payment">
              <div class="cart-subtotal">
                <h2 class="title">Cart totals</h2>
                <table>
                  <tbody>
                    <tr>
                      <th>Subtotal</th>
                      <td><span class="amount">£147.00</span></td>
                    </tr>
                    <tr class="shipping-totals">
                      <th>Shipping</th>
                      <td>
                        <ul>
                          <li>
                            <div class="form-check">
                              <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                              <label class="form-check-label" for="flexRadioDefault1">Flat rate: <span class="amount">£50.00</span></label>
                            </div>
                            <div class="form-check">
                              <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" checked>
                              <label class="form-check-label" for="flexRadioDefault2">Local pickup</label>
                            </div>
                          </li>
                        </ul>
                        <p>Shipping options will be updated during checkout.</p>
                        <p>Calculate shipping</p>
                      </td>
                    </tr>
                    <tr class="amount-total">
                      <th>Total</th>
                      <td><span class="amount">£197.00</span></td>
                    </tr>
                  </tbody>
                </table>
              </div>
              <a class="btn-theme" href="shop-checkout.html">Proceed to Checkout</a>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--== End Cart Area Wrapper ==-->

    <!--== Start Category Area Wrapper ==-->
    <section class="category-area product-category5-area">
      <div class="container">
        <div class="row">
          <div class="col-md-8">
            <div class="section-title">
              <h2 class="title">You may be interested in…</h2>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-6 col-lg-3">
            <!-- Start Product Item -->
            <div class="product-item">
              <div class="product-thumb">
                <a href="shop-single-product.html">
                  <img src="assets/img/shop/80.jpg" alt="Moren-Shop">
                  <span class="bg-thumb" data-bg-img="assets/img/shop/81.jpg"></span>
                  <span class="thumb-overlay"></span>
                </a>
                <div class="product-action action-style3">
                  <a class="action-cart ht-tooltip" data-tippy-content="Add to cart" href="shop-cart.html" title="Add to cart">
                    <i class="lastudioicon-shopping-cart-3"></i>
                  </a>
                  <a class="action-quick-view ht-tooltip" data-tippy-content="Quick View" href="javascript:void(0);" title="Wishlist">
                    <i class="lastudioicon-search-zoom-in"></i>
                  </a>
                  <a class="action-wishlist ht-tooltip" data-tippy-content="Add to wishlist" href="shop-wishlist.html" title="Add to wishlist">
                    <i class="lastudioicon-heart-2"></i>
                  </a>
                  <a class="action-compare ht-tooltip" data-tippy-content="Add to compare" href="shop-compare.html" title="Add to compare">
                    <i class="lastudioicon-compare"></i>
                  </a>
                </div>
              </div>
              <div class="product-info">
                <div class="content-inner">
                  <h4 class="title"><a href="shop-single-product.html">Product Variable</a></h4>
                  <div class="prices">
                    <span class="price">£30.00</span>
                    <span class="price">–</span>
                    <span class="price">£50.00</span>
                  </div>
                </div>
              </div>
              <div class="product-size-slect">
                <ul>
                  <li class="size ht-tooltip" data-tippy-content="L">L</li>
                  <li class="size ht-tooltip" data-tippy-content="M">M</li>
                  <li class="size ht-tooltip" data-tippy-content="S">S</li>
                  <li class="size ht-tooltip" data-tippy-content="XL">XS</li>
                </ul>
              </div>
              <div class="product-color-slect">
                <ul>
                  <li class="bg-color-brown ht-tooltip" data-tippy-content="brown"></li>
                  <li class="bg-color-red ht-tooltip" data-tippy-content="red"></li>
                  <li class="bg-color-violet ht-tooltip" data-tippy-content="violet"></li>
                </ul>
              </div>
            </div>
            <!-- End Product Item -->
          </div>
        </div>
      </div>
    </section>
    <!--== End Category Area Wrapper ==-->

    <!--== Start Divider Area Wrapper ==-->
    <section class="divider-area bg-overlay4 bg-img" data-bg-img="assets/img/photos/bg-d7.jpg">
      <div class="container">
        <div class="row">
          <div class="col-md-8 m-auto">
            <div class="divider-content divider-content-style5">
              <h2>HOT TREND</h2>
              <a href="shop.html" class="btn-theme btn-border">shop now</a>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--== End Divider Area Wrapper ==-->

    <!--== Start Featured Area Wrapper ==-->
    <section class="featured-area featured-style3-area">
      <div class="container">
        <div class="row featured-style3">
          <div class="col-sm-6 col-md-4">
            <div class="featured-item">
              <div class="content">
                <span class="icon">
                  <svg xmlns="http://www.w3.org/2000/svg" width="76" height="46" fill="none" viewBox="0 0 76 46"><path fill="currentColor" d="M74.757 45.702H1.243a1.08 1.08 0 0 1-1.08-1.08V33.593a1.081 1.081 0 0 1 .864-1.06 9.73 9.73 0 0 0 0-19.07 1.081 1.081 0 0 1-.865-1.059V1.378A1.081 1.081 0 0 1 1.243.297h73.514a1.08 1.08 0 0 1 1.08 1.081v11.027a1.082 1.082 0 0 1-.864 1.06 9.73 9.73 0 0 0 0 19.07 1.081 1.081 0 0 1 .865 1.06V44.62a1.08 1.08 0 0 1-1.081 1.081zM2.324 43.54h71.352v-9.097a11.892 11.892 0 0 1 0-22.887V2.46H2.324v9.097a11.892 11.892 0 0 1 0 22.887v9.097z"></path><path fill="currentColor" d="M54.216 6.39a1.081 1.081 0 0 1-1.08-1.081V1.378a1.081 1.081 0 0 1 2.161 0v3.93a1.081 1.081 0 0 1-1.08 1.082zm0 9.828a1.08 1.08 0 0 1-1.08-1.08v-3.932a1.081 1.081 0 0 1 2.161 0v3.931a1.081 1.081 0 0 1-1.08 1.081zm0 9.828a1.08 1.08 0 0 1-1.08-1.081v-3.93a1.081 1.081 0 0 1 2.161 0v3.931a1.081 1.081 0 0 1-1.08 1.08zm0 9.828a1.08 1.08 0 0 1-1.08-1.08v-3.931a1.082 1.082 0 0 1 2.161 0v3.93a1.081 1.081 0 0 1-1.08 1.081zm0 9.828a1.08 1.08 0 0 1-1.08-1.08V40.69a1.082 1.082 0 0 1 2.161 0v3.931a1.081 1.081 0 0 1-1.08 1.081zm-33.59-11.305a1.081 1.081 0 0 1-.764-1.846l20.034-20.045a1.082 1.082 0 1 1 1.529 1.529L21.39 34.08a1.082 1.082 0 0 1-.764.316zm16.704.516a4.993 4.993 0 1 1 4.994-4.994 5 5 0 0 1-4.993 4.994zm0-7.826a2.832 2.832 0 1 0 .001 5.663 2.832 2.832 0 0 0 0-5.663zm-13.796-6.079a4.994 4.994 0 1 1 4.994-4.995 5 5 0 0 1-4.994 4.995zm0-7.826a2.832 2.832 0 1 0 0 5.663 2.832 2.832 0 0 0 0-5.663z"></path></svg>       </span>
                <div class="inner-content">
                  <h4 class="title">NEW DISCOUNT</h4>
                  <p>Lorem ipsum dolor sit amet, id pericula appe llantur eam, mea.</p>
                </div>
              </div>
            </div>
          </div>
          <div class="col-sm-6 col-md-4">
            <div class="featured-item mt-xs-30">
              <div class="content">
                <span class="icon">
                  <svg xmlns="http://www.w3.org/2000/svg" width="76" height="72" fill="none" viewBox="0 0 76 72"><path fill="currentColor" d="M64.733 71.123H11.267a4.432 4.432 0 0 1-4.422-4.42V31.614a1.081 1.081 0 0 1 1.081-1.08h60.147a1.081 1.081 0 0 1 1.082 1.08v35.089a4.432 4.432 0 0 1-4.422 4.42zM9.008 32.695v34.008a2.263 2.263 0 0 0 2.26 2.26h53.465a2.262 2.262 0 0 0 2.26-2.26V32.695H9.007z"></path><path fill="currentColor" d="M73.085 32.695H2.915a2.755 2.755 0 0 1-2.753-2.749v-8.357a2.755 2.755 0 0 1 2.753-2.751h70.17a2.755 2.755 0 0 1 2.753 2.751v8.357a2.755 2.755 0 0 1-2.753 2.75zM2.915 21a.59.59 0 0 0-.59.59v8.356a.59.59 0 0 0 .59.59h70.17a.59.59 0 0 0 .59-.59v-8.357a.59.59 0 0 0-.59-.589H2.915z"></path><path fill="currentColor" d="M40.23 21a1.081 1.081 0 0 1-1.032-1.404c1.336-4.276 3.732-10.054 7.554-13.333A7.946 7.946 0 0 1 57.08 18.34a17.38 17.38 0 0 1-4.117 2.558 1.082 1.082 0 0 1-1.267-1.718c.102-.104.224-.186.36-.242a15.29 15.29 0 0 0 3.614-2.235 5.782 5.782 0 1 0-7.507-8.796C44.55 11 42.29 16.963 41.265 20.242A1.081 1.081 0 0 1 40.23 21z"></path><path fill="currentColor" d="M40.23 21a1.08 1.08 0 0 1-1.031-.757c-1.281-4.094-4.108-11.54-8.636-15.42a7.433 7.433 0 0 0-9.66 11.3 19.242 19.242 0 0 0 4.55 2.816 1.08 1.08 0 1 1-.908 1.962 21.321 21.321 0 0 1-5.052-3.136A9.597 9.597 0 0 1 31.968 3.178c4.695 4.02 7.645 11.147 9.297 16.419A1.081 1.081 0 0 1 40.23 21zm3.932 50.123H31.838a1.081 1.081 0 0 1-1.081-1.08v-38.43a1.081 1.081 0 0 1 1.08-1.08h12.325a1.081 1.081 0 0 1 1.081 1.08v38.428a1.081 1.081 0 0 1-1.08 1.081zM32.92 68.961h10.16V32.695H32.92v36.266z"></path></svg></span>
                <div class="inner-content">
                  <h4 class="title">GIFT VOUCHERS</h4>
                  <p>Lorem ipsum dolor sit amet, id pericula appe llantur eam, mea.</p>
                </div>
              </div>
            </div>
          </div>
          <div class="col-sm-6 col-md-4">
            <div class="featured-item mt-sm-30">
              <div class="content">
                <span class="icon">
                  <svg xmlns="http://www.w3.org/2000/svg" width="76" height="74" fill="none" viewBox="0 0 76 74"><path fill="currentColor" d="M74.757 73.649H1.243a1.08 1.08 0 0 1-1.08-1.081V20.4a1.081 1.081 0 0 1 1.08-1.081h73.514a1.08 1.08 0 0 1 1.08 1.081v52.168a1.08 1.08 0 0 1-1.08 1.08zM2.324 71.487h71.352V21.48H2.324v50.006z"></path><path fill="currentColor" d="M74.757 21.481H1.243a1.08 1.08 0 0 1-.865-1.73L14.607.785a1.081 1.081 0 0 1 .864-.432H60.53a1.081 1.081 0 0 1 .865.432l14.228 18.968a1.081 1.081 0 0 1-.865 1.73zM3.405 19.32h69.19L59.988 2.514H16.012L3.405 19.319z"></path><path fill="currentColor" d="M47.19 21.481H28.81a1.082 1.082 0 0 1-1.059-1.297l3.784-18.968a1.08 1.08 0 0 1 1.06-.864h10.81a1.08 1.08 0 0 1 1.06.864l3.784 18.971a1.08 1.08 0 0 1-1.06 1.297v-.003zM30.128 19.32H45.87L42.52 2.514h-9.038L30.13 19.319z"></path><path fill="currentColor" d="M47.19 41.848a1.08 1.08 0 0 1-.685-.245L38 34.653l-8.505 6.95a1.08 1.08 0 0 1-1.765-.836V20.4a1.08 1.08 0 0 1 1.08-1.081h18.38a1.08 1.08 0 0 1 1.08 1.081v20.367a1.08 1.08 0 0 1-1.08 1.08zM38 32.176c.25 0 .491.087.684.245l7.424 6.066V21.48H29.892v17.006l7.424-6.067a1.08 1.08 0 0 1 .684-.244z"></path></svg></span>
                <div class="inner-content">
                  <h4 class="title">FREE DELIVERY</h4>
                  <p>Lorem ipsum dolor sit amet, id pericula appe llantur eam, mea.</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--== End Featured Area Wrapper ==-->
  </main>

<jsp:include page="footer.jsp"></jsp:include>
  
</div>
	<jsp:include page="scripts.jsp"></jsp:include>
</body>
</html>