<%@ page language="java"
    import="java.sql.*, manejodb.ManejadoresTablas"
    errorPage="error.jsp" 
%>

<jsp:useBean id="mtbl" scope="session" class="manejodb.ManejadoresTablas" ></jsp:useBean>
<%
          String name="Welcome";
          String last_name="";
          String key = request.getParameter("key");
          String Confirmation="false";
          String att_id=null;
          String Config=null;
          String firstname="";
          String lastname="";
          String company="";
          String email="";
          String contact_num="";
          String campdate="";
          String filename="";
          String campname="";
          
          

          mtbl.setConectar();
          ResultSet rsConfirmation=mtbl.getQuery("select * from campinfo,attributes,subscribers,campaign,images where key='"+key+"' and campinfo.att_id=attributes.att_id and campinfo.sub_id=subscribers.sub_id and campaign.camp_id=campinfo.camp_id ;");
          mtbl.setDesconectar(); 
          
          if(rsConfirmation != null && rsConfirmation.next()) {
                Confirmation="true";
                att_id=rsConfirmation.getString("att_id");
                Config=rsConfirmation.getString("config");
                firstname=rsConfirmation.getString("firstname");
                lastname=rsConfirmation.getString("lastname");
                company=rsConfirmation.getString("company");
                email=rsConfirmation.getString("email");
                contact_num=rsConfirmation.getString("contact_num");
                campdate=rsConfirmation.getString("campdate");
                filename=rsConfirmation.getString("filename");
                campname=rsConfirmation.getString("campname");
                do {
                    // do what you have to do
                } while (rsConfirmation.next());
            } else {
                Confirmation="false";
                response.sendRedirect("/rsvp");
            }
            String a1=Config.substring(0, 1);
            String a2=Config.substring(1, 2);
            String a3=Config.substring(2, 3);
            String a4=Config.substring(3, 4);
            String a5=Config.substring(4, 5);
            String a6=Config.substring(5, 6);



%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!--> <html lang="en" class="no-js"> <!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
	<meta charset="utf-8" />
	<title>Web Global | Confirm Guest</title>
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
	<!-- BEGIN PAGE LEVEL PLUGIN STYLES --> 
        <link href="../assets/plugins/gritter/css/jquery.gritter.css" rel="stylesheet" type="text/css"/>
	<link href="../assets/plugins/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet" type="text/css" />
	<link href="../assets/plugins/jquery-easy-pie-chart/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen"/>
        <link rel="stylesheet" type="text/css" href="../assets/plugins/select2/select2_metro.css" />
	<link rel="stylesheet" type="text/css" href="../assets/plugins/chosen-bootstrap/chosen/chosen.css" />
        <link href="../assets/plugins/fancybox/source/jquery.fancybox.css" rel="stylesheet" />
	<link href="../assets/plugins/jquery-file-upload/css/jquery.fileupload-ui.css" rel="stylesheet" />
	<!-- END PAGE LEVEL PLUGIN STYLES -->
	<!-- BEGIN PAGE LEVEL STYLES --> 

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
							
							
							<li><a href="/rsvp/login.jsp"><i class="icon-key"></i> Log In</a></li>
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
					
					<!-- END RESPONSIVE QUICK SEARCH FORM -->
				</li>
				<li class="start active" >
					<a href="guestConfirmation.jsp">
					<i class="icon-home"></i> 
					<span class="title">Home</span>
					<span class="selected"></span>
					</a>
				</li>
				
				<!-- BEGIN FRONT DEMO -->
				
				<!-- END FRONT DEMO -->
				
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
					<h3>Widget Settings</h3>
				</div>
				<div class="modal-body">
					Widget settings form goes here
				</div>
			</div>
			<!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->
			<!-- BEGIN PAGE CONTAINER-->
			<div class="container-fluid">
				<!-- BEGIN PAGE HEADER-->
				<div class="row-fluid">
					<div class="span12">
						<!-- BEGIN STYLE CUSTOMIZER -->
						<div class="color-panel hidden-phone">
							<div class="color-mode-icons icon-color"></div>
							<div class="color-mode-icons icon-color-close"></div>
							<div class="color-mode">
								<p>THEME COLOR</p>
								<ul class="inline">
									<li class="color-black current color-default" data-style="default"></li>
									<li class="color-blue" data-style="blue"></li>
									<li class="color-brown" data-style="brown"></li>
									<li class="color-purple" data-style="purple"></li>
									<li class="color-grey" data-style="grey"></li>
									<li class="color-white color-light" data-style="light"></li>
								</ul>
								<label>
									<span>Layout</span>
									<select class="layout-option m-wrap small">
										<option value="fluid" selected>Fluid</option>
										<option value="boxed">Boxed</option>
									</select>
								</label>
								<label>
									<span>Header</span>
									<select class="header-option m-wrap small">
										<option value="fixed" selected>Fixed</option>
										<option value="default">Default</option>
									</select>
								</label>
								<label>
									<span>Sidebar</span>
									<select class="sidebar-option m-wrap small">
										<option value="fixed" selected>Fixed</option>
										<option value="default">Default</option>
									</select>
								</label>
								<label>
									<span>Footer</span>
									<select class="footer-option m-wrap small">
										<option value="fixed" selected>Fixed</option>
										<option value="default" >Default</option>
									</select>
								</label>
							</div>
						</div>
						<!-- END BEGIN STYLE CUSTOMIZER -->    
						<!-- BEGIN PAGE TITLE & BREADCRUMB-->
						<h3 class="page-title">
							Confirmation <small>Select Options</small>
						</h3>
						<ul class="breadcrumb">
							<li>
								<i class="icon-home"></i>
								<a href="guestConfirmation.jsp">Home</a> 
								<i class="icon-angle-right"></i>
							</li>
							<li><a href="#">Confirmation</a></li>
							<li class="pull-right no-text-shadow">
								
							</li>
						</ul>
						<!-- END PAGE TITLE & BREADCRUMB-->
					</div>
				</div>
				<!-- END PAGE HEADER-->
                                <div class="">
                                   
                                    <form id="confirmationFormId" action="submitConfirmation.jsp" method="POST" class="horizontal-form">    
                                     <div class="table-condensed">  
                                                <table id="rsvpFormId">
                                                                 <tr>
                                                                        <td >
                                                                            <h3 class="text-center"><%=campname%></h3>
                                                                        </td>
								</tr>

                                                                <tr>
                                                                    <td> 
                                                                        <div >
                                                                                <div class="span5 item">
											
                                                                                        <a class="fancybox-button" data-rel="fancybox-button" title="<%=filename%>" href="/rsvp/download/<%=filename%>?id=uniqueid">
												<div class="zoom">
													<img src="/rsvp/download/<%=filename%>?id=uniqueid" alt="<%=filename%>" />                    
													<div class="zoom-icon"></div>
												</div>
											</a>
											<div class="details">
												<a href="#" class="icon"><i class="icon-paper-clip"></i></a>
												<a href="#" class="icon"><i class="icon-link"></i></a>
											</div>
										</div>
                                                                                 <table id="userFormId" class="span6 table table-hover table-striped">
                                                                                    <tbody>
                                                                                            <tr>
                                                                                                <td><h4 class="text-center">RSVP Before <%=campdate%></h4></td>
                                                                                                <td><h4 class="text-center">
                                                                                                        <select id="rsvpConfirmId" class="target medium m-wrap" >
                                                                                                                        <option value="No reply" selected="">Select Option</option>
                                                                                                                        <option value="Yes">Yes Confirmed</option>
															<option value="No">Not Going</option>
													</select>    
                                                                                                    </h4>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                    <td>First Name <%=Config%></td>
                                                                                                    <td><a href="#" id="firstnameId" ><%=firstname%></a></td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                    <td>Last Name</td>
                                                                                                    <td><a href="#" id="lastnameId"><%=lastname%></a></td>

                                                                                            </tr>
                                                                                            <tr>
                                                                                                    <td>Company</td>
                                                                                                    <td><a href="#" id="companyId" ><%=company%></a></td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                    <td>Email</td>
                                                                                                    <td><a href="#" id="emailId" ><%=email%></a></td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                    <td>Contact Number</td>
                                                                                                    <td><a href="#" id="contact_numId" ><%=contact_num%></a></td>
                                                                                            </tr>
                                                                                            
                                                                                            <%
                                                                                            if (a1.equals("1"))
                                                                                            {        
                                                                                            %>            
                                                                                            <tr class="partnerClass">
                                                                                                    <td>Bring Partner</td>
                                                                                                    <td>
                                                                                                        <select id="partnerId" class="medium m-wrap" >
                                                                                                                        <option value="null" selected="">Select Option</option>
                                                                                                                        <option value="TRUE">Yes</option>
															<option value="FALSE">No</option>
													</select>
                                                                                                    </td>
                                                                                            </tr>
                                                                                            <%
                                                                                            }
                                                                                            if (a2.equals("1"))
                                                                                            {        
                                                                                            %>
                                                                                            <tr class="partner_firstnameClass">
                                                                                                    <td>Partner's First Name</td>
                                                                                                    <td>
                                                                                                        <input id="partner_firstnameId" type="text" class="span6 m-wrap">    
                                                                                                    </td>
                                                                                            </tr>
                                                                                             <%
                                                                                            }
                                                                                            if (a3.equals("1"))
                                                                                            {        
                                                                                            %>
                                                                                            <tr class="partner_lastnameClass">
                                                                                                    <td>Partner's Last Name</td>
                                                                                                    <td>
                                                                                                        <input id="partner_lastnameId" type="text" class="span6 m-wrap">    
                                                                                                    </td>
                                                                                            </tr>
                                                                                            <%
                                                                                            }
                                                                                            if (a4.equals("1"))
                                                                                            {        
                                                                                            %>
                                                                                            <tr class="commentsClass">
                                                                                                    <td>Comments</td>
                                                                                                    <td>
                                                                                                        <textarea id="commentsId" class="medium m-wrap" rows="3" ></textarea>
                                                                                                    </td>
                                                                                            </tr>
                                                                                            <%
                                                                                            }
                                                                                            if (a5.equals("1"))
                                                                                            {        
                                                                                            %>
                                                                                            <tr class="travelClass">
                                                                                                    <td>Travel</td>
                                                                                                    <td>
                                                                                                        <select id="travelId" class="medium m-wrap" >
                                                                                                                        <option value="null" selected="">Select Option</option>
                                                                                                                        <option value="TRUE">Yes</option>
															<option value="FALSE">No</option>
													</select>
                                                                                                    </td>
                                                                                            </tr>
                                                                                            <%
                                                                                            }
                                                                                            if (a6.equals("1"))
                                                                                            {        
                                                                                            %>
                                                                                            <tr class="accommodationClass">
                                                                                                    <td>Accommodation</td>
                                                                                                    <td>
                                                                                                        <select id="accommodationId" class="medium m-wrap" >
                                                                                                                        <option value="null" selected="">Select Option</option>
                                                                                                                        <option value="TRUE">Yes</option>
															<option value="FALSE">No</option>
													</select>
                                                                                                    </td>
                                                                                            </tr>
                                                                                            <%
                                                                                            }
                                                                                                   
                                                                                            %>
                                                                                            <tr class="buttonControl">
                                                                                                <td colspan = "2"><button id="submitConfirmationButtonId" type="submit" class="btn blue big btn-block" > Confirm <i class="icon-ok "></i></button></td>
                                                                                            </tr>
                                                                                            
                                                                                    </tbody>
                                                                            </table>                                                                                                        
                                                                        </div>
                                                                   </td> 
                                                                </tr>
                                                </table>
                                                                                                        
                                   </div>                                                                                                         
                                    </form>
				</div>                               
                                
				
			</div>
			<!-- END PAGE CONTAINER-->    
		</div>
		<!-- END PAGE -->
	</div>
	<!-- END CONTAINER -->
	<!-- BEGIN FOOTER -->
	<div class="footer">
		<div class="footer-inner">
                   2013 Powered by Web Global.
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
        <script src="../assets/plugins/fancybox/source/jquery.fancybox.js"></script>   
	<script type="text/javascript" src="../assets/plugins/chosen-bootstrap/chosen/chosen.jquery.min.js"></script>
 	<!-- END PAGE LEVEL PLUGINS -->
	<!-- BEGIN PAGE LEVEL SCRIPTS -->
        
	<script src="../assets/scripts/app.js" type="text/javascript"></script>
        <script src="../assets/scripts/gallery.js"></script>  
	
	<!-- END PAGE LEVEL SCRIPTS -->  
	<script>
		jQuery(document).ready(function() {    
		   App.init(); // initlayout and core plugins
                   Gallery.init();
		   $('.fancybox-video').fancybox({type: 'iframe'});
                   
                   //$(".partnerClass,.partner_firstnameClass,.partner_lastnameClass,.commentsClass,.travelClass,.accommodationClass").hide()();
                   //$('.partner_firstnameClass').hide()();
                   //$('.partner_lastnameClass').hide()();
                   //$('.commentsClass').hide()();
                   //$('.travelClass').hide()();
                   //$('.accommodationClass').hide()();
                   $(".partnerClass,.partner_firstnameClass,.partner_lastnameClass,.commentsClass,.travelClass,.accommodationClass,.buttonControl").hide();
                   $( ".target" ).change(function() {
                      var valueConfirmation = $( "#rsvpConfirmId" ).val(); 
                          if (valueConfirmation==="Yes"){
                              $(".partnerClass,.partner_firstnameClass,.partner_lastnameClass,.commentsClass,.travelClass,.accommodationClass,.buttonControl").show();
                          }
                          if (valueConfirmation==="No"){
                              $(".buttonControl").show();
                              $(".partnerClass,.partner_firstnameClass,.partner_lastnameClass,.commentsClass,.travelClass,.accommodationClass").hide();
                          }
                          if (valueConfirmation==="No reply"){
                              $(".partnerClass,.partner_firstnameClass,.partner_lastnameClass,.commentsClass,.travelClass,.accommodationClass,.buttonControl").hide();
                          }
                    });
                   
                   $("#submitConfirmationButtonId,#submitNotGoingButtonId").click(function() {
                        //alert("hello");
                        var att_id=<%=att_id%>;
                        var rsvpConfirmId = $( "#rsvpConfirmId" ).val();
                        var partnerId = $( "#partnerId" ).val();
                        var partner_firstnameId = $( "#partner_firstnameId" ).val();
                        var partner_lastnameId = $( "#partner_lastnameId" ).val();
                        var commentsId = $( "#commentsId" ).val();
                        var travelId = $( "#travelId" ).val();
                        var accommodationId = $( "#accommodationId" ).val();
                        
                        var url = "submitConfirmation.jsp?att_id="+att_id+"&rsvpConfirmId="+rsvpConfirmId+"&partnerId="+partnerId+"&partner_firstnameId="+partner_firstnameId+"&partner_lastnameId="+partner_lastnameId+"&commentsId="+commentsId+"&travelId="+travelId+"&accommodationId="+accommodationId+""; // the script where you handle the form input.
                            $.ajax({
                                   type: "POST",
                                   url: url,
                                   //data: $("#rsvpConfirmId").serialize(), // serializes the form's elements.
                                   success: function(data)
                                   {
                                       //location.reload();
                                       $("#userFormId").html(data);
                                       
                                   }
                                 });
                            return false; // avoid to execute the actual submit of the form.
                   }); 

		});
	</script>
	<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>