<%@ page language="java"
    import="java.sql.*, manejodb.ManejadoresTablas"
    errorPage="error.jsp" 
%>

<jsp:useBean id="mtbl" scope="session" class="manejodb.ManejadoresTablas" ></jsp:useBean>
<%
          String name=(String) session.getAttribute("name");
          String last_name=(String) session.getAttribute("last_name");

          
          mtbl.setConectar();
          ResultSet rsCampaigns=mtbl.getQuery("select * from campaign;");
          mtbl.setDesconectar(); 


%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
	<meta charset="utf-8" />
	<title>Test Site | Edit Campaign</title>
	<meta content="width=device-width, initial-scale=1.0" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" />
	<!-- BEGIN GLOBAL MANDATORY STYLES -->
	<link href="../assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
	<link href="../assets/plugins/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>
	<link href="../assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
	<link href="../assets/css/style-metro.css" rel="stylesheet" type="text/css"/>
	<link href="../assets/css/style.css" rel="stylesheet" type="text/css"/>
	<link href="../assets/css/style-responsive.css" rel="stylesheet" type="text/css"/>
	<link href="../assets/css/themes/default.css" rel="stylesheet" type="text/css" id="style_color"/>
	<link href="../assets/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css"/>
	<!-- END GLOBAL MANDATORY STYLES -->
	<!-- BEGIN PAGE LEVEL STYLES -->
        <link rel="stylesheet" type="text/css" href="../assets/plugins/bootstrap-datetimepicker/css/datetimepicker.css" />
        <link rel="stylesheet" type="text/css" href="../assets/plugins/bootstrap-datepicker/css/datepicker.css" />
	<link rel="stylesheet" type="text/css" href="../assets/plugins/select2/select2_metro.css" />
	<link rel="stylesheet" type="text/css" href="../assets/plugins/chosen-bootstrap/chosen/chosen.css" />
        <link href="../assets/plugins/jquery-multi-select/css/multi-select-metro.css" rel="stylesheet" type="text/css" media="screen"/>
        <link rel="stylesheet" href="../assets/plugins/data-tables/DT_bootstrap.css" />
	<!-- END PAGE LEVEL STYLES -->
	<link rel="shortcut icon" href="favicon.ico" />
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="page-header-fixed">
	<!-- BEGIN HEADER -->   
	<div class="header navbar navbar-inverse navbar-fixed-top">
		<!-- BEGIN TOP NAVIGATION BAR -->
		<div class="navbar-inner">
			<div class="container-fluid">
				<!-- BEGIN LOGO -->
				<a class="brand" href="index.jsp">
                                   	
                 <img src="../assets/img/logo-big.png" alt=""/>
				</a>
				<!-- END LOGO -->
				<!-- BEGIN RESPONSIVE MENU TOGGLER -->
				<a href="javascript:;" class="btn-navbar collapsed" data-toggle="collapse" data-target=".nav-collapse">
				<img src="../assets/img/menu-toggler.png" alt="" />
				</a>          
				<!-- END RESPONSIVE MENU TOGGLER -->            
				<!-- BEGIN TOP NAVIGATION MENU -->   
                                <ul class="nav pull-right">
					<!-- BEGIN NOTIFICATION DROPDOWN -->   
					
					<!-- END NOTIFICATION DROPDOWN -->
					<!-- BEGIN INBOX DROPDOWN -->
					
					<!-- END INBOX DROPDOWN -->
					<!-- BEGIN TODO DROPDOWN -->
					
					<!-- END TODO DROPDOWN -->               
					<!-- BEGIN USER LOGIN DROPDOWN -->
					<li class="dropdown user">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
						<img alt="" src="../assets/img/avatar1_small.jpg" />
						<span class="username"><%=name%> <%=last_name%></span>
						<i class="icon-angle-down"></i>
						</a>
						<ul class="dropdown-menu">
							<li><a href="#notImplementedId"><i class="icon-user"></i> My Profile</a></li>
							<li><a href="javascript:;" id="trigger_fullscreen"><i class="icon-move"></i> Full Screen</a></li>
							<li><a href="#notImplementedId"><i class="icon-lock"></i> Lock Screen</a></li>
							<li><a href="login.html"><i class="icon-key"></i> Log Out</a></li>
						</ul>
					</li>
					<!-- END USER LOGIN DROPDOWN -->
					<!-- END USER LOGIN DROPDOWN -->
				</ul>
				<!-- END TOP NAVIGATION MENU --> 
			</div>
		</div>
		<!-- END TOP NAVIGATION BAR -->
	</div>
	<!-- END HEADER -->
	<!-- BEGIN CONTAINER -->
	<div class="page-container">
		<!-- BEGIN SIDEBAR -->
		<div class="page-sidebar nav-collapse collapse">
			<!-- BEGIN SIDEBAR MENU -->        
                        
			<ul class="page-sidebar-menu">
				<li>
					<!-- BEGIN SIDEBAR TOGGLER BUTTON -->
					<div class="sidebar-toggler hidden-phone"></div>
					<!-- BEGIN SIDEBAR TOGGLER BUTTON -->
				</li>
				<li>
					<!-- BEGIN RESPONSIVE QUICK SEARCH FORM -->
					<form class="sidebar-search">
						<div class="input-box">
							<a href="javascript:;" class="remove"></a>
							<input type="text" placeholder="Search..." />
							<input type="button" class="submit" value=" " />
						</div>
					</form>
					<!-- END RESPONSIVE QUICK SEARCH FORM -->
				</li>
				<li  >
					<a href="index.jsp">
					<i class="icon-home"></i> 
					<span class="title">Dashboard</span>
					<span class="selected"></span>
					</a>
				</li>
				
				<!-- BEGIN FRONT DEMO -->
				
				<!-- END FRONT DEMO -->
				
				<li >
					<a href="javascript:;">
					<i class="icon-table"></i> 
					<span class="title">Administration</span>
					<span class="arrow "></span>
					</a>
					<ul class="sub-menu">
						<li>
							<a href="admin_manusr.jsp">
							Manage Users</a>
						</li>
                                                <li>
							<a href="admin_images.jsp">
							Manage Images</a>
						</li>
						<li >
							<a href="admin_mandb.jsp">
							Manage Database</a>
						</li>
						
					</ul>
				</li>
                                <li >
					<a href="javascript:;">
					<i class="icon-user"></i> 
					<span class="title">Customers</span>
					<span class="arrow "></span>
					</a>
					<ul class="sub-menu">
						<li >
							<a href="admin_mansub.jsp">
							Manage Customers</a>
						</li>
						
						<li>
							<a href="admin_impsub.jsp">
							Import Customers</a>
						</li>
                                                <li >
                                                    <a target="_blank" href="exportExcelSubscribers.jsp">
							Export Customers</a>
						</li>
						
					</ul>
				</li>
                                <li >
					<a href="javascript:;">
					<i class="icon-list"></i> 
					<span class="title">Lists</span>
					<span class="arrow "></span>
					</a>
					<ul class="sub-menu">
                                                <li >
							<a href="create_list.jsp">
							Create List</a>
						</li>
                                                <li >
							<a href="admin_manlist.jsp">
							Manage Lists</a>
						</li>
						
					</ul>
				</li>
				<li class="start active">
					<a href="javascript:;">
					<i class="icon-briefcase"></i> 
					<span class="title">Campaigns</span>
					<span class="arrow "></span>
					</a>
					<ul class="sub-menu">
						<li  >
							<a href="create_camp.jsp">
							Create Campaign</a>
						</li>
						<li class="start active" >
							<a href="edit_camp.jsp">
							Edit Campaign</a>
						</li>
						<li >
							<a href="del_camp.jsp">
							Delete Campaign</a>
						</li>
                                                <li  >
							<a href="admin_follow.jsp">
							Follow-up Campaign</a>
						</li>
						
					</ul>
				</li>
                                <li>
					<a href="javascript:;">
					<i class="icon-bar-chart"></i> 
					<span class="title">Statistics </span>
					<span class="arrow "></span>
					</a>
					<ul class="sub-menu">
						<li  >
							<a href="viewStats.jsp">
							View Statistics </a>
						</li>
					</ul>
				</li>
                                <li>
					<a href="javascript:;">
					<i class="icon-cogs"></i> 
					<span class="title">Settings </span>
					<span class="arrow "></span>
					</a>
					<ul class="sub-menu">
						<li  >
							<a href="manageSettings.jsp">
							Global Settings </a>
						</li>
					</ul>
				</li>
				
				
				
			</ul>
			<!-- END SIDEBAR MENU -->
		</div>
		<!-- END SIDEBAR -->
		<!-- BEGIN PAGE -->  
		<div class="page-content">
			<!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->
			<div id="portlet-config" class="modal hide">
				<div class="modal-header">
					<button data-dismiss="modal" class="close" type="button"></button>
					<h3>portlet Settings</h3>
				</div>
				<div class="modal-body">
					<p>Here will be a configuration form</p>
				</div>
			</div>
			<!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->
			<!-- BEGIN PAGE CONTAINER-->
			<div class="container-fluid">
				<!-- BEGIN PAGE HEADER-->   
				<div class="row-fluid">
					<div class="span12">
						<!-- BEGIN STYLE CUSTOMIZER -->
						
						<!-- END BEGIN STYLE CUSTOMIZER -->   
						<h3 class="page-title">
							Edit Campaign
							<small>Edit campaign</small>
						</h3>
						<ul class="breadcrumb">
							<li>
								<i class="icon-home"></i>
								<a href="index.jsp">Home</a> 
								<span class="icon-angle-right"></span>
							</li>
							<li>
								<a href="#">Campaign</a>
								<span class="icon-angle-right"></span>
							</li>
							<li><a href="#">Edit Campaign</a></li>
						</ul>
					</div>
				</div>
				<!-- END PAGE HEADER-->
				<!-- BEGIN PAGE CONTENT-->
                                <div class="row-fluid">
							<div class="span12">
								<div class="portlet box light-grey">
									<div class="portlet-title">
										<div class="caption"><i class="icon-reorder"></i>Select Campaign</div>
										<div class="tools">
											<a href="javascript:;" class="collapse"></a>
											<a href="javascript:;" class="reload"></a>
										</div>
									</div>
									<div class="portlet-body form">
										<!-- BEGIN FORM-->
										<form action="#" class="form-horizontal">
											<div class="control-group">
												<label class="control-label">Name</label>
												<div class="controls">
													<select id="select2_sample1" class="span6 select2">
                                                                                                            <%
                                                                                                                while (rsCampaigns.next()){
                                                                                                            %>
                                                                                                            
                                                                                                            <option value="<%=rsCampaigns.getString("camp_id")%>"><%=rsCampaigns.getString("campname")%></option>
                                                                                                            <%
                                                                                                            }
                                                                                                            %>
													</select>
												</div>
											</div>
											
										</form>
										<!-- END FORM-->  
									</div>
								</div>
								<!-- END PORTLET-->
							</div>
						
				<div class="row-fluid">
					<div class="span12">
						<div class="portlet box light-grey" id="form_wizard_1">
							<div class="portlet-title">
								<div class="caption">
									<i class="icon-reorder"></i> Edit Campaign - <span class="step-title">Step 1 of 4</span>
								</div>
								<div class="tools hidden-phone">
									<a href="javascript:;" class="collapse"></a>
									
								</div>
							</div>
							<div class="portlet-body form">
								<form action="#" class="form-horizontal" id="submit_form">
									<div class="form-wizard">
										<div class="navbar steps">
											<div class="navbar-inner">
												<ul class="row-fluid">
													<li class="span3">
														<a href="#tab1" data-toggle="tab" class="step ">
														<span class="number">1</span>
														<span class="desc"><i class="icon-ok"></i> General Information</span>   
														</a>
													</li>
													<li class="span3">
														<a href="#tab2" data-toggle="tab" class="step">
														<span class="number">2</span>
														<span class="desc"><i class="icon-ok"></i> Form Creation</span>   
														</a>
													</li>
													<li class="span3">
														<a href="#tab3" data-toggle="tab" class="step active">
														<span class="number">3</span>
														<span class="desc"><i class="icon-ok"></i> Customer Selection</span>   
														</a>
													</li>
													<li class="span3">
														<a href="#tab4" data-toggle="tab" class="step">
														<span class="number">4</span>
														<span class="desc"><i class="icon-ok"></i> Confirm</span>   
														</a> 
													</li>
												</ul>
											</div>
										</div>
										<div id="bar" class="progress progress-success progress-striped">
											<div class="bar"></div>
										</div>
										<div class="tab-content">
											<div class="alert alert-error hide">
												<button class="close" data-dismiss="alert"></button>
												You have some form errors. Please check below.
											</div>
											<div class="alert alert-success hide">
												<button class="close" data-dismiss="alert"></button>
												Your form validation is successful!
											</div>
											<div class="tab-pane active" id="tab1">
												<h3 class="block">Provide the campaign general information</h3>
												<div class="control-group">
													<label class="control-label">Campaign Name<span class="required">*</span></label>
													<div class="controls">
														<input type="text" class="span3 m-wrap" name="username"/>
														<span class="help-inline">Provide a campaign name</span>
													</div>
												</div>
                                                                                                <div class="control-group">
                                                                                                        <label class="control-label">Closing Date</label>
                                                                                                        <div class="controls">
                                                                                                                <div class="input-append date form_datetime span6">
                                                                                                                    <input size="16" type="text" value="" readonly class="m-wrap" name="date">
                                                                                                                    <span class="add-on"><i class="icon-calendar"></i></span>
                                                                                                                   
                                                                                                                </div>
										</div>
									</div>
												
											</div>
											<div class="tab-pane" id="tab2">
												<h3 class="block">Provide your form fields</h3>
												<div class="control-group">
													<label class="control-label">Subscribers Information<span class="required">*</span></label>
													<div class="controls">
                                                                                                            <select multiple="multiple" id="my-select" name="my-select[]">
                                                                                                                <option value='elem_1'>First Name</option>
                                                                                                                <option value='elem_2'>Last Name</option>
                                                                                                                <option value='elem_3'>Company</option>
                                                                                                                <option value='elem_4'>Email</option>
                                                                                                                <option value='elem_5'>Attending</option>
                                                                                                                <option value='elem_6'>Partner First Name</option>
                                                                                                                <option value='elem_7'>Partner Last Name</option>
                                                                                                                <option value='elem_8'>Travel</option>
                                                                                                                <option value='elem_9'>Accomodation</option>
                                                                                                            </select>
													</div>
												</div>
												
											</div>
											<div class="tab-pane" id="tab3">
												<h3 class="block">Select Subscribers</h3>
												
												
												
						
						<!-- BEGIN EXAMPLE TABLE PORTLET-->
						
								<div class="table-toolbar">
									<div class="btn-group">
										<button class="btn dropdown-toggle" data-toggle="dropdown">Tools <i class="icon-angle-down"></i>
										</button>
										<ul class="dropdown-menu pull-left">
											<li><a href="#">Print</a></li>
											<li><a href="#">Save as PDF</a></li>
											<li><a href="#">Export to Excel</a></li>
										</ul>
									</div>
									<div class="btn-group pull-right">
										
									</div>
								</div>
								<table class="table table-striped table-bordered table-hover" id="sample_1">
									<thead>
										<tr>
											<th style="width:8px;"><input type="checkbox" class="group-checkable" data-set="#sample_1 .checkboxes" /></th>
											<th>First Name</th>
											<th class="hidden-480">Last Name</th>
											<th class="hidden-480">Company</th>
                                                                                        <th class="hidden-480">Email</th>
										
										</tr>
									</thead>
									<tbody>
										<tr class="odd gradeX">
											<td><input type="checkbox" class="checkboxes" value="1" /></td>
											<td>shuxer</td>
											<td class="hidden-480">120</td>
                                                                                        
											<td class="center hidden-480">12 Jan 2012</td>
											<td class="hidden-480"><a href="mailto:shuxer@gmail.com">shuxer@gmail.com</a></td>
										</tr>
										<tr class="odd gradeX">
											<td><input type="checkbox" class="checkboxes" value="1" /></td>
											<td>looper</td>
											<td class="hidden-480">120</td>
                                                                                    
											<td class="center hidden-480">12.12.2011</td>
											    <td class="hidden-480"><a href="mailto:looper90@gmail.com">looper90@gmail.com</a></td>
										</tr>
										<tr class="odd gradeX">
											<td><input type="checkbox" class="checkboxes" value="1" /></td>
											<td>userwow</td>
											
											<td class="hidden-480">20</td>
											<td class="center hidden-480">12.12.2012</td>
											<td class="hidden-480"><a href="mailto:userwow@yahoo.com">userwow@yahoo.com</a></td>
										</tr>
										<tr class="odd gradeX">
											<td><input type="checkbox" class="checkboxes" value="1" /></td>
											<td>user1wow</td>
											
											<td class="hidden-480">20</td>
											<td class="center hidden-480">12.12.2012</td>
                                                                                        <td class="hidden-480"><a href="mailto:userwow@gmail.com">userwow@gmail.com</a></td>
											
										</tr>
										<tr class="odd gradeX">
											<td><input type="checkbox" class="checkboxes" value="1" /></td>
											<td>restest</td>
											
											<td class="hidden-480">20</td>
											<td class="center hidden-480">12.12.2012</td>
											<td class="hidden-480"><a href="mailto:userwow@gmail.com">test@gmail.com</a></td>
										</tr>
										<tr class="odd gradeX">
											<td><input type="checkbox" class="checkboxes" value="1" /></td>
											<td>foopl</td>
											
											<td class="hidden-480">20</td>
											<td class="center hidden-480">19.11.2010</td>
											<td class="hidden-480"><a href="mailto:userwow@gmail.com">good@gmail.com</a></td>
										</tr>
										<tr class="odd gradeX">
											<td><input type="checkbox" class="checkboxes" value="1" /></td>
											<td>weep</td>
											
											<td class="hidden-480">20</td>
											<td class="center hidden-480">19.11.2010</td>
											<td class="hidden-480"><a href="mailto:userwow@gmail.com">good@gmail.com</a></td>
										</tr>
										<tr class="odd gradeX">
											<td><input type="checkbox" class="checkboxes" value="1" /></td>
											<td>coop</td>
											
											<td class="hidden-480">20</td>
											<td class="center hidden-480">19.11.2010</td>
											<td class="hidden-480"><a href="mailto:userwow@gmail.com">good@gmail.com</a></td>
										</tr>
										<tr class="odd gradeX">
											<td><input type="checkbox" class="checkboxes" value="1" /></td>
											<td>pppol</td>
											
											<td class="hidden-480">20</td>
											<td class="center hidden-480">19.11.2010</td>
											<td class="hidden-480"><a href="mailto:userwow@gmail.com">good@gmail.com</a></td>
										</tr>
										<tr class="odd gradeX">
											<td><input type="checkbox" class="checkboxes" value="1" /></td>
											<td>test</td>
											
											<td class="hidden-480">20</td>
											<td class="center hidden-480">19.11.2010</td>
											<td class="hidden-480"><a href="mailto:userwow@gmail.com">good@gmail.com</a></td>
										</tr>
										<tr class="odd gradeX">
											<td><input type="checkbox" class="checkboxes" value="1" /></td>
											<td>userwow</td>
											
											<td class="hidden-480">20</td>
											<td class="center hidden-480">12.12.2012</td>
											<td class="hidden-480"><a href="mailto:userwow@gmail.com">userwow@gmail.com</a></td>
										</tr>
										<tr class="odd gradeX">
											<td><input type="checkbox" class="checkboxes" value="1" /></td>
											<td>test</td>
											
											<td class="hidden-480">20</td>
											<td class="center hidden-480">12.12.2012</td>
											<td class="hidden-480"><a href="mailto:userwow@gmail.com">test@gmail.com</a></td>
										</tr>
										<tr class="odd gradeX">
											<td><input type="checkbox" class="checkboxes" value="1" /></td>
											<td>goop</td>
											
											<td class="hidden-480">20</td>
											<td class="center hidden-480">12.11.2010</td>
											<td class="hidden-480"><a href="mailto:userwow@gmail.com">good@gmail.com</a></td>
										</tr>
										<tr class="odd gradeX">
											<td><input type="checkbox" class="checkboxes" value="1" /></td>
											<td>weep</td>
											
											<td class="hidden-480">20</td>
											<td class="center hidden-480">15.11.2011</td>
											<td class="hidden-480"><a href="mailto:userwow@gmail.com">good@gmail.com</a></td>
										</tr>
										<tr class="odd gradeX">
											<td><input type="checkbox" class="checkboxes" value="1" /></td>
											<td>toopl</td>
											
											<td class="hidden-480">20</td>
											<td class="center hidden-480">16.11.2010</td>
											<td class="hidden-480"><a href="mailto:userwow@gmail.com">good@gmail.com</a></td>
										</tr>
										<tr class="odd gradeX">
											<td><input type="checkbox" class="checkboxes" value="1" /></td>
											<td>userwow</td>
											
											<td class="hidden-480">20</td>
											<td class="center hidden-480">9.12.2012</td>
											<td class="hidden-480"><a href="mailto:userwow@gmail.com">userwow@gmail.com</a></td>
										</tr>
										<tr class="odd gradeX">
											<td><input type="checkbox" class="checkboxes" value="1" /></td>
											<td>tes21t</td>
											
											<td class="hidden-480">20</td>
											<td class="center hidden-480">14.12.2012</td>
											<td class="hidden-480"><a href="mailto:userwow@gmail.com">test@gmail.com</a></td>
										</tr>
										<tr class="odd gradeX">
											<td><input type="checkbox" class="checkboxes" value="1" /></td>
											<td>fop</td>
											
											<td class="hidden-480">20</td>
											<td class="center hidden-480">13.11.2010</td>
											<td class="hidden-480"><a href="mailto:userwow@gmail.com">good@gmail.com</a></td>
										</tr>
										<tr class="odd gradeX">
											<td><input type="checkbox" class="checkboxes" value="1" /></td>
											<td>kop</td>
											
											<td class="hidden-480">20</td>
											<td class="center hidden-480">17.11.2010</td>
											<td class="hidden-480"><a href="mailto:userwow@gmail.com">good@gmail.com</a></td>
										</tr>
										<tr class="odd gradeX">
											<td><input type="checkbox" class="checkboxes" value="1" /></td>
											<td>vopl</td>
											
											<td class="hidden-480">20</td>
											<td class="center hidden-480">19.11.2010</td>
											<td class="hidden-480"><a href="mailto:userwow@gmail.com">good@gmail.com</a></td>
										</tr>
										
									</tbody>
								</table>
							
                                                                   
						<!-- END EXAMPLE TABLE PORTLET-->
					
											</div>
											<div class="tab-pane" id="tab4">
												<h3 class="block">Confirm the campaign creation</h3>
												
											</div>
										</div>
										<div class="form-actions clearfix">
											<a href="javascript:;" class="btn button-previous">
											<i class="m-icon-swapleft"></i> Back 
											</a>
											<a href="javascript:;" class="btn blue button-next">
											Continue <i class="m-icon-swapright m-icon-white"></i>
											</a>
											<a href="javascript:;" class="btn green button-submit">
											Submit <i class="m-icon-swapright m-icon-white"></i>
											</a>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				<!-- END PAGE CONTENT-->         
			</div>
			<!-- END PAGE CONTAINER-->
		</div>
		<!-- END PAGE -->  
	</div>
	<!-- END CONTAINER -->
	<!-- BEGIN FOOTER -->
	<div class="footer">
		<div class="footer-inner">
			2013 © RJ&CO Solutions.
		</div>
		<div class="footer-tools">
			<span class="go-top">
			<i class="icon-angle-up"></i>
			</span>
		</div>
	</div>
	<!-- END FOOTER -->
	<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
	<!-- BEGIN CORE PLUGINS -->   
        <script src="../assets/plugins/jquery-1.10.1.min.js" type="text/javascript"></script>
	<script src="../assets/plugins/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
	<!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
	<script src="../assets/plugins/jquery-ui/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>      
	<script src="../assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="../assets/plugins/bootstrap-hover-dropdown/twitter-bootstrap-hover-dropdown.min.js" type="text/javascript" ></script>
	<!--[if lt IE 9]>
	<script src="assets/plugins/excanvas.min.js"></script>
	<script src="assets/plugins/respond.min.js"></script>  
	<![endif]-->   
	<script src="../assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
	<script src="../assets/plugins/jquery.blockui.min.js" type="text/javascript"></script>  
	<script src="../assets/plugins/jquery.cookie.min.js" type="text/javascript"></script>
	<script src="../assets/plugins/uniform/jquery.uniform.min.js" type="text/javascript" ></script>
	<!-- END CORE PLUGINS -->
	<!-- BEGIN PAGE LEVEL PLUGINS -->
        
        <script type="text/javascript" src="../assets/plugins/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>
	<script type="text/javascript" src="../assets/plugins/jquery-validation/dist/jquery.validate.min.js"></script>
	<script type="text/javascript" src="../assets/plugins/jquery-validation/dist/additional-methods.min.js"></script>
	<script type="text/javascript" src="../assets/plugins/bootstrap-wizard/jquery.bootstrap.wizard.min.js"></script>
	<script type="text/javascript" src="../assets/plugins/chosen-bootstrap/chosen/chosen.jquery.min.js"></script>
	<script type="text/javascript" src="../assets/plugins/select2/select2.min.js"></script>
        <script src="../assets/plugins/jquery-multi-select/js/jquery.multi-select.js" type="text/javascript"></script>
        <script type="text/javascript" src="../assets/plugins/data-tables/jquery.dataTables.js"></script>
	<script type="text/javascript" src="../assets/plugins/data-tables/DT_bootstrap.js"></script>
        
	<!-- END PAGE LEVEL PLUGINS -->
	<!-- BEGIN PAGE LEVEL SCRIPTS -->
	<script src="../assets/scripts/app.js"></script>
	<script src="../assets/scripts/form-wizard.js"></script>  
        <script src="../assets/scripts/form-components.js"></script> 
        <script src="../assets/scripts/table-managed.js"></script>
      
	
	<!-- END PAGE LEVEL SCRIPTS -->
	<script>
		jQuery(document).ready(function() {       
		   // initiate layout and plugins
		   App.init();
		   FormWizard.init();
                   FormComponents.init();
                   TableManaged.init();
                   
                   $('a[href="#notImplementedId"]').click(function(){
                        alert('Not implemented in the Demo version.'); 
                      });
		});
                
	</script>
	<!-- END JAVASCRIPTS -->   
</body>
<!-- END BODY -->
</html>