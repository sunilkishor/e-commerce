<%-- 
    Document   : AddUser
    Created on : Dec 11, 2017, 8:43:59 PM
    Author     : sunil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
    <meta name="author" content="GeeksLabs">
    <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
    <link rel="shortcut icon" href="img/favicon.png">

    <title>Form Validation | Creative - Bootstrap 3 Responsive Admin Template</title>

    <!-- Bootstrap CSS -->    
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <!-- bootstrap theme -->
    <link href="${pageContext.request.contextPath}/css/bootstrap-theme.css" rel="stylesheet">
    <!--external css-->
    <!-- font icon -->
    <link href="${pageContext.request.contextPath}/css/elegant-icons-style.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/css/font-awesome.min.css" rel="stylesheet" />
    <!-- Custom styles -->
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/style-responsive.css" rel="stylesheet" />

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
    <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
      <script src="js/lte-ie7.js"></script>
    <![endif]-->

 
    </head>
    <body>
        <section id="container" class="">
            <%@include file="Sidebar.jsp"%>
      <section id="main-content">
          
          <section class="wrapper">
		
          
              <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                             Add User
                          </header>
                          <div class="panel-body">
                              <div class="form">
                                  <form class="form-validate form-horizontal "  id="register_form" method="POST" action="UserController?action=save">
                                      <div class="form-group ">
                                          <label for="fullname" class="control-label col-lg-2">Full name <span class="required">*</span></label>
                                          <div class="col-lg-10">
                                              <input class=" form-control" id="fullname" name="fullname" type="text" />
                                          </div>
                                      </div>
                                        <div class="form-group ">
                                          <label for="bdate" class="control-label col-lg-2">Birth Date <span class="required">*</span></label>
                                          <div class="col-lg-10">
                                              <input class="form-control " id="bdate" name="date" type="date" />
                                          </div>
                                      </div>
                                      
                                      <div class="form-group ">
                                          <label for="gender" class="control-label col-lg-2">Gender<span class="required">*</span></label>
                                            <div class="col-lg-10">
                                          <div class="radios">
                                               <input name="sample-radio" id="radio-01" value="1" type="radio" checked /> Male
                                               <input   name="sample-radio" id="radio-02" value="1" type="radio" /> Female     
                                               <input  name="sample-radio" id="radio-03" value="1" type="radio" /> Other          
                                              
                                          </div>
                                            
                                          </div>
                                      </div>

                                   
                                      <div class="form-group ">
                                          <label for="username" class="control-label col-lg-2">Username <span class="required">*</span></label>
                                          <div class="col-lg-10">
                                              <input class="form-control " id="username" name="username" type="text" />
                                          </div>
                                      </div>
                                                 <div class="form-group ">
                                          <label for="email" class="control-label col-lg-2">Email <span class="required">*</span></label>
                                          <div class="col-lg-10">
                                              <input class="form-control " id="email" name="email" type="email" />
                                          </div>
                                      </div>
                                      <div class="form-group ">
                                          <label for="password" class="control-label col-lg-2">Password <span class="required">*</span></label>
                                          <div class="col-lg-10">
                                              <input class="form-control " id="password" name="password" type="password" />
                                          </div>
                                      </div>
                                      <div class="form-group ">
                                          <label for="confirm_password" class="control-label col-lg-2">Confirm Password <span class="required">*</span></label>
                                          <div class="col-lg-10">
                                              <input class="form-control " id="confirm_password" name="confirm_password" type="password" />
                                          </div>
                                      </div>
                                         <div class="form-group ">
                                          <label for="phone1" class="control-label col-lg-2">Phone<span class="required">*</span></label>
                                          <div class="col-lg-10">
                                              <input class=" form-control" id="phone1" name="phone" type="phone"  />
                                          </div>
                                      </div>
                                  
                                         <div class="form-group ">
                                          <label for="address" class="control-label col-lg-2">Address <span class="required">*</span></label>
                                          <div class="col-lg-10">
                                              <input class=" form-control" id="address" name="address" type="text" />
                                          </div>
                                      </div>
                                       
                                      <div class="form-group ">
                                          <label for="agree" class="control-label col-lg-2 col-sm-3">Agree to Our Policy <span class="required">*</span></label>
                                          <div class="col-lg-10 col-sm-9">
                                              <input  type="checkbox" style="width: 20px" class="checkbox form-control" id="agree" name="agree" />
                                          </div>
                                      </div>
                                      <div class="form-group">
                                          <div class="col-lg-offset-2 col-lg-10">
                                              <button class="btn btn-primary" type="submit">ADD USER</button>
                                              <button class="btn btn-default" type="button">Cancel</button>
                                          </div>
                                      </div>
                                  </form>
                              </div>
                          </div>
                      </section>
                  </div>
              </div>
              <!-- page end-->
          </section>
      </section>
      <!--main content end-->
  </section>
  <!-- container section end -->

    <!-- javascripts -->
    <script src="${pageContext.request.contextPath}/js/jquery.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <!-- nice scroll -->
    <script src="${pageContext.request.contextPath}/js/jquery.scrollTo.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.nicescroll.js" type="text/javascript"></script>
    <!-- jquery validate js -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.validate.min.js"></script>

    <!-- custom form validation script for this page-->
    <script src="${pageContext.request.contextPath}/js/form-validation-script.js"></script>
    <!--custome script for all page-->
    <script src="${pageContext.request.contextPath}/js/scripts.js"></script>    

       
    </body>
</html>
