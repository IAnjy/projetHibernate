<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	

<!DOCTYPE html>
<html lang="en">
    
<!-- Mirrored from coderthemes.com/adminto/layouts/light-horizontal/pages-starter.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 29 Nov 2019 11:50:18 GMT -->
<head>
        <meta charset="utf-8" />
        <title>Gestion de Salle de Classe</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
        <meta content="Coderthemes" name="author" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <!-- App favicon -->
        <link rel="shortcut icon" href="<%=request.getContextPath()%>/assets/images/favicon.ico">
        
         <!-- Custom box css -->
        <link href="<%=request.getContextPath()%>/assets/libs/custombox/custombox.min.css" rel="stylesheet">
        
        <!-- Sweet Alert css -->
        <link href="<%=request.getContextPath()%>/assets/libs/sweetalert2/sweetalert2.min.css" rel="stylesheet" type="text/css" />

        <!-- App css -->
        <link href="<%=request.getContextPath()%>/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="<%=request.getContextPath()%>/assets/css/icons.min.css" rel="stylesheet" type="text/css" />
        <link href="<%=request.getContextPath()%>/assets/css/app.min.css" rel="stylesheet" type="text/css" />

    </head>

   
    <body class="center-menu">

        <!-- Navigation Bar-->
        <header id="topnav">

            <!-- Topbar Start -->
            <div class="navbar-custom">
                <div class="container-fluid">
                    <ul class="list-unstyled topnav-menu float-right mb-0">

                        <li class="dropdown notification-list">
                            <!-- Mobile menu toggle-->
                            <a class="navbar-toggle nav-link">
                                <div class="lines">
                                    <span></span>
                                    <span></span>
                                    <span></span>
                                </div>
                            </a>
                            <!-- End mobile menu toggle-->
                        </li>
    
                   
    
                        <li class="dropdown notification-list">
                            <a class="nav-link dropdown-toggle nav-user mr-0 waves-effect" data-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                                <img src="<%=request.getContextPath()%>/assets/images/users/user-1.jpg" alt="user-image" class="rounded-circle">
                                <span class="pro-user-name ml-1">
                                    Admin <i class="mdi mdi-chevron-down"></i> 
                                </span>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right profile-dropdown ">
                                <!-- item-->
                                <div class="dropdown-header noti-title">
                                    <h6 class="text-overflow m-0">Welcome !</h6>
                                </div>
    
                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item notify-item">
                                    <i class="fe-user"></i>
                                    <span>My Account</span>
                                </a>
    
                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item notify-item">
                                    <i class="fe-settings"></i>
                                    <span>Settings</span>
                                </a>
    
                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item notify-item">
                                    <i class="fe-lock"></i>
                                    <span>Lock Screen</span>
                                </a>
    
                                <div class="dropdown-divider"></div>
    
                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item notify-item">
                                    <i class="fe-log-out"></i>
                                    <span>Logout</span>
                                </a>
    
                            </div>
                        </li>
    
                       
    
                    </ul>
    
                    <!-- LOGO -->
                    <div class="logo-box">
                        <a href="<%=request.getContextPath()%>/" class="logo text-center">
                            <span class="logo-lg">
                                <!-- <img src="assets/images/logo-light.png" alt="" height="16">-->
                                <span class="logo-lg-text-light">GESTION DE SALLE DE CLASSE</span> 
                            </span>
                            <span class="logo-sm">
                                <!-- <span class="logo-sm-text-dark">U</span> -->
                                <img src="assets/images/logo-sm.png" alt="" height="24">
                            </span>
                        </a>
                    </div>
    
                </div> <!-- end container-fluid-->
            </div>
            <!-- end Topbar -->

            <div class="topbar-menu">
                <div class="container-fluid">
                    <div id="navigation">
                        <!-- Navigation Menu-->
                        <ul class="navigation-menu">

                            <li class="has-submenu">
                                <a href="<%=request.getContextPath()%>/prof"><i class="fas fa-chalkboard-teacher"></i>Professeur</a>
                            </li>
                            
                            <li class="has-submenu">
                                <a href="<%=request.getContextPath()%>/salle"><i class="fas fa-hotel"></i>Salle</a>
                            </li>
                            
                            <li class="has-submenu">
                                <a href="<%=request.getContextPath()%>/occuper"><i class=" fas fa-tasks"></i>Traitement</a>
                            </li>

                           

                        </ul>
                        <!-- End navigation menu -->

                        <div class="clearfix"></div>
                    </div>
                    <!-- end #navigation -->
                </div>
                <!-- end container -->
            </div>
            <!-- end navbar-custom -->

        </header>
        <!-- End Navigation Bar-->