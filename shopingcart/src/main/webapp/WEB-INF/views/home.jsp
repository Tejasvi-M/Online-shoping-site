
 <div class="container page-display-size">

      <div class="row">

        <div class="col-lg-3">
		<%@ include file="./shared/sidebar.jsp" %>
        </div>
        <!-- /.col-lg-3 -->

        <div class="col-lg-9">

          <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
            <ol class="carousel-indicators">
              <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
              <div class="carousel-item active">
                <img class="d-block img-fluid carousel-image" src="${fimages}/camera1.jpg" alt="First slide">
              </div>
              <div class="carousel-item">
                <img class="d-block img-fluid carousel-image" src="${fimages}/laptop1.jpg"" alt="Second slide">
              </div>
              <div class="carousel-item">
                <img class="d-block img-fluid carousel-image" src="${fimages}/samsung1.jpg"" alt="Third slide">
              </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
          </div>

          <div class="row">

          
			<c:forEach items="${products}" begin="1" end="4" var="product">
			 <div class="col-lg-4 col-md-6 mb-4">
              <div class="card h-100">
                <a href="${contextRoot}/show/${product.id}/product"><img class="card-img-top img-display" src="${images}/${product.code}.jpg" alt=""></a>
                <div class="card-body">
                  <h4 class="card-title">
                    <a href="${contextRoot}/show/${product.id}/product">${product.name}</a>
                  </h4>
                  <h5>${product.unitPrice}</h5>
                  <p class="card-text">${product.description}</p>
                </div>
                <div class="card-footer">
                  <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                </div>
              </div>
            </div>
			</c:forEach>
          </div>
          <!-- /.row -->

        </div>
        <!-- /.col-lg-9 -->

      </div>
      <!-- /.row -->

    </div>
    <!-- /.container -->
