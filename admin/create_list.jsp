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
	<title>Test Site | Create List</title>
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
	<link rel="stylesheet" type="text/css" href="../assets/plugins/select2/select2_metro.css" />
	<link rel="stylesheet" type="text/css" href="../assets/plugins/chosen-bootstrap/chosen/chosen.css" />
        <link href="../assets/plugins/fancybox/source/jquery.fancybox.css" rel="stylesheet" />
	<link href="../assets/plugins/jquery-file-upload/css/jquery.fileupload-ui.css" rel="stylesheet" />
        <link rel="stylesheet" href="../assets/plugins/data-tables/DT_bootstrap.css" />
        <link href="../assets/plugins/gritter/css/jquery.gritter.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" type="text/css" href="../assets/plugins/jquery-ui/jquery-ui-1.10.1.custom.min.css"/>
	<!-- END PAGE LEVEL STYLES -->
        <!-- BEGIN PLUGINS USED BY X-EDITABLE -->
	
	<link rel="stylesheet" type="text/css" href="../assets/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.css" />
	<link rel="stylesheet" type="text/css" href="../assets/plugins/bootstrap-datepicker/css/datepicker.css" />
	<link rel="stylesheet" type="text/css" href="../assets/plugins/bootstrap-timepicker/compiled/timepicker.css" />
	<link rel="stylesheet" type="text/css" href="../assets/plugins/bootstrap-datetimepicker/css/datetimepicker.css" />
	<!-- END PLUGINS USED BY X-EDITABLE -->
	<!-- BEGIN X-EDITABLE PLUGIN-->
	<link rel="stylesheet" type="text/css" href="../assets/plugins/bootstrap-editable/bootstrap-editable/css/bootstrap-editable.css"/>
	<link rel="stylesheet" type="text/css" href="../assets/plugins/bootstrap-editable/inputs-ext/address/address.css"/>
	<!-- END X-EDITABLE PLUGIN-->        
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
							<li><a href="extra_profile.html"><i class="icon-user"></i> My Profile</a></li>
							<li><a href="javascript:;" id="trigger_fullscreen"><i class="icon-move"></i> Full Screen</a></li>
							<li><a href="extra_lock.html"><i class="icon-lock"></i> Lock Screen</a></li>
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
						
						<li >
							<a href="#">
							Import Customers</a>
						</li>
                                                <li >
							<a href="#">
							Export Customers</a>
						</li>
                                                
						
					</ul>
				</li>
				
                                    <li class="start active">
					<a href="javascript:;">
					<i class="icon-list"></i> 
					<span class="title">Lists</span>
					<span class="arrow "></span>
					</a>
					<ul class="sub-menu">
                                                <li class="start active">
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
						<li >
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
							Create List
							<small>Create a new List</small>
						</h3>
						<ul class="breadcrumb">
							<li>
								<i class="icon-home"></i>
								<a href="index.jsp">Home</a> 
								<span class="icon-angle-right"></span>
							</li>
							<li>
								<a href="#">List</a>
								<span class="icon-angle-right"></span>
							</li>
							<li><a href="#">New List</a></li>
						</ul>
					</div>
				</div>
				<!-- END PAGE HEADER-->
				<!-- BEGIN PAGE CONTENT-->
				<div class="row-fluid">
					<div class="span12">
						<div class="portlet box grey" id="form_wizard_1">
							<div class="portlet-title">
								<div class="caption">
									<i class="icon-reorder"></i> List Wizard - <span class="step-title">Step 1 of 3</span>
								</div>
								<div class="tools hidden-phone">
									<a href="javascript:;" class="collapse"></a>
									<a href="#portlet-config" data-toggle="modal" class="config"></a>
									<a href="javascript:;" class="reload"></a>
									<a href="javascript:;" class="remove"></a>
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
														<span class="desc"><i class="icon-ok"></i>General Information</span>   
														</a>
													</li>
													<li class="span3">
														<a href="#tab2" data-toggle="tab" class="step">
														<span class="number">2</span>
														<span class="desc"><i class="icon-ok"></i>Add Customers</span>   
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
												<h3 class="block">Provide your list details</h3>
												<div class="control-group">
													<label class="control-label">List Name<span class="required">*</span></label>
													<div class="controls">
                                                                                                            <input id="ListName" type="text" class="span6 m-wrap" name="ListName"/>
														<span class="help-inline">Provide the list name</span>
													</div>
												</div>
												
												
											</div>
											
											<div class="tab-pane" id="tab2">
												<h3 class="block">Add Customers to your List</h3>
                                                                                                <div id="success_result"></div>
												<!-- BEGIN EXAMPLE TABLE PORTLET-->
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
                                                                                                                                                <th>Subscriber</th>
                                                                                                                                                <th class="hidden-480">Email</th>
                                                                                                                                                <th class="hidden-480">Contact Number</th>
                                                                                                                                                <th class="hidden-480">Company</th>
                                                                                                                                                <th>Mailing List</th>
                                                                                                                                        </tr>
                                                                                                                                </thead>
                                                                                                                                <tbody>
                                                                                                                                        
                                                                                                                                    <%
                                                                                                                                   
                                                                                                                                    while(rsSubscribers.next()){
                                                                                                                                    %>
                                                                                                                                        <tr class="odd gradeX">
                                                                                                                                                <td><input type="checkbox" name="subscribers<%=rsSubscribers.getString("sub_id")%>" id="subid" class="checkboxes" value="<%=rsSubscribers.getString("sub_id")%>" /></td>
                                                                                                                                                <td><%=rsSubscribers.getString("firstname")%> <%=rsSubscribers.getString("lastname")%></td>
                                                                                                                                                <td class="hidden-480"><a href="mailto:<%=rsSubscribers.getString("email")%>"><%=rsSubscribers.getString("email")%></a></td>
                                                                                                                                                <td class="hidden-480"><%=rsSubscribers.getString("contact_num")%></td>
                                                                                                                                                <td class="center hidden-480"><%=rsSubscribers.getString("company")%></td>
                                                                                                                                                <td class="hidden-480" id="maillist"><div class="btn-group open"><a id="viewlist" class="btn green dropdown-toggle" data-toggle="dropdown" href="#">View <i class="icon-angle-down"></i></a><ul id="list" class="dropdown-menu"></ul></div></td>
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
										<div class="form-actions clearfix">
											<a href="javascript:;" class="btn button-previous">
											<i class="m-icon-swapleft"></i> Back 
											</a>
											<a href="javascript:;" class="btn blue button-next">
											Continue <i class="m-icon-swapright m-icon-white"></i>
											</a>
                                                                                        
                                                                                        <a  class="btn green button-submit">
                                                                                           Submit <i class="m-icon-swapright m-icon-white"></i>
                                                                                        </a>
                                                                                        <div id="buttonRestart"></div>
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
	<script type="text/javascript" src="../assets/plugins/jquery-validation/dist/jquery.validate.min.js"></script>
	<script type="text/javascript" src="../assets/plugins/jquery-validation/dist/additional-methods.min.js"></script>
	<script type="text/javascript" src="../assets/plugins/bootstrap-wizard/jquery.bootstrap.wizard.min.js"></script>
	<script type="text/javascript" src="../assets/plugins/chosen-bootstrap/chosen/chosen.jquery.min.js"></script>
	<script type="text/javascript" src="../assets/plugins/select2/select2.min.js"></script>
        <script src="../assets/plugins/fancybox/source/jquery.fancybox.pack.js"></script>
	<!-- BEGIN:File Upload Plugin JS files-->
	<script src="../assets/plugins/jquery-file-upload/js/vendor/jquery.ui.widget.js"></script>
	<!-- The Templates plugin is included to render the upload/download listings -->
	<script src="../assets/plugins/jquery-file-upload/js/vendor/tmpl.min.js"></script>
	<!-- The Load Image plugin is included for the preview images and image resizing functionality -->
	<script src="../assets/plugins/jquery-file-upload/js/vendor/load-image.min.js"></script>
	<!-- The Canvas to Blob plugin is included for image resizing functionality -->
	<script src="../assets/plugins/jquery-file-upload/js/vendor/canvas-to-blob.min.js"></script>
	<!-- The Iframe Transport is required for browsers without support for XHR file uploads -->
	<script src="../assets/plugins/jquery-file-upload/js/jquery.iframe-transport.js"></script>
	<!-- The basic File Upload plugin -->
	<script src="../assets/plugins/jquery-file-upload/js/jquery.fileupload.js"></script>
	<!-- The File Upload file processing plugin -->
	<script src="../assets/plugins/jquery-file-upload/js/jquery.fileupload-fp.js"></script>
	<!-- The File Upload user interface plugin -->
	<script src="../assets/plugins/jquery-file-upload/js/jquery.fileupload-ui.js"></script>
	<!-- The XDomainRequest Transport is included for cross-domain file deletion for IE8+ -->
	<!--[if gte IE 8]><script src="../assets/plugins/jquery-file-upload/js/cors/jquery.xdr-transport.js"></script><![endif]-->
	<!-- END:File Upload Plugin JS files--> 
        <script type="text/javascript" src="../assets/plugins/select2/select2.min.js"></script>
	<script type="text/javascript" src="../assets/plugins/data-tables/jquery.dataTables.js"></script>
	<script type="text/javascript" src="../assets/plugins/data-tables/DT_bootstrap.js"></script>
      	<script type="text/javascript" src="../assets/plugins/gritter/js/jquery.gritter.js"></script>
	<script type="text/javascript" src="../assets/plugins/jquery.pulsate.min.js"></script>
	<script type="text/javascript" src="../assets/plugins/jquery.bootpag.min.js"></script>
	<!-- END PAGE LEVEL PLUGINS -->
        <!-- BEGIN PLUGINS USED BY X-EDITABLE -->
	<script type="text/javascript" src="../assets/plugins/select2/select2.min.js"></script>
	<script type="text/javascript" src="../assets/plugins/bootstrap-wysihtml5/wysihtml5-0.3.0.js"></script> 
	<script type="text/javascript" src="../assets/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.js"></script>
	<script type="text/javascript" src="../assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
	<script type="text/javascript" src="../assets/plugins/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>
	<script type="text/javascript" src="../assets/plugins/moment.min.js"></script>
	<script type="text/javascript" src="../assets/plugins/jquery.mockjax.js"></script>
	<!-- END PLUGINS USED BY X-EDITABLE -->
	<!-- BEGIN X-EDITABLE PLUGIN -->
	<script type="text/javascript" src="../assets/plugins/bootstrap-editable/bootstrap-editable/js/bootstrap-editable.min.js"></script>
	<script type="text/javascript" src="../assets/plugins/bootstrap-editable/inputs-ext/address/address.js"></script>
	<script type="text/javascript" src="../assets/plugins/bootstrap-editable/inputs-ext/wysihtml5/wysihtml5.js"></script>   
	<!-- END X-EDITABLE PLUGIN -->        
        
	<!-- BEGIN PAGE LEVEL SCRIPTS -->
	<script src="../assets/scripts/app.js"></script>
	<script src="../assets/scripts/form-wizardList.js"></script>
        <script src="../assets/scripts/form-fileupload.js"></script>
        <script src="../assets/scripts/table-managed.js"></script>  
        <script src="../assets/scripts/ui-general.js"></script> 
        <script src="../assets/scripts/ui-jqueryui.js"></script>    
        <script src="../assets/scripts/form-editable.js"></script>
	<!-- END PAGE LEVEL SCRIPTS -->
	<script>
		jQuery(document).ready(function() {       
		   // initiate layout and plugins
		   App.init();
		   FormWizard.init();
                   FormFileUpload.init();
                   TableManaged.init();
                   UIGeneral.init();
                   UIJQueryUI.init();
                   FormEditable.init();
                   
                   
                 
                            
                   $("#viewlist").live('click',function() {
                    
                  
                    
                    var id=""
                    var datali="";
                    $(this).parent().parent().parent().each(function(){
                        
                      
                        $.each(this.cells,function(){
                             
                        //window.alert($(this).children().children().siblings("#list").attr('id'));
                       
                        if($(this).children().children().children().is(".checkboxes"))
                            id=$(this).children().children().children().attr('value');
                        
                       
      
                   });
                    });
                   var url = "display_list.jsp"; // the script where you handle the form input.
                           $.ajax({
                                   type: "POST",
                                  url: url,
                                  async:false,
                                  data: {id:id}, 
                                   success: function(data)
                                   {
                                     datali=data;
                                   }
                                });
                                $(this).siblings("#list").html(datali);
                        });
		
                
                 $(".button-submit").live('click',function() {
                          var listname=$("#ListName").val();
                          var addcol = [];
                  
                          var row = 0;                          
                          $("#sample_1 tbody tr").each(function(){
                          
                              if($(this).children().children().children().children().attr("checked"))
                                   {
                                      addcol[row]=$(this).children().children().children().children().attr("value");
                                      row++; 
                                   }
                                     
                               });  
                               
                               
                                var url = "submitList.jsp"; 
                                $.ajax({
                                    type: "POST",
                                    url: url,
                                   data: {addcol:addcol,listname:listname,row:row}, // serializes the form's elements.
                                    success: function(data)
                                        {
                                           // $("#ConfirmLabel").html("<h3 id=\"ConfirmLabel\" class=\"block\">List Created!</h3>"); 
                                            $("#success_result").html(data);
                                            $('#form_wizard_1 .button-previous').hide();
                                            $('#form_wizard_1 .button-submit').hide();
                                            
                                        }
                                   });
                            return false; // avoid to execute the actual submit of the form.
            }).hide();
                 
                 
    
                }
                );
                 
	</script>
	<!-- END JAVASCRIPTS -->   
</body>
<!-- END BODY -->
</html>