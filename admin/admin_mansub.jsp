<%@ page language="java"
    import="java.sql.*, manejodb.ManejadoresTablas"
    errorPage="error.jsp" 
%>

<jsp:useBean id="mtbl" scope="session" class="manejodb.ManejadoresTablas" ></jsp:useBean>
<%
          String name=(String) session.getAttribute("name");
          String last_name=(String) session.getAttribute("last_name");

          mtbl.setConectar();
          ResultSet rsSubscribers=mtbl.getQuery("select * from subscribers;");
          mtbl.setDesconectar(); 
%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
	<meta charset="utf-8" />
	<title>Test Site | Manage Customers</title>
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
        <link rel="stylesheet" type="text/css" href="../assets/plugins/select2/select2_metro.css" />
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
				<img src="../assets/img/logo-big.png" alt="logo" />
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
							<li class="divider"></li>
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
	<div class="page-container row-fluid">
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
                                <li class="start active">
					<a href="javascript:;">
					<i class="icon-user"></i> 
					<span class="title">Customers</span>
					<span class="arrow "></span>
					</a>
					<ul class="sub-menu">
						<li class="start active">
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
						<!-- BEGIN PAGE TITLE & BREADCRUMB-->
						<h3 class="page-title">
							Manage Customers <small>View/Add/Edit Customers</small>
						</h3>
						<ul class="breadcrumb">
							<li>
								<i class="icon-home"></i>
								<a href="index.jsp">Home</a> 
								<i class="icon-angle-right"></i>
							</li>
							<li>
								<a href="#">Administration</a>
								<i class="icon-angle-right"></i>
							</li>
							<li><a href="#">Manage Customers</a></li>
						</ul>
						<!-- END PAGE TITLE & BREADCRUMB-->
                                                
					</div>
				</div>
				<!-- END PAGE HEADER-->
				<!-- BEGIN PAGE CONTENT-->
				<div class="row-fluid">
					<div class="span12">
						<div class="portlet box light-grey">
							<div class="portlet-title">
								<div class="caption"><i class="icon-user"></i>View Customers</div>
								<div class="actions">
									<div class="btn-group">
										<a class="btn" href="#" data-toggle="dropdown">
										Columns
										<i class="icon-angle-down"></i>
										</a>
										<div id="sample_2_column_toggler" class="dropdown-menu hold-on-click dropdown-checkboxes pull-right">
											<label><input type="checkbox" checked data-column="0">Customer</label>
											<label><input type="checkbox" checked data-column="1">Email</label>
											<label><input type="checkbox" checked data-column="2">Contact Number</label>
											<label><input type="checkbox" checked data-column="3">Company</label>
											<label><input type="checkbox" checked data-column="4">Status</label>
										</div>
									</div>
								</div>
							</div>
							<div class="portlet-body">
                                                            <div class="table-toolbar">
									<div class="btn-group">
										<a class=" btn green" data-toggle="modal" href="#responsive">Add Customers <i class="icon-plus"></i></a>
									</div>
                                                                <div id="responsive" class="modal hide fade" tabindex="-1" data-width="600" >
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
										<h3>Add Customers</h3>
                                                                                
									</div>
									<div class="modal-body">
										
											<!-- BEGIN FORM-->
											<form id="SubscriberForm" action="submitSubscriber.jsp" method="POST" class="horizontal-form">
												<div id="FormResult"></div>
												<div class="row-fluid">
													<div class="span6 ">
														<div class="control-group">
															<label class="control-label" for="firstName">First Name</label>
															<div class="controls">
																<input type="text" name="firstName" id="firstName" class="m-wrap span12" placeholder="First Name">
																
															</div>
														</div>
													</div>
													<!--/span-->
													<div class="span6 ">
														<div class="control-group ">
															<label class="control-label" for="lastName">Last Name</label>
															<div class="controls">
																<input type="text" name="lastName" id="lastName" class="m-wrap span12" placeholder="Last Name">
															</div>
														</div>
													</div>
													<!--/span-->
												</div>
												<!--/row-->
												<div class="row-fluid">
													<div class="span6 ">
														<div class="control-group">
															<label class="control-label" >Email</label>
															<div class="controls">
                                                                                                                            <input type="text" name="Emails" id="Emails" class="m-wrap span12"  placeholder="Email">
															</div>
														</div>
													</div>
													<!--/span-->
													<div class="span6 ">
														<div class="control-group">
															<label class="control-label" >Company</label>
															<div class="controls">
																<input type="text" name="company" id="company" class="m-wrap span12"  placeholder="Company">
															</div>
														</div>
													</div>
													<!--/span-->
												</div>
												<!--/row-->        
												<div class="row-fluid">
													<div class="span6 ">
														<div class="control-group">
															<label class="control-label" >Contact Number</label>
															<div class="controls">
                                                                                                                            <input type="text" name="contact_number" id="contact_number" class="m-wrap span12"  placeholder="Contact Number">
															</div>
														</div>
													</div>
													
												</div>
												<!--/row--> 
                                                                                                 <div class="modal-footer">
                                                                                                        <button id="closebuttonId" type="button" data-dismiss="modal" class="btn">Close</button>
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
                                                                                                        <li><a href="exportExcelSubscribers.jsp?exportToExcel=NO" target="blank">Print</a></li>
                                                                                                        <li><a href="exportPDFSubscribers.jsp" target="blank">Save as PDF</a></li>
                                                                                                        <li><a href="exportExcelSubscribers.jsp?exportToExcel=YES">Export to Excel</a></li>
                                                                                                </ul>
                                                                                        </div>
                                                                                </div>

                                                                                                        <div class="portlet box light-grey">
                                                                                                                <div class="portlet-title">
                                                                                                                        <div class="caption"><i class="icon-globe"></i>Customers Table</div>
                                                                                                                        <div class="tools">
                                                                                                                                <a href="javascript:;" class="collapse"></a>
                                                                                                                                <a href="#portlet-config" data-toggle="modal" class="config"></a>
                                                                                                                                <a href="javascript:;" class="reload"></a>
                                                                                                                                <a href="javascript:;" class="remove"></a>
                                                                                                                        </div>
                                                                                                                </div>
                                                                                                            <div class="portlet-body">
                                                                                                                        
                                                                                                                        <table class="table table-striped table-bordered table-hover" id="sample_1">
                                                                                                                                <thead>
                                                                                                                                        <tr>
                                                                                                                                                <th style="width:8px;"><input type="checkbox" class="group-checkable" data-set="#sample_1 .checkboxes" /></th>
                                                                                                                                                <th>customer</th>
                                                                                                                                                <th class="hidden-480">Email</th>
                                                                                                                                                <th class="hidden-480">Contact Number</th>
                                                                                                                                                <th class="hidden-480">Company</th>
                                                                                                                                                <th>Status</th>
                                                                                                                                        </tr>
                                                                                                                                </thead>
                                                                                                                                <tbody >
                                                                                                                                        
                                                                                                                                    <%
                                                                                                                                    String label="";
                                                                                                                                    while(rsSubscribers.next()){
                                                                                                                                    
                                                                                                                                    %>
                                                                                                                                        <tr class="odd gradeX">
                                                                                                                                                <td><input type="checkbox" name="subscribers<%=rsSubscribers.getString("sub_id")%>" class="checkboxes" value="<%=rsSubscribers.getString("sub_id")%>" /></td>
                                                                                                                                                <td><%=rsSubscribers.getString("firstname")%> <%=rsSubscribers.getString("lastname")%></td>
                                                                                                                                                <td class="hidden-480"><a href="mailto:<%=rsSubscribers.getString("email")%>"><%=rsSubscribers.getString("email")%></a></td>
                                                                                                                                                <td class="hidden-480"><%=rsSubscribers.getString("contact_num")%></td>
                                                                                                                                                <td class="center hidden-480"><%=rsSubscribers.getString("company")%></td>
                                                                                                                                                <%
                                                                                                                                                if (rsSubscribers.getString("status").equals("Enabled"))
                                                                                                                                                            label="label-success";
                                                                                                                                                if (rsSubscribers.getString("status").equals("Disabled"))
                                                                                                                                                            label="label-default";
                                                                                                                                                %>
                                                                                                                                                <td><span class="label <%=label%> "><%=rsSubscribers.getString("status")%></span></td>
                                                                                                                                        </tr>
                                                                                                                                    <%
                                                                                                                                    }
                                                                                                                                    %>
                                                                                                                                        
                                                                                                                                </tbody>
                                                                                                                        </table>
                                                                                                                </div>
                                                                                                                                    
                                                                                                                                    
                                                                                                                                    
                                                                                                        </div>
                                                            
							</div>
						</div>
                                               <!-- END FRONT -->
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
        <script type="text/javascript" src="../assets/plugins/select2/select2.min.js"></script>
	<script type="text/javascript" src="../assets/plugins/data-tables/jquery.dataTables.js"></script>
	<script type="text/javascript" src="../assets/plugins/data-tables/DT_bootstrap.js"></script>
	<script src="../assets/plugins/bootstrap-modal/js/bootstrap-modal.js" type="text/javascript" ></script>
	<script src="../assets/plugins/bootstrap-modal/js/bootstrap-modalmanager.js" type="text/javascript" ></script>
	<!-- END PAGE LEVEL PLUGINS -->
        
        
        
	<script src="../assets/scripts/app.js"></script>
        <script src="../assets/scripts/ui-modals.js"></script> 
        <script src="../assets/scripts/table-managed.js"></script> 
        
	<script>
		jQuery(document).ready(function() {    
		   App.init();
                   UIModals.init();
                   TableManaged.init();
                        

                    //$.get( "querySubscriber.jsp", function( data ) {
                    //      alert( "Data Loaded: " + data );
                    //});
                    
                      $.ajax({
                        url: "querySubscriber.jsp",
                        cache: false,
                        async :false,
                        dataType:"text",
                        success: function(html){
                          $("#frameTableId").html(html);
                        }
                      });

                    $('a[href="#notImplementedId"]').click(function(){
                        alert('Not implemented in the Demo version.'); 
                   });
        
                    $("#submitButtonId").click(function() {
                            var url = "submitSubscriber.jsp"; // the script where you handle the form input.
                            $.ajax({
                                   type: "POST",
                                   url: url,
                                   data: $("#SubscriberForm").serialize(), // serializes the form's elements.
                                   success: function(data)
                                   {
                                       //location.reload();
                                       $("#FormResult").html(data);
                                       
                                   }
                                 });
                            return false; // avoid to execute the actual submit of the form.
                        });  
        
                        $('#closebuttonId').click(function() {
                             location.reload();
                        });          
        
		});
	</script>
        
	<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>