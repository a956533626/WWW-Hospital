
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>ProClinic-医院管理系统Bootstrap4前端框架</title>
	<!-- Fav  Icon Link -->
	<link rel="shortcut icon" type="image/png" href="images/fav.png">
	<!-- Bootstrap core CSS -->
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<!-- themify icons CSS -->
	<link rel="stylesheet" href="css/themify-icons.css">
	<!-- Animations CSS -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Main CSS -->
	<link rel="stylesheet" href="css/styles.css">
	<link rel="stylesheet" href="css/green.css" id="style_theme">
	<link rel="stylesheet" href="css/responsive.css">
	<!-- morris charts -->
	<link rel="stylesheet" href="charts/css/morris.css">
	<!-- jvectormap -->
	<link rel="stylesheet" href="css/jquery-jvectormap.css">
	<link rel="stylesheet" href="datatable/dataTables.bootstrap4.min.css">

	<script src="js/modernizr.min.js"></script>

	<!-- Pre Loader -->
	<div class="loading" style="display: none;">
		<div class="spinner">
			<div class="double-bounce1"></div>
			<div class="double-bounce2"></div>
		</div>
	</div>
	<!--/Pre Loader -->
	
	<div class="wrapper">
		<!-- Page Content -->
		<div id="content">
				<!-- Top Navigation -->
				<div class="container top-brand">
					<nav class="navbar navbar-default">			
						<div class="navbar-header">
							<div class="sidebar-header"> <a href="doctor-index.jsp"><img class="logo" alt="logo" src="images/logo-dark.png"></a>
							</div>
						</div>
						<ul class="nav justify-content-end">
							<li class="nav-item">
								<a class="nav-link">
									<span title="Fullscreen" class="ti-fullscreen fullscreen"></span>
								</a>							
							</li>
							<li class="nav-item">
								<a class="nav-link" data-target=".lochana-modal-lg" data-toggle="modal">
									<span class="ti-search"></span>
								</a>
								<div tabindex="-1" class="modal fade lochana-modal-lg" role="dialog" aria-hidden="true">
									<div class="modal-dialog modal-lorvens">
										<div class="modal-content lochana-box-shadow2">
											<div class="modal-header">
												<h5 class="modal-title">Search Patient/医生:</h5>
												<span class="ti-close" aria-label="Close" data-dismiss="modal">
												</span>
											</div>
											<div class="modal-body">
												<form>
													<div class="form-group">
														<input class="form-control" id="search-term" type="text" placeholder="Type text here">
														<button class="btn btn-lorvens lochana-bg" type="button">
															<span class="ti-location-arrow"></span> Search</button>
													</div>
												</form>
											</div>
										</div>
									</div>
								</div>
							</li>
							<li class="nav-item">
								<a class="nav-link dropdown-toggle" role="button" aria-expanded="false" aria-haspopup="true" href="#" data-toggle="dropdown">
									<span class="ti-announcement"></span>
								</a>
								<div class="dropdown-menu lochana-box-shadow2 notifications animated flipInY">
									<h5>Notifications</h5>
									<a class="dropdown-item" href="#">
										<span class="ti-wheelchair"></span> New Patient Added</a>
									<a class="dropdown-item" href="#">
										<span class="ti-money"></span> Patient payment done</a>
									<a class="dropdown-item" href="#">
										<span class="ti-time"></span>Patient Appointment booked</a>
									<a class="dropdown-item" href="#">
										<span class="ti-wheelchair"></span> New Patient Added</a>
								</div>
							</li>
							<li class="nav-item">
								<a class="nav-link dropdown-toggle" role="button" aria-expanded="false" aria-haspopup="true" href="#" data-toggle="dropdown">
									<span class="ti-user"></span>
								</a>
								<div class="dropdown-menu lochana-box-shadow2 profile animated flipInY">
									<h5>John Willing</h5>
									<a class="dropdown-item" href="#">
										<span class="ti-settings"></span> Settings</a>
									<a class="dropdown-item" href="#">
										<span class="ti-help-alt"></span> Help</a>
									<a class="dropdown-item" href="#">
										<span class="ti-power-off"></span> Logout</a>
								</div>
							</li>
						</ul>
				
					</nav>
				</div>
				<!-- /Top Navigation -->
				<!-- Menu -->
			<div class="container menu-nav">
				<nav class="navbar navbar-expand-lg lochana-bg text-white">
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
					 aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
						<span class="ti-menu text-white"></span>
					</button>
			
					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav mr-auto">
							<li class="nav-item dropdown">
								<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true"
								 aria-expanded="false"><span class="ti-home"></span> 医生首页</a>
								<div class="dropdown-menu">
									<a class="dropdown-item" href="doctor-index.jsp">默认</a>
								</div>
							</li>
							<li class="nav-item dropdown">
								<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true"
								 aria-expanded="false"><span class="ti-wheelchair"></span> 病人管理</a>
								<div class="dropdown-menu">
									<a class="dropdown-item" href="doctor-add-patient.jsp">添加病人信息</a>
									<a class="dropdown-item" href="doctor-patients.jsp">查看病人信息</a>
									<a class="dropdown-item" href="doctor-about-patient.jsp">病人详情</a>
									<a class="dropdown-item" href="doctor-edit-patient.jsp">编辑病人信息</a>
								</div>
							</li>
							
							<li class="nav-item dropdown">
								<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true"
								 aria-expanded="false"><span class="ti-money"></span> 查看已成功预约的时间表</a>
								<div class="dropdown-menu">
									
									<a class="dropdown-item" href="doctor-show-appointments.jsp">所有预约</a>
									
								</div>
							</li>
							<li class="nav-item dropdown active">
								<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true"
								 aria-expanded="false"><span class="ti-key"></span> 为患者制订治疗方案</a>
								<div class="dropdown-menu">
									<a class="dropdown-item" href="doctor-add-treatment.jsp">添加治疗方案</a>
									
								</div>
							</li>
							
							<li class="nav-item dropdown">
								<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true"
								 aria-expanded="false"><span class="ti-file"></span>留言板</a>
								<div class="dropdown-menu">
									
									<a class="dropdown-item" href="doctor-faq.jsp">FAQ</a>
									
								</div>
							</li>
						</ul>
					</div>
				</nav>
			</div>
			<!-- /Menu -->
				<!-- Breadcrumb -->
				<!-- Page Title -->
				<div class="container mt-0">
					<div class="row breadcrumb-bar">
						<div class="col-md-6">
							<h3 class="block-title">为患者制订治疗方案</h3>
						</div>
						<div class="col-md-6">
							<ol class="breadcrumb">
								<li class="breadcrumb-item">
									<a href="doctor-index.jsp">
										<span class="ti-home"></span>
									</a>
								</li>
								<li class="breadcrumb-item">为患者制订治疗方案</li>
								
							</ol>
						</div>
					</div>
				</div>
			<!-- /Page Title -->

			<!-- /Breadcrumb -->
			<!-- Main Content -->
			<div class="container">

				<div class="row">
					<!-- Widget Item -->
					<div class="col-md-12">
						<div class="widget-area-2 lochana-box-shadow">
							<h3 class="widget-title">为患者制订治疗方案</h3>
							<form>
								<div class="form-row">
                                    <div class="form-group col-md-6">
										<label for="patient-name">病人姓名</label>
										<input class="form-control" id="patient-name" type="text" placeholder="病人姓名">
									</div>
									<div class="form-group col-md-6">
										<label for="treatID">treatID</label>
									<input class="form-control" id="treatID" type="text" placeholder="treatID">
									</div>	
									</div>
									<div class="form-group col-md-6">
										<label for="price">price</label>
									<input class="form-control" id="price" type="text" placeholder="price">
									</div>										
									<div class="form-check col-md-12 mb-2">
										<div class="text-left">
											<div class="custom-control custom-checkbox">
												<input class="custom-control-input" id="ex-check-2" type="checkbox">
												<label class="custom-control-label" for="ex-check-2">Please Confirm</label>
											</div>
										</div>
									</div>
									<div class="form-group col-md-6 mb-3">
										<button class="btn btn-primary btn-lg" type="submit">Submit</button>
									</div>
								</div>
							</form>
							<!-- Alerts-->
							<div class="alert alert-success alert-dismissible fade show" role="alert">
								<strong>Successfully Done!</strong> Payment added
								<button class="close" aria-label="Close" type="button" data-dismiss="alert">
									<span aria-hidden="true">×</span>
								</button>
							</div>
							<div class="alert alert-warning alert-dismissible fade show" role="alert">
								<strong>Holy guacamole!</strong> You should check in on some of those fields below.
								<button class="close" aria-label="Close" type="button" data-dismiss="alert">
									<span aria-hidden="true">×</span>
								</button>
							</div>
							<!-- /Alerts-->
						</div>
					</div>
					<!-- /Widget Item -->
				</div>
			</div>
			<!-- /Main Content -->
			<!--Copy Rights-->
			<div class="container">
				<div class="d-sm-flex justify-content-center">
				  <span class="text-muted text-center d-block d-sm-inline-block">Copyright © 2018 <a href="http://www.17sucai.com/" target="_blank">konnectcode</a>. All rights reserved.</span>
				</div>
			</div>
			<!-- /Copy Rights-->
		</div>
		<!-- /Page Content -->
	</div>
	<!-- Back to Top -->
	<a class="back-to-top" id="back-to-top" style="display: none;" href="#">
		<span class="ti-angle-up"></span>
	</a>
	<!-- /Back to Top -->
	<!-- Jquery Library-->
	<script src="js/jquery-3.2.1.min.js"></script>
	<!-- Popper Library-->
	<script src="js/popper.min.js"></script>
	<!-- Bootstrap Library-->
    <script src="js/bootstrap.min.js"></script>
    
    <!-- Datatable  -->
	<script src="datatable/jquery.dataTables.min.js"></script>
	<script src="datatable/dataTables.bootstrap4.min.js"></script>
    
	<!-- Custom Script-->
	<script src="js/custom.js"></script>

