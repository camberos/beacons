<%@ page language="java"
    import="java.sql.*, manejodb.ManejadoresTablas"
    errorPage="error.jsp" 
%>

<jsp:useBean id="mtbl" scope="session" class="manejodb.ManejadoresTablas" ></jsp:useBean>
<%
          String name=(String) session.getAttribute("name");
          String last_name=(String) session.getAttribute("last_name");

          mtbl.setConectar();
          ResultSet rsCampaign=mtbl.getQuery("select count(*)as total from campaign ;");
          mtbl.setDesconectar(); 
          
          String totalNumberCampaign="0";
          if(rsCampaign != null && rsCampaign.next()) {
                //out.println("result set has got something");
                do {
                    // do what you have to do
                    rsCampaign.first();
                    totalNumberCampaign=rsCampaign.getString("total");
                } while (rsCampaign.next());
            } else {
                //out.println("result set is empty");
                totalNumberCampaign="No Campaigns";
            }
%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
	<meta charset="utf-8" />
	<title>WebGlobal Site | View Statistics</title>
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
				<li class="start ">
					<a href="index.jsp">
					<i class="icon-home"></i> 
					<span class="title">Dashboard</span>
					</a>
				</li>
                                
                                
                                
                                <li>
					<a href="javascript:;">
					<i class="icon-table"></i> 
					<span class="title">Administration</span>
					<span class="arrow "></span>
					</a>
					<ul class="sub-menu">
						<li >
							<a href="#">
							Manage Users</a>
						</li>
                                                <li>
							<a href="admin_images.jsp">
							Manage Images</a>
						</li>
						<li >
							<a href="#">
							Manage Database</a>
						</li>
						
					</ul>
				</li>
                                <li>
					<a href="javascript:;">
					<i class="icon-user"></i> 
					<span class="title">Customers</span>
					<span class="arrow "></span>
					</a>
					<ul class="sub-menu">
						<li class="start active"  >
							<a href="admin_mansub.jsp">
							Manage Customers</a>
						</li>
						
						<li >
							<a href="admin_impsub.jsp">
							Import Customers</a>
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
                                <li class="start active">
					<a href="javascript:;">
					<i class="icon-bar-chart"></i> 
					<span class="title">Statistics </span>
					<span class="arrow "></span>
					</a>
					<ul class="sub-menu">
						<li class="start active" >
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
							View Statistics <small>View/Export Statistics</small>
						</h3>
						<ul class="breadcrumb">
							<li>
								<i class="icon-home"></i>
								<a href="index.jsp">Home</a> 
								<i class="icon-angle-right"></i>
							</li>
							<li>
								<a href="#">Statistics</a>
								<i class="icon-angle-right"></i>
							</li>
							<li><a href="#">View Statistics</a></li>
						</ul>
						<!-- END PAGE TITLE & BREADCRUMB-->
                                                
					</div>
				</div>
				<!-- END PAGE HEADER-->
				<!-- BEGIN PAGE CONTENT-->
				<div class="row-fluid">
					<div class="span12">
						<div class="portlet box grey">
							<div class="portlet-title">
								<div class="caption"><i class="icon-reorder"></i>Full Statistics</div>
								<div class="tools">
									<a href="javascript:;" class="collapse"></a>
									<a href="#portlet-config" data-toggle="modal" class="config"></a>
								</div>
							</div>
							<div class="portlet-body">
								<div class="row-fluid">
									<div class="span12">
										<!--BEGIN TABS-->
										<div class="tabbable tabbable-custom">
											<ul class="nav nav-tabs">
												<li class="active"><a href="#tab_1_1" data-toggle="tab">Today</a></li>
												<li><a href="#tab_1_2" data-toggle="tab">Last 7 Days</a></li>
												<li><a href="#tab_1_3" data-toggle="tab">Last 30 Days</a></li>
                                                                                                <li><a href="#tab_1_4" data-toggle="tab">Last 60 Days</a></li>
                                                                                                <li><a href="#tab_1_5" data-toggle="tab">Last 90 Days</a></li>
                                                                                                <li><a href="#tab_1_6" data-toggle="tab">All Time</a></li>
											</ul>
											<div class="tab-content ">
												<div class="tab-pane active" id="tab_1_1">
                                                                                                   <div class="row-fluid">
                                                                                                            
                                                                                                            <div class="span3 responsive" data-tablet="span6" data-desktop="span3">
                                                                                                                        <div class="dashboard-stat red">
                                                                                                                                <div class="visual">
                                                                                                                                        <i class="icon-ok"></i>
                                                                                                                                </div>
                                                                                                                                <div class="details">
                                                                                                                                        <div class="number" >
                                                                                                                                            <div id="currentSentId"></div>
                                                                                                                                        </div>
                                                                                                                                    <a href="#notImplementedId"><div class="desc">Sent</div></a>
                                                                                                                                </div>
                                                                                                                        </div>
                                                                                                            </div>

                                                                                                            <div class="span3 responsive" data-tablet="span6" data-desktop="span3">
                                                                                                                        <div class="dashboard-stat red">
                                                                                                                                <div class="visual">
                                                                                                                                        <i class="icon-minus-sign"></i>
                                                                                                                                </div>
                                                                                                                                <div class="details">
                                                                                                                                        <div class="number">
                                                                                                                                            <div id="currentHardBouncesId"></div>
                                                                                                                                        </div>
                                                                                                                                    <a href="#notImplementedId">
                                                                                                                                        <div class="desc">                           
                                                                                                                                                Hard Bounces
                                                                                                                                        </div>
                                                                                                                                    </a>
                                                                                                                                </div>
                                                                                                                                               
                                                                                                                        </div>
                                                                                                                </div>

                                                                                                                <div class="span3 responsive" data-tablet="span6 fix-offset"  data-desktop="span3">
                                                                                                                        <div class="dashboard-stat red">
                                                                                                                                <div class="visual">
                                                                                                                                        <i class=" icon-minus"></i>
                                                                                                                                </div>
                                                                                                                                <div class="details">
                                                                                                                                        <div class="number">
                                                                                                                                            <div id="currentSoftBouncesId"></div>
                                                                                                                                        </div>
                                                                                                                                        <a href="#notImplementedId">
                                                                                                                                        <div class="desc">                           
                                                                                                                                                Soft Bounces
                                                                                                                                        </div>
                                                                                                                                        </a>
                                                                                                                                </div>
                                                                                                                                               
                                                                                                                        </div>
                                                                                                                </div>
                                                                                                                <div class="span3 responsive" data-tablet="span6" data-desktop="span3">
                                                                                                                        <div class="dashboard-stat red">
                                                                                                                                <div class="visual">
                                                                                                                                        <i class="icon-remove-sign"></i>
                                                                                                                                </div>
                                                                                                                                <div class="details">
                                                                                                                                        <div class="number">
                                                                                                                                            <div id="currentRejectsId"></div>
                                                                                                                                        </div>
                                                                                                                                    <a href="#notImplementedId"><div class="desc">Rejects</div></a>
                                                                                                                                </div>
                                                                                                                                                
                                                                                                                        </div>
                                                                                                                 </div>  
                                                                                                                                                                                                                                                        
                                                                                                        </div>
                                                                                                   <div class="row-fluid">
                                                                                                            <div class="span3 responsive" data-tablet="span6" data-desktop="span3">
                                                                                                                        <div class="dashboard-stat red">
                                                                                                                                <div class="visual">
                                                                                                                                        <i class=" icon-bolt"></i>
                                                                                                                                </div>
                                                                                                                                <div class="details">
                                                                                                                                        <div class="number">
                                                                                                                                            <div id="currentComplaintsId"></div>
                                                                                                                                        </div>
                                                                                                                                    <a href="#notImplementedId"><div class="desc">Complains</div></a>
                                                                                                                                </div>
                                                                                                                                                
                                                                                                                        </div>
                                                                                                            </div>

                                                                                                            <div class="span3 responsive" data-tablet="span6" data-desktop="span3">
                                                                                                                        <div class="dashboard-stat red">
                                                                                                                                <div class="visual">
                                                                                                                                        <i class=" icon-ok-circle"></i>
                                                                                                                                </div>
                                                                                                                                <div class="details">
                                                                                                                                        <div class="number">
                                                                                                                                            <div id="currentUniqueOpensId"></div>
                                                                                                                                        </div>
                                                                                                                                        <a href="#notImplementedId">
                                                                                                                                        <div class="desc">                           
                                                                                                                                                Unique Opens
                                                                                                                                        </div>
                                                                                                                                        </a>
                                                                                                                                </div>
                                                                                                                                               
                                                                                                                        </div>
                                                                                                                </div>

                                                                                                                <div class="span3 responsive" data-tablet="span6 fix-offset"  data-desktop="span3">
                                                                                                                        <div class="dashboard-stat red">
                                                                                                                                <div class="visual">
                                                                                                                                        <i class="icon-ok-sign"></i>
                                                                                                                                </div>
                                                                                                                                <div class="details">
                                                                                                                                        <div class="number">
                                                                                                                                            <div id="currentUniqueClickId"></div>
                                                                                                                                        </div>
                                                                                                                                        <a href="#notImplementedId">
                                                                                                                                        <div class="desc">                           
                                                                                                                                                Unique Clicks
                                                                                                                                        </div>
                                                                                                                                        </a>
                                                                                                                                </div>
                                                                                                                                               
                                                                                                                        </div>
                                                                                                                </div>
                                                                                                                <div class="span3 responsive" data-tablet="span6" data-desktop="span3">
                                                                                                                        <div class="dashboard-stat red">
                                                                                                                                <div class="visual">
                                                                                                                                        <i class=" icon-download-alt"></i>
                                                                                                                                </div>
                                                                                                                                <div class="details">
                                                                                                                                        <div class="number">
                                                                                                                                            <div id="currentClickId"></div>
                                                                                                                                        </div>
                                                                                                                                    <a href="#notImplementedId"><div class="desc">Clicks</div></a>
                                                                                                                                </div>
                                                                                                                                                
                                                                                                                        </div>
                                                                                                                 </div>  
                                                                                                                                                                                                                                                        
                                                                                                        </div>                                                                                                                                        
												</div>
                                                                                           
												<div class="tab-pane" id="tab_1_2">
                                                                                                   <div class="row-fluid">
                                                                                                            <div class="span3 responsive" data-tablet="span6" data-desktop="span3">
                                                                                                                        <div class="dashboard-stat red">
                                                                                                                                <div class="visual">
                                                                                                                                        <i class="icon-globe"></i>
                                                                                                                                </div>
                                                                                                                                <div class="details">
                                                                                                                                        <div class="number" >
                                                                                                                                            <div id="last_7_daysSentId"></div>
                                                                                                                                        </div>
                                                                                                                                        <div class="desc">Sent</div>
                                                                                                                                </div>
                                                                                                                                                
                                                                                                                        </div>
                                                                                                            </div>

                                                                                                            <div class="span3 responsive" data-tablet="span6" data-desktop="span3">
                                                                                                                        <div class="dashboard-stat red">
                                                                                                                                <div class="visual">
                                                                                                                                        <i class="icon-envelope"></i>
                                                                                                                                </div>
                                                                                                                                <div class="details">
                                                                                                                                        <div class="number">
                                                                                                                                            <div id="last_7_daysHardBouncesId"></div>
                                                                                                                                        </div>
                                                                                                                                        <div class="desc">                           
                                                                                                                                                Hard Bounces
                                                                                                                                        </div>
                                                                                                                                </div>
                                                                                                                                               
                                                                                                                        </div>
                                                                                                                </div>

                                                                                                                <div class="span3 responsive" data-tablet="span6 fix-offset"  data-desktop="span3">
                                                                                                                        <div class="dashboard-stat red">
                                                                                                                                <div class="visual">
                                                                                                                                        <i class="icon-remove-sign"></i>
                                                                                                                                </div>
                                                                                                                                <div class="details">
                                                                                                                                        <div class="number">
                                                                                                                                            <div id="last_7_daysSoftBouncesId"></div>
                                                                                                                                        </div>
                                                                                                                                        <div class="desc">                           
                                                                                                                                                Soft Bounces
                                                                                                                                        </div>
                                                                                                                                </div>
                                                                                                                                               
                                                                                                                        </div>
                                                                                                                </div>
                                                                                                                <div class="span3 responsive" data-tablet="span6" data-desktop="span3">
                                                                                                                        <div class="dashboard-stat red">
                                                                                                                                <div class="visual">
                                                                                                                                        <i class="icon-bar-chart"></i>
                                                                                                                                </div>
                                                                                                                                <div class="details">
                                                                                                                                        <div class="number">
                                                                                                                                            <div id="last_7_daysRejectsId"></div>
                                                                                                                                        </div>
                                                                                                                                        <div class="desc">Rejects</div>
                                                                                                                                </div>
                                                                                                                                                
                                                                                                                        </div>
                                                                                                                 </div>  
                                                                                                                                                                                                                                                        
                                                                                                        </div>													
                                                                                                   <div class="row-fluid">
                                                                                                            <div class="span3 responsive" data-tablet="span6" data-desktop="span3">
                                                                                                                        <div class="dashboard-stat red">
                                                                                                                                <div class="visual">
                                                                                                                                        <i class="icon-globe"></i>
                                                                                                                                </div>
                                                                                                                                <div class="details">
                                                                                                                                        <div class="number">
                                                                                                                                            <div id="last_7_daysComplaintsId"></div>
                                                                                                                                        </div>
                                                                                                                                        <div class="desc">Complains</div>
                                                                                                                                </div>
                                                                                                                                                
                                                                                                                        </div>
                                                                                                            </div>

                                                                                                            <div class="span3 responsive" data-tablet="span6" data-desktop="span3">
                                                                                                                        <div class="dashboard-stat red">
                                                                                                                                <div class="visual">
                                                                                                                                        <i class="icon-envelope"></i>
                                                                                                                                </div>
                                                                                                                                <div class="details">
                                                                                                                                        <div class="number">
                                                                                                                                            <div id="last_7_daysOpensId"></div>
                                                                                                                                        </div>
                                                                                                                                        <div class="desc">                           
                                                                                                                                                Opens
                                                                                                                                        </div>
                                                                                                                                </div>
                                                                                                                                               
                                                                                                                        </div>
                                                                                                                </div>

                                                                                                                <div class="span3 responsive" data-tablet="span6 fix-offset"  data-desktop="span3">
                                                                                                                        <div class="dashboard-stat red">
                                                                                                                                <div class="visual">
                                                                                                                                        <i class="icon-remove-sign"></i>
                                                                                                                                </div>
                                                                                                                                <div class="details">
                                                                                                                                        <div class="number">
                                                                                                                                            <div id="last_7_daysUniqueOpensId"></div>
                                                                                                                                        </div>
                                                                                                                                        <div class="desc">                           
                                                                                                                                                Unique Opens
                                                                                                                                        </div>
                                                                                                                                </div>
                                                                                                                                               
                                                                                                                        </div>
                                                                                                                </div>
                                                                                                                <div class="span3 responsive" data-tablet="span6" data-desktop="span3">
                                                                                                                        <div class="dashboard-stat red">
                                                                                                                                <div class="visual">
                                                                                                                                        <i class="icon-bar-chart"></i>
                                                                                                                                </div>
                                                                                                                                <div class="details">
                                                                                                                                        <div class="number">
                                                                                                                                            <div id="last_7_daysClickId"></div>
                                                                                                                                        </div>
                                                                                                                                        <div class="desc">Clicks</div>
                                                                                                                                </div>
                                                                                                                                                
                                                                                                                        </div>
                                                                                                                 </div>  
                                                                                                                                                                                                                                                        
                                                                                                        </div>													
												</div>
												<div class="tab-pane" id="tab_1_3">
                                                                                                   <div class="row-fluid">
                                                                                                            <div class="span3 responsive" data-tablet="span6" data-desktop="span3">
                                                                                                                        <div class="dashboard-stat red">
                                                                                                                                <div class="visual">
                                                                                                                                        <i class="icon-globe"></i>
                                                                                                                                </div>
                                                                                                                                <div class="details">
                                                                                                                                        <div class="number" >
                                                                                                                                            <div id="last_30_daysSentId"></div>
                                                                                                                                        </div>
                                                                                                                                        <div class="desc">Sent</div>
                                                                                                                                </div>
                                                                                                                                                
                                                                                                                        </div>
                                                                                                            </div>

                                                                                                            <div class="span3 responsive" data-tablet="span6" data-desktop="span3">
                                                                                                                        <div class="dashboard-stat red">
                                                                                                                                <div class="visual">
                                                                                                                                        <i class="icon-envelope"></i>
                                                                                                                                </div>
                                                                                                                                <div class="details">
                                                                                                                                        <div class="number">
                                                                                                                                            <div id="last_30_daysHardBouncesId"></div>
                                                                                                                                        </div>
                                                                                                                                        <div class="desc">                           
                                                                                                                                                Hard Bounces
                                                                                                                                        </div>
                                                                                                                                </div>
                                                                                                                                               
                                                                                                                        </div>
                                                                                                                </div>

                                                                                                                <div class="span3 responsive" data-tablet="span6 fix-offset"  data-desktop="span3">
                                                                                                                        <div class="dashboard-stat red">
                                                                                                                                <div class="visual">
                                                                                                                                        <i class="icon-remove-sign"></i>
                                                                                                                                </div>
                                                                                                                                <div class="details">
                                                                                                                                        <div class="number">
                                                                                                                                            <div id="last_30_daysSoftBouncesId"></div>
                                                                                                                                        </div>
                                                                                                                                        <div class="desc">                           
                                                                                                                                                Soft Bounces
                                                                                                                                        </div>
                                                                                                                                </div>
                                                                                                                                               
                                                                                                                        </div>
                                                                                                                </div>
                                                                                                                <div class="span3 responsive" data-tablet="span6" data-desktop="span3">
                                                                                                                        <div class="dashboard-stat red">
                                                                                                                                <div class="visual">
                                                                                                                                        <i class="icon-bar-chart"></i>
                                                                                                                                </div>
                                                                                                                                <div class="details">
                                                                                                                                        <div class="number">
                                                                                                                                            <div id="last_30_daysRejectsId"></div>
                                                                                                                                        </div>
                                                                                                                                        <div class="desc">Rejects</div>
                                                                                                                                </div>
                                                                                                                                                
                                                                                                                        </div>
                                                                                                                 </div>  
                                                                                                                                                                                                                                                        
                                                                                                        </div>													
                                                                                                   <div class="row-fluid">
                                                                                                            <div class="span3 responsive" data-tablet="span6" data-desktop="span3">
                                                                                                                        <div class="dashboard-stat red">
                                                                                                                                <div class="visual">
                                                                                                                                        <i class="icon-globe"></i>
                                                                                                                                </div>
                                                                                                                                <div class="details">
                                                                                                                                        <div class="number">
                                                                                                                                            <div id="last_30_daysComplaintsId"></div>
                                                                                                                                        </div>
                                                                                                                                        <div class="desc">Complains</div>
                                                                                                                                </div>
                                                                                                                                                
                                                                                                                        </div>
                                                                                                            </div>

                                                                                                            <div class="span3 responsive" data-tablet="span6" data-desktop="span3">
                                                                                                                        <div class="dashboard-stat red">
                                                                                                                                <div class="visual">
                                                                                                                                        <i class="icon-envelope"></i>
                                                                                                                                </div>
                                                                                                                                <div class="details">
                                                                                                                                        <div class="number">
                                                                                                                                            <div id="last_30_daysOpensId"></div>
                                                                                                                                        </div>
                                                                                                                                        <div class="desc">                           
                                                                                                                                                Opens
                                                                                                                                        </div>
                                                                                                                                </div>
                                                                                                                                               
                                                                                                                        </div>
                                                                                                                </div>

                                                                                                                <div class="span3 responsive" data-tablet="span6 fix-offset"  data-desktop="span3">
                                                                                                                        <div class="dashboard-stat red">
                                                                                                                                <div class="visual">
                                                                                                                                        <i class="icon-remove-sign"></i>
                                                                                                                                </div>
                                                                                                                                <div class="details">
                                                                                                                                        <div class="number">
                                                                                                                                            <div id="last_30_daysUniqueOpensId"></div>
                                                                                                                                        </div>
                                                                                                                                        <div class="desc">                           
                                                                                                                                                Unique Opens
                                                                                                                                        </div>
                                                                                                                                </div>
                                                                                                                                               
                                                                                                                        </div>
                                                                                                                </div>
                                                                                                                <div class="span3 responsive" data-tablet="span6" data-desktop="span3">
                                                                                                                        <div class="dashboard-stat red">
                                                                                                                                <div class="visual">
                                                                                                                                        <i class="icon-bar-chart"></i>
                                                                                                                                </div>
                                                                                                                                <div class="details">
                                                                                                                                        <div class="number">
                                                                                                                                            <div id="last_30_daysClickId"></div>
                                                                                                                                        </div>
                                                                                                                                        <div class="desc">Clicks</div>
                                                                                                                                </div>
                                                                                                                                                
                                                                                                                        </div>
                                                                                                                 </div>  
                                                                                                                                                                                                                                                        
                                                                                                        </div>																										
												</div>
                                                                                                 <div class="tab-pane" id="tab_1_4">
                                                                                                   <div class="row-fluid">
                                                                                                            <div class="span3 responsive" data-tablet="span6" data-desktop="span3">
                                                                                                                        <div class="dashboard-stat red">
                                                                                                                                <div class="visual">
                                                                                                                                        <i class="icon-globe"></i>
                                                                                                                                </div>
                                                                                                                                <div class="details">
                                                                                                                                        <div class="number" >
                                                                                                                                            <div id="last_60_daysSentId"></div>
                                                                                                                                        </div>
                                                                                                                                        <div class="desc">Sent</div>
                                                                                                                                </div>
                                                                                                                                                
                                                                                                                        </div>
                                                                                                            </div>

                                                                                                            <div class="span3 responsive" data-tablet="span6" data-desktop="span3">
                                                                                                                        <div class="dashboard-stat red">
                                                                                                                                <div class="visual">
                                                                                                                                        <i class="icon-envelope"></i>
                                                                                                                                </div>
                                                                                                                                <div class="details">
                                                                                                                                        <div class="number">
                                                                                                                                            <div id="last_60_daysHardBouncesId"></div>
                                                                                                                                        </div>
                                                                                                                                        <div class="desc">                           
                                                                                                                                                Hard Bounces
                                                                                                                                        </div>
                                                                                                                                </div>
                                                                                                                                               
                                                                                                                        </div>
                                                                                                                </div>

                                                                                                                <div class="span3 responsive" data-tablet="span6 fix-offset"  data-desktop="span3">
                                                                                                                        <div class="dashboard-stat red">
                                                                                                                                <div class="visual">
                                                                                                                                        <i class="icon-remove-sign"></i>
                                                                                                                                </div>
                                                                                                                                <div class="details">
                                                                                                                                        <div class="number">
                                                                                                                                            <div id="last_60_daysSoftBouncesId"></div>
                                                                                                                                        </div>
                                                                                                                                        <div class="desc">                           
                                                                                                                                                Soft Bounces
                                                                                                                                        </div>
                                                                                                                                </div>
                                                                                                                                               
                                                                                                                        </div>
                                                                                                                </div>
                                                                                                                <div class="span3 responsive" data-tablet="span6" data-desktop="span3">
                                                                                                                        <div class="dashboard-stat red">
                                                                                                                                <div class="visual">
                                                                                                                                        <i class="icon-bar-chart"></i>
                                                                                                                                </div>
                                                                                                                                <div class="details">
                                                                                                                                        <div class="number">
                                                                                                                                            <div id="last_60_daysRejectsId"></div>
                                                                                                                                        </div>
                                                                                                                                        <div class="desc">Rejects</div>
                                                                                                                                </div>
                                                                                                                                                
                                                                                                                        </div>
                                                                                                                 </div>  
                                                                                                                                                                                                                                                        
                                                                                                        </div>													
                                                                                                   <div class="row-fluid">
                                                                                                            <div class="span3 responsive" data-tablet="span6" data-desktop="span3">
                                                                                                                        <div class="dashboard-stat red">
                                                                                                                                <div class="visual">
                                                                                                                                        <i class="icon-globe"></i>
                                                                                                                                </div>
                                                                                                                                <div class="details">
                                                                                                                                        <div class="number">
                                                                                                                                            <div id="last_60_daysComplaintsId"></div>
                                                                                                                                        </div>
                                                                                                                                        <div class="desc">Complains</div>
                                                                                                                                </div>
                                                                                                                                                
                                                                                                                        </div>
                                                                                                            </div>

                                                                                                            <div class="span3 responsive" data-tablet="span6" data-desktop="span3">
                                                                                                                        <div class="dashboard-stat red">
                                                                                                                                <div class="visual">
                                                                                                                                        <i class="icon-envelope"></i>
                                                                                                                                </div>
                                                                                                                                <div class="details">
                                                                                                                                        <div class="number">
                                                                                                                                            <div id="last_60_daysOpensId"></div>
                                                                                                                                        </div>
                                                                                                                                        <div class="desc">                           
                                                                                                                                                Opens
                                                                                                                                        </div>
                                                                                                                                </div>
                                                                                                                                               
                                                                                                                        </div>
                                                                                                                </div>

                                                                                                                <div class="span3 responsive" data-tablet="span6 fix-offset"  data-desktop="span3">
                                                                                                                        <div class="dashboard-stat red">
                                                                                                                                <div class="visual">
                                                                                                                                        <i class="icon-remove-sign"></i>
                                                                                                                                </div>
                                                                                                                                <div class="details">
                                                                                                                                        <div class="number">
                                                                                                                                            <div id="last_60_daysUniqueOpensId"></div>
                                                                                                                                        </div>
                                                                                                                                        <div class="desc">                           
                                                                                                                                                Unique Opens
                                                                                                                                        </div>
                                                                                                                                </div>
                                                                                                                                               
                                                                                                                        </div>
                                                                                                                </div>
                                                                                                                <div class="span3 responsive" data-tablet="span6" data-desktop="span3">
                                                                                                                        <div class="dashboard-stat red">
                                                                                                                                <div class="visual">
                                                                                                                                        <i class="icon-bar-chart"></i>
                                                                                                                                </div>
                                                                                                                                <div class="details">
                                                                                                                                        <div class="number">
                                                                                                                                            <div id="last_60_daysClickId"></div>
                                                                                                                                        </div>
                                                                                                                                        <div class="desc">Clicks</div>
                                                                                                                                </div>
                                                                                                                                                
                                                                                                                        </div>
                                                                                                                 </div>  
                                                                                                                                                                                                                                                        
                                                                                                        </div>																										
												</div>
                                                                                                <div class="tab-pane" id="tab_1_5">
                                                                                                   <div class="row-fluid">
                                                                                                            <div class="span3 responsive" data-tablet="span6" data-desktop="span3">
                                                                                                                        <div class="dashboard-stat red">
                                                                                                                                <div class="visual">
                                                                                                                                        <i class="icon-globe"></i>
                                                                                                                                </div>
                                                                                                                                <div class="details">
                                                                                                                                        <div class="number" >
                                                                                                                                            <div id="last_90_daysSentId"></div>
                                                                                                                                        </div>
                                                                                                                                        <div class="desc">Sent</div>
                                                                                                                                </div>
                                                                                                                                                
                                                                                                                        </div>
                                                                                                            </div>

                                                                                                            <div class="span3 responsive" data-tablet="span6" data-desktop="span3">
                                                                                                                        <div class="dashboard-stat red">
                                                                                                                                <div class="visual">
                                                                                                                                        <i class="icon-envelope"></i>
                                                                                                                                </div>
                                                                                                                                <div class="details">
                                                                                                                                        <div class="number">
                                                                                                                                            <div id="last_90_daysHardBouncesId"></div>
                                                                                                                                        </div>
                                                                                                                                        <div class="desc">                           
                                                                                                                                                Hard Bounces
                                                                                                                                        </div>
                                                                                                                                </div>
                                                                                                                                               
                                                                                                                        </div>
                                                                                                                </div>

                                                                                                                <div class="span3 responsive" data-tablet="span6 fix-offset"  data-desktop="span3">
                                                                                                                        <div class="dashboard-stat red">
                                                                                                                                <div class="visual">
                                                                                                                                        <i class="icon-remove-sign"></i>
                                                                                                                                </div>
                                                                                                                                <div class="details">
                                                                                                                                        <div class="number">
                                                                                                                                            <div id="last_90_daysSoftBouncesId"></div>
                                                                                                                                        </div>
                                                                                                                                        <div class="desc">                           
                                                                                                                                                Soft Bounces
                                                                                                                                        </div>
                                                                                                                                </div>
                                                                                                                                               
                                                                                                                        </div>
                                                                                                                </div>
                                                                                                                <div class="span3 responsive" data-tablet="span6" data-desktop="span3">
                                                                                                                        <div class="dashboard-stat red">
                                                                                                                                <div class="visual">
                                                                                                                                        <i class="icon-bar-chart"></i>
                                                                                                                                </div>
                                                                                                                                <div class="details">
                                                                                                                                        <div class="number">
                                                                                                                                            <div id="last_90_daysRejectsId"></div>
                                                                                                                                        </div>
                                                                                                                                        <div class="desc">Rejects</div>
                                                                                                                                </div>
                                                                                                                                                
                                                                                                                        </div>
                                                                                                                 </div>  
                                                                                                                                                                                                                                                        
                                                                                                        </div>													
                                                                                                   <div class="row-fluid">
                                                                                                            <div class="span3 responsive" data-tablet="span6" data-desktop="span3">
                                                                                                                        <div class="dashboard-stat red">
                                                                                                                                <div class="visual">
                                                                                                                                        <i class="icon-globe"></i>
                                                                                                                                </div>
                                                                                                                                <div class="details">
                                                                                                                                        <div class="number">
                                                                                                                                            <div id="last_90_daysComplaintsId"></div>
                                                                                                                                        </div>
                                                                                                                                        <div class="desc">Complains</div>
                                                                                                                                </div>
                                                                                                                                                
                                                                                                                        </div>
                                                                                                            </div>

                                                                                                            <div class="span3 responsive" data-tablet="span6" data-desktop="span3">
                                                                                                                        <div class="dashboard-stat red">
                                                                                                                                <div class="visual">
                                                                                                                                        <i class="icon-envelope"></i>
                                                                                                                                </div>
                                                                                                                                <div class="details">
                                                                                                                                        <div class="number">
                                                                                                                                            <div id="last_90_daysOpensId"></div>
                                                                                                                                        </div>
                                                                                                                                        <div class="desc">                           
                                                                                                                                                Opens
                                                                                                                                        </div>
                                                                                                                                </div>
                                                                                                                                               
                                                                                                                        </div>
                                                                                                                </div>

                                                                                                                <div class="span3 responsive" data-tablet="span6 fix-offset"  data-desktop="span3">
                                                                                                                        <div class="dashboard-stat red">
                                                                                                                                <div class="visual">
                                                                                                                                        <i class="icon-remove-sign"></i>
                                                                                                                                </div>
                                                                                                                                <div class="details">
                                                                                                                                        <div class="number">
                                                                                                                                            <div id="last_90_daysUniqueOpensId"></div>
                                                                                                                                        </div>
                                                                                                                                        <div class="desc">                           
                                                                                                                                                Unique Opens
                                                                                                                                        </div>
                                                                                                                                </div>
                                                                                                                                               
                                                                                                                        </div>
                                                                                                                </div>
                                                                                                                <div class="span3 responsive" data-tablet="span6" data-desktop="span3">
                                                                                                                        <div class="dashboard-stat red">
                                                                                                                                <div class="visual">
                                                                                                                                        <i class="icon-bar-chart"></i>
                                                                                                                                </div>
                                                                                                                                <div class="details">
                                                                                                                                        <div class="number">
                                                                                                                                            <div id="last_90_daysClickId"></div>
                                                                                                                                        </div>
                                                                                                                                        <div class="desc">Clicks</div>
                                                                                                                                </div>
                                                                                                                                                
                                                                                                                        </div>
                                                                                                                 </div>  
                                                                                                                                                                                                                                                        
                                                                                                        </div>																										
												</div>
                                                                                                <div class="tab-pane" id="tab_1_6">
                                                                                                   <div class="row-fluid">
                                                                                                            <div class="span3 responsive" data-tablet="span6" data-desktop="span3">
                                                                                                                        <div class="dashboard-stat red">
                                                                                                                                <div class="visual">
                                                                                                                                        <i class="icon-globe"></i>
                                                                                                                                </div>
                                                                                                                                <div class="details">
                                                                                                                                        <div class="number" >
                                                                                                                                            <div id="all_timeSentId"></div>
                                                                                                                                        </div>
                                                                                                                                        <div class="desc">Sent</div>
                                                                                                                                </div>
                                                                                                                                                
                                                                                                                        </div>
                                                                                                            </div>

                                                                                                            <div class="span3 responsive" data-tablet="span6" data-desktop="span3">
                                                                                                                        <div class="dashboard-stat red">
                                                                                                                                <div class="visual">
                                                                                                                                        <i class="icon-envelope"></i>
                                                                                                                                </div>
                                                                                                                                <div class="details">
                                                                                                                                        <div class="number">
                                                                                                                                            <div id="all_timeHardBouncesId"></div>
                                                                                                                                        </div>
                                                                                                                                        <div class="desc">                           
                                                                                                                                                Hard Bounces
                                                                                                                                        </div>
                                                                                                                                </div>
                                                                                                                                               
                                                                                                                        </div>
                                                                                                                </div>

                                                                                                                <div class="span3 responsive" data-tablet="span6 fix-offset"  data-desktop="span3">
                                                                                                                        <div class="dashboard-stat red">
                                                                                                                                <div class="visual">
                                                                                                                                        <i class="icon-remove-sign"></i>
                                                                                                                                </div>
                                                                                                                                <div class="details">
                                                                                                                                        <div class="number">
                                                                                                                                            <div id="all_timeSoftBouncesId"></div>
                                                                                                                                        </div>
                                                                                                                                        <div class="desc">                           
                                                                                                                                                Soft Bounces
                                                                                                                                        </div>
                                                                                                                                </div>
                                                                                                                                               
                                                                                                                        </div>
                                                                                                                </div>
                                                                                                                <div class="span3 responsive" data-tablet="span6" data-desktop="span3">
                                                                                                                        <div class="dashboard-stat red">
                                                                                                                                <div class="visual">
                                                                                                                                        <i class="icon-bar-chart"></i>
                                                                                                                                </div>
                                                                                                                                <div class="details">
                                                                                                                                        <div class="number">
                                                                                                                                            <div id="all_timeRejectsId"></div>
                                                                                                                                        </div>
                                                                                                                                        <div class="desc">Rejects</div>
                                                                                                                                </div>
                                                                                                                                                
                                                                                                                        </div>
                                                                                                                 </div>  
                                                                                                                                                                                                                                                        
                                                                                                        </div>													
                                                                                                   <div class="row-fluid">
                                                                                                            <div class="span3 responsive" data-tablet="span6" data-desktop="span3">
                                                                                                                        <div class="dashboard-stat red">
                                                                                                                                <div class="visual">
                                                                                                                                        <i class="icon-globe"></i>
                                                                                                                                </div>
                                                                                                                                <div class="details">
                                                                                                                                        <div class="number">
                                                                                                                                            <div id="all_timeComplaintsId"></div>
                                                                                                                                        </div>
                                                                                                                                        <div class="desc">Complains</div>
                                                                                                                                </div>
                                                                                                                                                
                                                                                                                        </div>
                                                                                                            </div>

                                                                                                            <div class="span3 responsive" data-tablet="span6" data-desktop="span3">
                                                                                                                        <div class="dashboard-stat red">
                                                                                                                                <div class="visual">
                                                                                                                                        <i class="icon-envelope"></i>
                                                                                                                                </div>
                                                                                                                                <div class="details">
                                                                                                                                        <div class="number">
                                                                                                                                            <div id="all_timeOpensId"></div>
                                                                                                                                        </div>
                                                                                                                                        <div class="desc">                           
                                                                                                                                                Opens
                                                                                                                                        </div>
                                                                                                                                </div>
                                                                                                                                               
                                                                                                                        </div>
                                                                                                                </div>

                                                                                                                <div class="span3 responsive" data-tablet="span6 fix-offset"  data-desktop="span3">
                                                                                                                        <div class="dashboard-stat red">
                                                                                                                                <div class="visual">
                                                                                                                                        <i class="icon-remove-sign"></i>
                                                                                                                                </div>
                                                                                                                                <div class="details">
                                                                                                                                        <div class="number">
                                                                                                                                            <div id="all_timeUniqueOpensId"></div>
                                                                                                                                        </div>
                                                                                                                                        <div class="desc">                           
                                                                                                                                                Unique Opens
                                                                                                                                        </div>
                                                                                                                                </div>
                                                                                                                                               
                                                                                                                        </div>
                                                                                                                </div>
                                                                                                                <div class="span3 responsive" data-tablet="span6" data-desktop="span3">
                                                                                                                        <div class="dashboard-stat red">
                                                                                                                                <div class="visual">
                                                                                                                                        <i class="icon-bar-chart"></i>
                                                                                                                                </div>
                                                                                                                                <div class="details">
                                                                                                                                        <div class="number">
                                                                                                                                            <div id="all_timeClickId"></div>
                                                                                                                                        </div>
                                                                                                                                        <div class="desc">Clicks</div>
                                                                                                                                </div>
                                                                                                                                                
                                                                                                                        </div>
                                                                                                                 </div>  
                                                                                                                                                                                                                                                        
                                                                                                        </div>																										
												</div> 
                                                                                            
                                                                                            
											</div>
										</div>
										<!--END TABS-->
									</div>
									<div class="space10 visible-phone"></div>
									
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
                   
                   $('a[href="#notImplementedId"]').click(function(){
                        alert('Not implemented in the Demo version.'); 
                   });
                        
                   var key = { 'key': 'n9wsAT4YlD2aLNJDyG3cZw' };
                        $.ajax({
                            url: "https://mandrillapp.com/api/1.0/users/info.json",
                            type: "post",
                            dataType:"json",
                            data:key,
                            success: function(data){
                              $("#currentSentId").html(data.stats.today.sent);
                              $("#currentHardBouncesId").html(data.stats.today.hard_bounces);
                              $("#currentSoftBouncesId").html(data.stats.today.soft_bounces);
                              $("#currentRejectsId").html(data.stats.today.rejects);
                              $("#currentComplaintsId").html(data.stats.today.complaints);
                              $("#currentOpensId").html(data.stats.today.opens);
                              $("#currentUniqueOpensId").html(data.stats.today.unique_opens);
                              $("#currentClickId").html(data.stats.today.clicks);
                              $("#currentUniqueClickId").html(data.stats.today.unique_clicks);
                              
                              $("#last_7_daysSentId").html(data.stats.last_7_days.sent);
                              $("#last_7_daysHardBouncesId").html(data.stats.last_7_days.hard_bounces);
                              $("#last_7_daysSoftBouncesId").html(data.stats.last_7_days.soft_bounces);
                              $("#last_7_daysRejectsId").html(data.stats.last_7_days.rejects);
                              $("#last_7_daysComplaintsId").html(data.stats.last_7_days.complaints);
                              $("#last_7_daysOpensId").html(data.stats.last_7_days.opens);
                              $("#last_7_daysUniqueOpensId").html(data.stats.last_7_days.unique_opens);
                              $("#last_7_daysClickId").html(data.stats.last_7_days.clicks);
                              $("#last_7_daysUniqueClickId").html(data.stats.last_7_days.unique_clicks);
                              
                              $("#last_30_daysSentId").html(data.stats.last_30_days.sent);
                              $("#last_30_daysHardBouncesId").html(data.stats.last_30_days.hard_bounces);
                              $("#last_30_daysSoftBouncesId").html(data.stats.last_30_days.soft_bounces);
                              $("#last_30_daysRejectsId").html(data.stats.last_30_days.rejects);
                              $("#last_30_daysComplaintsId").html(data.stats.last_30_days.complaints);
                              $("#last_30_daysOpensId").html(data.stats.last_30_days.opens);
                              $("#last_30_daysUniqueOpensId").html(data.stats.last_30_days.unique_opens);
                              $("#last_30_daysClickId").html(data.stats.last_30_days.clicks);
                              $("#last_30_daysUniqueClickId").html(data.stats.last_30_days.unique_clicks);
                              
                              $("#last_60_daysSentId").html(data.stats.last_60_days.sent);
                              $("#last_60_daysHardBouncesId").html(data.stats.last_60_days.hard_bounces);
                              $("#last_60_daysSoftBouncesId").html(data.stats.last_60_days.soft_bounces);
                              $("#last_60_daysRejectsId").html(data.stats.last_60_days.rejects);
                              $("#last_60_daysComplaintsId").html(data.stats.last_60_days.complaints);
                              $("#last_60_daysOpensId").html(data.stats.last_60_days.opens);
                              $("#last_60_daysUniqueOpensId").html(data.stats.last_60_days.unique_opens);
                              $("#last_60_daysClickId").html(data.stats.last_60_days.clicks);
                              $("#last_60_daysUniqueClickId").html(data.stats.last_60_days.unique_clicks);
                              
                              $("#last_90_daysSentId").html(data.stats.last_90_days.sent);
                              $("#last_90_daysHardBouncesId").html(data.stats.last_90_days.hard_bounces);
                              $("#last_90_daysSoftBouncesId").html(data.stats.last_90_days.soft_bounces);
                              $("#last_90_daysRejectsId").html(data.stats.last_90_days.rejects);
                              $("#last_90_daysComplaintsId").html(data.stats.last_90_days.complaints);
                              $("#last_90_daysOpensId").html(data.stats.last_90_days.opens);
                              $("#last_90_daysUniqueOpensId").html(data.stats.last_90_days.unique_opens);
                              $("#last_90_daysClickId").html(data.stats.last_90_days.clicks);
                              $("#last_90_daysUniqueClickId").html(data.stats.last_90_days.unique_clicks);
        
                              $("#all_timeSentId").html(data.stats.all_time.sent);
                              $("#all_timeHardBouncesId").html(data.stats.all_time.hard_bounces);
                              $("#all_timeSoftBouncesId").html(data.stats.all_time.soft_bounces);
                              $("#all_timeRejectsId").html(data.stats.all_time.rejects);
                              $("#all_timeComplaintsId").html(data.stats.all_time.complaints);
                              $("#all_timeOpensId").html(data.stats.all_time.opens);
                              $("#all_timeUniqueOpensId").html(data.stats.all_time.unique_opens);
                              $("#all_timeClickId").html(data.stats.all_time.clicks);
                              $("#all_timeUniqueClickId").html(data.stats.all_time.unique_clicks);
        
        
                            }
                        });
                     
       
        
		});
	</script>
        
	<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>