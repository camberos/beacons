<%@ page language="java"
    import="java.sql.*, manejodb.ManejadoresTablas"
    errorPage="error.jsp" 
%>

<jsp:useBean id="mtbl" scope="session" class="manejodb.ManejadoresTablas" ></jsp:useBean>
<%
          String name=(String) session.getAttribute("name");
          String last_name=(String) session.getAttribute("last_name");
          String selectcamp = request.getParameter("selectcamp");

          mtbl.setConectar();
           ResultSet rsCampaign=mtbl.getQuery("select campname, camp_id from campaign;");
          mtbl.setDesconectar(); 
%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
	<meta charset="utf-8" />
	<title>Test Site | Follow-up Campaign</title>
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
						<span class="username">Bob Nilson</span>
						<i class="icon-angle-down"></i>
						</a>
						<ul class="dropdown-menu">
							<li><a href="extra_profile.html"><i class="icon-user"></i> My Profile</a></li>
							<li><a href="javascript:;" id="trigger_fullscreen"><i class="icon-move"></i> Full Screen</a></li>
							<li><a href="extra_lock.html"><i class="icon-lock"></i> Lock Screen</a></li>
							<li><a href="logout.jsp"><i class="icon-key"></i> Log Out</a></li>
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
						<li  >
							<a href="edit_camp.jsp">
							Edit Campaign</a>
						</li>
						<li >
							<a href="del_camp.jsp">
							Delete Campaign</a>
						</li>
                                                <li class="start active" >
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
							Follow-up Campaign
							<small>Follow-up campaign</small>
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
							<li><a href="#">Follow-up Campaign</a></li>
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
										<form id="CampaignForm" name="CampaignForm" action="selectcampaign.jsp" method="POST" class="horizontal-form">
											<div class="control-group">
												<label class="control-label">Name</label>
												<div class="controls">
                                                                                                    <select id="selectcampaign" name="selectcampaign" class="span6 select2">
                                                                                                        <option value="">Please select a campaign</option>
                                                                                                                                          <%
                                                                              while (rsCampaign.next()){
                                                                              %>
                                                            <option value="<%=rsCampaign.getString("camp_id")%>"><%=rsCampaign.getString("campname")%></option>
                                                            <%
                                                                                    }
                                                                                %>
                                                                                                			
													</select>
                                                                               
												</div>
											</div>
                                                                                </form>	
                                                                                <div id="FormResult" name="FormResult"></div>
											
										
										
										<!-- END FORM-->  
									</div>
								</div>
								<!-- END PORTLET-->
							</div>
						
				<div class="row-fluid">
					<div class="span12">
						<!-- BEGIN EXAMPLE TABLE PORTLET-->
						<div class="portlet box light-grey">
							<div class="portlet-title">
								<div class="caption"><i class="icon-globe"></i>Follow-up Campaign</div>
								<div class="actions">
									<div class="btn-group">
										<a class="btn" href="#" data-toggle="dropdown">
										Columns
										<i class="icon-angle-down"></i>
										</a>
										<div id="sample_2_column_toggler" class="dropdown-menu hold-on-click dropdown-checkboxes pull-right">
											<label><input type="checkbox" checked data-column="0">First Name</label>
											<label><input type="checkbox" checked data-column="1">Last Name</label>
											<label><input type="checkbox" checked data-column="2">Company</label>
											<label><input type="checkbox" checked data-column="3">Attending</label>
											<label><input type="checkbox" checked data-column="4">Bring Partner</label>
										</div>
									</div>
								</div>
							</div>
							<div class="portlet-body flip-scroll">
                                                            <div class="table-toolbar">
									<div class="btn-group">
										<a class=" btn green" data-toggle="modal" href="#responsive">Add Subscribers to the Campaign <i class="icon-plus"></i></a>
									</div>
                                                                        <div class="btn-group" id="resend">
										
							         </div> 
                                                                <div id="responsive" class="modal hide fade" tabindex="-1" data-width="600" >
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
										<h3>Add Subscribers to the Campaign</h3>
                                                                                <div class="FormResult"></div>
									</div>
									<div class="modal-body">
										
											<!-- BEGIN FORM-->
											<form id="UserForm" action="#" method="POST" class="horizontal-form">
													
												<table class="table table-striped table-bordered table-hover table-full-width " id="sample_2">
									<thead>
										<tr>
											<th style="width:8px;"><input type="checkbox" class="group-checkable" data-set="#sample_1 .checkboxes" /></th>
											<th>First Name</th>
											<th>Last Name</th>
											<th class="hidden-480">Company</th>
											<th class="hidden-480">Email</th>
											
                                                                                       
										</tr>
									</thead>
									<tbody id="adduser">
                                                                             
									</tbody>
								</table>
												<!--/row-->        
												
												<!--/row--> 
                                                                                                 <div class="modal-footer">
                                                                                                        <button type="button" data-dismiss="modal" class="btn">Cancel</button>
                                                                                                        <button id="submitButtonId" type="submit" class="btn blue"><i class="icon-plus"></i> Add</button>
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
                                                            <div id="success_result"></div>
                                                              
								<table class="table table-striped table-bordered table-hover table-condensed flip-content responsive flip-scroll" id="tableresult">
									
									
								</table>
                                                                     
							</div>
                                                    
                                                </div>
                                        </div>
                                                                                 <div class="row-fluid">
							<div class="span6">
								<div class="portlet box light-grey">
									<div class="portlet-title">
										<div class="caption"><i class="icon-reorder"></i>Statistics</div>
										<div class="tools">
											<a href="javascript:;" class="collapse"></a>
											<a href="javascript:;" class="reload"></a>
										</div>
									</div>
									<div class="portlet-body form">
										<!-- BEGIN FORM-->
										<table class="table table-striped table-bordered table-hover" id="sample_2b">
									<thead>
										<tr>
											
											<th class="hidden-480">Invitations</th>
											<th class="hidden-480">Total</th>
											<th class="hidden-480">%</th>
                                                                                        
										</tr>
									</thead>
									<tbody id="tablestat">
                                                                              
                                                                            
										
										
										
									</tbody>
									
								</table>
										
										<!-- END FORM-->  
									</div>
								</div>
								<!-- END PORTLET-->
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
	<!-- BEGIN CORE PLUGINS -->   
        <script src="../assets/plugins/jquery-1.10.1.min.js" type="text/javascript"></script>
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
	
        <script>
                   jQuery(document).ready(function() {       
		   // initiate layout and plugins
		   App.init();
                   UIModals.init();
                   });
                
                var col = [];
                $("#resenda").live('click',function() {
                    
                    window.alert("Not implemented in demo version");
                    
                });
                
                
                $("#submitButtonId").click(function(){
                      
                          var campaignname = $("#selectcampaign").val();
                          var i=0;
                          var addcol = [];
                          var header=[];
                         
                          var row = 0;                          
                          $("#sample_2 tbody tr").each(function(){
                              
                              if($(this).children().children().attr("checked"))
                                   {
                                      addcol[row]=$(this).children().children().attr("value");
                                      row++; 
                                   }
                                     
                               });
                           
                           $("#tableresult thead tr").each(function(){
                               $.each(this.cells,function(){
                               
                               switch ($(this).html()) {
                                   case "Attending":
                                       header[i]="attending";
                                       i++;
                                       break;
                                   case "Bring Partner":
                                       header[i]="bringpartner";
                                       i++;
                                       break;
                                   case "Partner Name":
                                       header[i]="pname";
                                       i++;
                                       break;
                                   case "Partner Last Name":
                                       header[i]="plastname";
                                       i++;
                                       break;
                                   case "Comments":
                                       header[i]="com";
                                       i++;
                                       break;
                                   case "Travel":
                                       header[i]="travel";
                                       i++;
                                       break;
                                   case "Accomodation":
                                       header[i]="accomodation";
                                       i++;
                                       break;
                               }
                                
                                
                              
                               });
                           });
                           
                           
                                                              
                        var url = "addcampsub.jsp"; // the script where you handle the form input.
                            $.ajax({
                                   type: "POST",
                                   url: url,
                                   async:false,
                                   data: {campaignname: campaignname, addcol: addcol, row: row,header:header, i:i}, // serializes the form's elements.
                                   success: function(data)
                                   {
                                       
                                       
                                   }
                                 });
                                 
                       });
      
                
                $("#selectcampaign").change(function() {
                  
                  $("#tableresult").html("");
                  $("#resend").html("");
                  
                         var url = "selectcampaign.jsp"; // the script where you handle the form input.
                            $.ajax({
                                   type: "POST",
                                   url: url,
                                   async:false,
                                   data: $("#CampaignForm").serialize(), // serializes the form's elements.
                                   success: function(data)
                                   {
                                       //location.reload();
                                       $("#tableresult").html(data);
                                       $("#resend").html("<a class=\" btn green\" id=\"resenda\" data-toggle=\"modal\" href=\"#\">Send Invitation <i class=\"icon-mail-forward\"></i></a>"); 
                                   }
                                 });
                          
                             
                   $("#tablestat").html(""); 
                   
                         url="campaignstat.jsp";        
                                  $.ajax({
                                   type: "POST",
                                   url: url,
                                   async:false,
                                   data: $("#CampaignForm").serialize(), // serializes the form's elements.
                                   success: function(data)
                                   {
                                       //location.reload();
                                       $("#tablestat").html(data);
                                       
                                   }
                                 });
                
                        $("#adduser").html(""); 
                    
                        url="addcampsubtable.jsp";        
                                  $.ajax({
                                   type: "POST",
                                   url: url,
                                   async:false,
                                   data: $("#CampaignForm").serialize(),
                                   success: function(data)
                                   {
                                       //location.reload();
                                       $("#adduser").html(data);
                                       
                                   }
                                 });  
                
                
                            return false; // avoid to execute the actual submit of the form.
                        });  
                
               
                   $("#savelink").live('click',function() {
        
                   var i=0;
                   var field=[];
                   var headers=[];
                   var campaignid = $("#selectcampaign").val();
           
                    $(this).parent().parent().each(function(){
                        
                      $.each(this.cells,function(){
                          
                       headers[i]=$(this).attr('id');
                       
                    
               
                       if($(this).children().is(".checkboxes") && $(this).children().attr('id')!="tosend")
                       {
                          if($(this).children().is(':checked'))
                          {
                           field[i]="TRUE";
                           col[i]="<input type=\"checkbox\"  class=\"checkboxes\" checked disabled />"
                          }
                            else
                          {
                            field[i]="FALSE";
                            col[i]="<input type=\"checkbox\"  class=\"checkboxes\" disabled />"
                          }
                       }      
                        else
                        {
                            if($(this).children().attr('value')=="" && $(this).children().attr('id')!="tosend")
                                field[i]="null";
                            else
                            {
                                if($(this).children().attr('id')!="tosend")
                                {
                                field[i]="'"+$(this).children().attr('value')+"'";
                                col[i]=$(this).children().attr('value');
                                }
                            }
                         }
                            
                          i++;
                       });
                   });
                   
                   
                   var url = "edit_follow.jsp"; // the script where you handle the form input.
                           $.ajax({
                                   type: "POST",
                                  url: url,
                                  async:false,
                                  data: {field:field, headers:headers,i:i,campaignid:campaignid}, 
                                   success: function(data)
                                   {
                                       $("#success_result").html(data);
                                      
                                   }
                                });
                   
                   $("#tablestat").html(""); 
                   
                         url="campaignstat.jsp";        
                                  $.ajax({
                                   type: "POST",
                                   url: url,
                                   async:false,
                                   data: $("#CampaignForm").serialize(), // serializes the form's elements.
                                   success: function(data)
                                   {
                                       //location.reload();
                                       $("#tablestat").html(data);
                                       
                                   }
                                 }); 
                   
                    $( "#cancellink" ).trigger( "click" );

                }); 

                   $("#cancellink").live('click',function() {
        
                   var i=0;
                     
                   $(this).parent().parent().each(function(){
                       
                       $.each(this.cells,function(){
                         
                          if($(this).children().attr('id')=="savelink")
                             $(this).html("<button class=\"btn green\" type=\"button\" id=\"editlink\">Edit</button>");
                          else if($(this).children().attr('id')=="cancellink")
                          {
                              $("#deleteheader").hide();
                              $(this).hide();
                          }
                          else 
                              $(this).html(col[i]);
                          i++;
                       });
                   });
                   
                   $("#tableresult tbody tr td").each(function(){
                      if($(this).attr('id')=="deletecell")
                      {
                      $(this).hide();
                      $(this).html("");
                     }
                   });

                }); 
             
                 
                $("#editlink").live('click',function() {
                   var width;
                   var i=0;
                   var selected=0;
                       
                   $(this).parent().parent().each(function(){
                       
                       $.each(this.cells,function(){
                          width=$(this).width();
                          col[i]=$(this).html();
                          if($(this).children().attr('id')=="editlink")
                              $(this).html("<button class=\"btn green\" type=\"button\" id=\"savelink\">Save</button>");
                          else
                              if($(this).attr('id')=="deletecell")
                              {
                                 $("#deleteheader").show();
                                 $(this).html("<button class=\"btn green\" type=\"button\" id=\"cancellink\">Cancel</button>");
                              }
                              else
                                 if($(this).children().is(".checkboxes"))
                                    $(this).children().prop('disabled',false);
                                  else if($(this).attr('id')=="attending")
                                      {
                                           switch ($(this).html()) {
                                           case "No reply":
                                               selected=0;
                                               break;
                                           case "Yes":
                                               selected=1;
                                               break;
                                           case "No":
                                               selected=2;
                                               break;
                                            }
                                     
                                        $(this).html("<select style=\"width:"+width+"px;\" id=\"attopt\"><option  value=\"No reply\">No Reply</option><option  value=\"Yes\">Yes</option><option  value=\"No\">No</option></select>");
                                        $("#attopt").prop('selectedIndex',selected);
                                        }
                                        else
                                            $(this).html("<input type=\"text\" style=\"width:"+(width-10)+"px;\" value='"+col[i]+"'/>");
                                        
                          i++;
                       });
                   });
                   $("#tableresult tbody tr td").each(function(){
                       $(this).show();
                   });
                }); 
  
  
	</script>
	<!-- END JAVASCRIPTS -->   
</body>
<!-- END BODY -->
</html>