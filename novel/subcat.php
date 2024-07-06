<!DOCTYPE html>
<html lang="en">
<?php
include("connection/connect.php");
error_reporting(0);
session_start();
?>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="#">
    <title>Subcat</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/animsition.min.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet"> </head>

<body>

        <header id="header" class="header-scroll top-header headrom">
            <nav class="navbar navbar-dark">
                <div class="container">
                    <button class="navbar-toggler hidden-lg-up" type="button" data-toggle="collapse" data-target="#mainNavbarCollapse">&#9776;</button>
                    <a class="navbar-brand" href="index.php"> <img class="img-rounded" src="images/title.png" height="85" alt=""> </a>
                    <div class="collapse navbar-toggleable-md  float-lg-right" id="mainNavbarCollapse">
                        <ul class="nav navbar-nav">
                            <li class="nav-item"> <a class="nav-link active" href="index.php"><span><i class="fa fa-home f-s-20"></i></span><span><b>Home</b></span></a></li>
                            <li class="nav-item"> <a class="nav-link active" href="subcat.php"><span><i class="fa fa-archive f-s-20"></i></span><span><b>Category</b></span></a></li>
                            
							<?php
						if(empty($_SESSION["user_id"]))
							{
								echo '<li class="nav-item"><a href="login.php" class="nav-link active"><span><i class="fa fa-user f-s-20"></i></span><span><b>Login</b></span></a></li>
							  <li class="nav-item"><a href="registration.php" class="nav-link active"></a> </li>';
							}
						else
							{
									
									
										echo  '<li class="nav-item"><a href="your_orders.php" class="nav-link active"><span><i class="fa fa-heart f-s-20"></i></span><span><b>Orders</b></span></a></li>';
									echo  '<li class="nav-item"><a href="logout.php" class="nav-link active"><span><i class="fa fa-power-off f-s-20"></i></span><span><b>Logout</b></span></a></li>';
							}

						?>
							 
                        </ul>
                    </div>
                </div>
            </nav>
        </header>
        
            <div class="inner-page-hero bg-image" data-image-src="images/back/category.jpeg">
                <div class="container"> </div>
            </div>
			
			<div class="page-wrapper">
            <div class="top-links">
                <div class="container">
                    <ul class="row links">
                       
                        <li class="col-xs-12 col-sm-4 link-item active"><span>1</span><a href="#">Choose Category</a></li>
                        <li class="col-xs-12 col-sm-4 link-item"><span>2</span><a href="#">Pick Your Novel</a></li>
                        <li class="col-xs-12 col-sm-4 link-item"><span>3</span><a href="#">Order and Pay</a></li>
                    </ul>
                </div>
            </div>
			
            <div class="result-show">
                <div class="container">
                    <div class="row">     
                    </div>
                </div>
            </div>
            <section class="restaurants-page">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12 col-sm-5 col-md-5 col-lg-3">
                        </div>
                        <div class="col-xs-12 col-sm-7 col-md-7 col-lg-9">
                            <div class="bg-gray restaurant-entry">
                                <div class="row">
								<?php $ress= mysqli_query($db,"select * from subcat");
									      while($rows=mysqli_fetch_array($ress))
										  {
													
						
													 echo' <div class="col-sm-12 col-md-12 col-lg-8 text-xs-center text-sm-left">
															<div class="entry-logo">
																<a class="img-fluid" href="product.php?res_id='.$rows['s_id'].'" > <img src="admin/images/'.$rows['image'].'" alt=""></a>
															</div>
															<!-- end:Logo -->
															<div class="entry-dscr">
																<h5><a href="product.php?res_id='.$rows['s_id'].'" >'.$rows['title'].'</a></h5> <span>'.$rows['address'].'</span>
																
															</div>
															<!-- end:Entry description -->
														</div>
														
														 <div class="col-sm-12 col-md-12 col-lg-4 text-xs-center">
																<div class="right-content bg-white">
																	<div class="right-review">
																		
																		<a href="product.php?res_id='.$rows['s_id'].'" class="btn btn-purple">View Novels</a> </div>
																</div>
																<!-- end:right info -->
															</div>';
										  }
						
						
						?>
                                    
                                </div>
                
                            </div>
                         
                            
                                
                            </div>
                          
                          
                           
                        </div>
                    </div>
                </div>
            </section>
       
        <footer class="footer">
            <div class="container">
                
          
                <div class="bottom-footer">
                    <div class="row">
                        <div class="col-xs-12 col-sm-3 payment-options color-gray">
                            <h5>Find Us On  !!</h5>
                            <ul>
                               <li class="nav-item"> <a class="nav-link active" href="index.php"><span><i class="fa fa-facebook f-s-40"></i></span></a></li>
                               <li class="nav-item"> <a class="nav-link active" href="index.php"><span><i class="fa fa-instagram f-s-40"></i></span></a></li>
							   <li class="nav-item"> <a class="nav-link active" href="index.php"><span><i class="fa fa-twitter f-s-40"></i></span></a></li>
							   <li class="nav-item"> <a class="nav-link active" href="index.php"><span><i class="fa fa-linkedin f-s-40"></i></span></a></li>
							   <li class="nav-item"> <a class="nav-link active" href="index.php"><span><i class="fa fa-envelope f-s-40"></i></span></a></li>
                            </ul>
                        </div>
                        <div class="col-xs-12 col-sm-4 address color-gray">
                                    <h5>Address</h5>
                                    <p>1086 GreenWood Street,Vorelo<br>Phone: 9845763845<br>Email: lectiophile@gmail.com</p>
									</div>
                                <div class="col-xs-12 col-sm-5 additional-info color-gray">
								<h5>Join with us to get your reading list go on ..... !!</h5>
                                </div>
                    </div>
                </div>
          
            </div>
        </footer>
        </div>
        
    <script src="js/jquery.min.js"></script>
    <script src="js/tether.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/animsition.min.js"></script>
    <script src="js/bootstrap-slider.min.js"></script>
    <script src="js/jquery.isotope.min.js"></script>
    <script src="js/headroom.js"></script>
    <script src="js/foodpicky.min.js"></script>
</body>

</html>