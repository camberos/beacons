<%@ page language="java"
    import="java.sql.*, manejodb.ManejadoresTablas"
    errorPage="error.jsp" 
%>

<jsp:useBean id="mtbl" scope="session" class="manejodb.ManejadoresTablas" ></jsp:useBean>
<%
          String name=(String) session.getAttribute("name");
          String last_name=(String) session.getAttribute("last_name");

          mtbl.setConectar();
          ResultSet rsUsers=mtbl.getQuery("select *  from users,user_roles where users.user_name=user_roles.user_name;");
	  ResultSet rsRoles=mtbl.getQuery("Select * from role;");
          mtbl.setDesconectar(); 
%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
	<meta charset="utf-8" />
	<title>Test site | Manage Subscribers</title>
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
	<link rel="stylesheet" type="text/css" href="../assets/plugins/jquery-ui/jquery-ui-1.10.1.custom.min.css"/>
	<link href="../assets/plugins/bootstrap-modal/css/bootstrap-modal.css" rel="stylesheet" type="text/css"/>
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
							<li><a href="../logout.jsp"><i class="icon-key"></i> Log Out</a></li>
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
				
				<li class="start active">
					<a href="javascript:;">
					<i class="icon-table"></i> 
					<span class="title">Administration</span>
					<span class="arrow "></span>
					</a>
					<ul class="sub-menu">
						<li class="start active">
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
						<li>
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
				<li>
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
						<li  >
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
							Manage Users
							<small>View/Add/Edit Users</small>
						</h3>
						<ul class="breadcrumb">
							<li>
								<i class="icon-home"></i>
								<a href="index.jsp">Home</a> 
								<span class="icon-angle-right"></span>
							</li>
							<li>
								<a href="#">Administration</a>
								<span class="icon-angle-right"></span>
							</li>
							<li><a href="#">Manage Users</a></li>
						</ul>
					</div>
				</div>
				<!-- END PAGE HEADER-->
				<!-- BEGIN PAGE CONTENT-->
                               
						
				<div class="row-fluid">
					<div class="span12">
						<!-- BEGIN EXAMPLE TABLE PORTLET-->
						<div class="portlet box light-grey">
							<div class="portlet-title">
								<div class="caption"><i class="icon-user"></i>View Users</div>
								<div class="actions">
									<div class="btn-group">
										<a class="btn" href="#" data-toggle="dropdown">
										Columns
										<i class="icon-angle-down"></i>
										</a>
										<div id="sample_2_column_toggler" class="dropdown-menu hold-on-click dropdown-checkboxes pull-right">
											<label><input type="checkbox" checked data-column="0">User Name</label>
                                                                                        <label><input type="checkbox" checked data-column="1">Role</label>
											<label><input type="checkbox" checked data-column="1">First Name</label>
											<label><input type="checkbox" checked data-column="2">Last Name</label>
											
										</div>
									</div>
								</div>
							</div>
							<div class="portlet-body">
                                                            <div class="table-toolbar">
									<div class="btn-group">
										<a class=" btn green" data-toggle="modal" href="#responsive">Add User <i class="icon-plus"></i></a>
									</div>
                                                                <div id="responsive" class="modal hide fade" tabindex="-1" data-width="600" >
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
										<h3>Add User</h3>
                                                                                <div class="FormResult"></div>
									</div>
									<div class="modal-body">
										
											<!-- BEGIN FORM-->
											<form id="UserForm" action="submitUser.jsp" method="POST" class="horizontal-form">
													<div id="FormResult"></div>
												<div class="row-fluid">
													<div class="span6 ">
														<div class="control-group">
															<label class="control-label" for="userName">User Name</label>
															<div class="controls">
																<input type="text" name="userName" id="userName" class="m-wrap span12" placeholder="User Name">
																
															</div>
														</div>
													</div>
													<!--/span-->
													<div class="span6 ">
														<div class="control-group ">
															<label class="control-label" for="Role">Role</label>
															<div class="controls">
                                                            <select id="Role" name="Role" class="m-wrap span12">
                                                            <%
                                                                              while (rsRoles.next()){
                                                                              %>
                                                            <option value="<%=rsRoles.getString("role_name")%>"><%=rsRoles.getString("role_name")%></option>
                                                            <%
                                                                                    }
                                                                                %>
                                                            </select>
														
															</div>
														</div>
													</div>
													<!--/span-->
												</div>
												<!--/row-->
                                                                                                <!--row-->
                                                                                                <div class="row-fluid">
													<div class="span6 ">
														<div class="control-group">
															<label class="control-label" for="Pass">Password</label>
															<div class="controls">
																<input type="password" name="Pass" id="Pass" class="m-wrap span12" placeholder="Password">
																
															</div>
														</div>
													</div>
													<!--/span-->
												</div>
                                                                                                <!--/row-->
												<div class="row-fluid">
													<div class="span6 ">
														<div class="control-group">
															<label class="control-label" >First Name</label>
															<div class="controls">
                                                                                                                            <input type="text" name="firstName" id="firstName" class="m-wrap span12"  placeholder="First Name">
															</div>
														</div>
													</div>
													<!--/span-->
													<div class="span6 ">
														<div class="control-group">
															<label class="control-label" >Last Name</label>
															<div class="controls">
																<input type="text" name="lastName" id="lastName" class="m-wrap span12"  placeholder="Last Name">
															</div>
														</div>
													</div>
													<!--/span-->
												</div>
												<!--/row-->        
												
												<!--/row--> 
                                                                                                 <div class="modal-footer">
                                                                                                        <button id="closeButtonId" type="button" data-dismiss="modal" class="btn">Close</button>
                                                                                                        <button id="submitButtonId" type="submit" class="btn blue"><i class="icon-ok"></i> Save</button>
                                                                                                </div>
												
											</form>
											<!-- END FORM--> 
										
                                                                                </div>
                                                                               
								</div>
									<div class="btn-group pull-right">
										<button class="btn dropdown-toggle" data-toggle="dropdown">Tools <i class="icon-angle-down"></i>
										</button>
										<ul class="dropdown-menu pull-right">
											<li><a href="#">Print</a></li>
											<li><a href="#">Save as PDF</a></li>
											<li><a href="#">Export to Excel</a></li>
										</ul>
									</div>
								</div>
								<table class="table table-striped table-bordered table-hover table-full-width" id="sample_2">
									<thead>
										<tr>
											<th>User Name</th>
											<th>Role</th>
											<th class="hidden-480">First Name</th>
											<th class="hidden-480">Last Name</th>
											
                                                                                        <th></th>
                                                                                        <th></th>
										</tr>
									</thead>
									<tbody>
                                                                              <%
                                                                              while (rsUsers.next()){
                                                                              %>
                                                                            
										<tr>
											<td><%=rsUsers.getString("user_name")%></td>
											<td><%=rsUsers.getString("role_name")%></td>
											<td class="hidden-480"><%=rsUsers.getString("name")%></td>
											<td class="hidden-480"><%=rsUsers.getString("last_name")%></td>
											
                                                                                        <td><a class="edit" href="#notImplementedId">Edit</a></td>
                                                                                        <td><a class="delete"  href="#notImplementedId">Delete</a></td>
										</tr>
										<%
                                                                                    }
                                                                                %>
										
									</tbody>
								</table>
							</div>
						</div>
						<!-- END EXAMPLE TABLE PORTLET-->
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
                    2013 &copy; RJ&AMP;CO Solutions.
		</div>
		<div class="footer-tools">
			<span class="go-top">
			<i class="icon-angle-up"></i>
			</span>
		</div>
	</div>
	<!-- END FOOTER -->
	<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
	<!-- BEGIN CORE PLUGINS -->   <script src="../assets/plugins/jquery-1.10.1.min.js" type="text/javascript"></script>
	<script src="../assets/plugins/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
	<!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
	<script src="../assets/plugins/jquery-ui/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>      
	<script src="../assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="../assets/plugins/bootstrap-hover-dropdown/twitter-bootstrap-hover-dropdown.min.js" type="text/javascript" ></script>
	<!--[if lt IE 9]>
	<script src="../assets/plugins/excanvas.min.js"></script>
	<script src="../assets/plugins/respond.min.js"></script>  
	<![endif]-->   
	<script src="../assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
	<script src="../assets/plugins/jquery.blockui.min.js" type="text/javascript"></script>  
	<script src="../assets/plugins/jquery.cookie.min.js" type="text/javascript"></script>
	<script src="../assets/plugins/uniform/jquery.uniform.min.js" type="text/javascript" ></script>
	<!-- END CORE PLUGINS -->
        <!-- BEGIN PAGE LEVEL PLUGINS -->   
	<script src="../assets/plugins/bootstrap-modal/js/bootstrap-modal.js" type="text/javascript" ></script>
	<script src="../assets/plugins/bootstrap-modal/js/bootstrap-modalmanager.js" type="text/javascript" ></script>
	<!-- END PAGE LEVEL PLUGINS -->
        
        
        
	<script src="../assets/scripts/app.js"></script>
        <script src="../assets/scripts/ui-modals.js"></script> 

       
	
	<!-- END PAGE LEVEL SCRIPTS -->
   
    
	<script>
		jQuery(document).ready(function() {       
		   // initiate layout and plugins
		   App.init();
		    UIModals.init();
		   
                  
					 
		     $("#submitButtonId").click(function() {
                        var url = "submitUser.jsp?action=add"; // the script where you handle the form input.
                        $.ajax({
                               type: "POST",
                               url: url,
                               data: $("#UserForm").serialize(), // serializes the form's elements.
                               success: function(data)
                               {
                                      $("#FormResult").html(data);
                               }
                             });

                        return false; // avoid to execute the actual submit of the form.
                    });
                    $('a[href="#notImplementedId"]').click(function(){
                        alert('Not implemented in the Demo version.'); 
                      });
                    
                    
                    $('#closeButtonId').click(function() {
                             location.reload();
                    }); 
					 
		});
                
	</script>
	<!-- END JAVASCRIPTS -->   
</body>
<!-- END BODY -->
</html>