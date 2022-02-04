<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MilsooSellers Admin page</title>
    
        
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/admin_login.css">
    
    <script src="js/bootstrap.js"></script>
    <script src="https://kit.fontawesome.com/25226f4bf8.js" crossorigin="anonymous"></script>
    
</head>
<body>
    <form class="form-horizontal " name="adminLoginForm" method="post">

        
        <div class="col-sm-12 box1">
            <div class="col-sm-offset-4 col-sm-4 logo_bg">
            <img src="img/밀수업자 로고.png" alt="">
            <i class="col-sm-offset-10 col-sm-4 fas fa-user-cog fa-2x"></i>
            </div>
            
        </div>
        
        
        </div>
        <div class="form-group">
          <label for="inputid3" class="col-sm-5 control-label">Admin ID</label>
          <div class="col-sm-3">
            <input type="id" class="form-control" id="adminID" placeholder="ID" maxlength="12">
        
          	
        </div>

        <div class="form-group">
          <label for="inputPassword3" class="col-sm-5 control-label">Password</label>
          <div class="col-sm-3">
            <input type="password" class="form-control " id="adminPwd" placeholder="Password" maxlength="12">
          </div>
        </div>
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-offset-4 col-sm-12">
            <input type="submit" id ="btnLogin" class="btn btn-default col-sm-4" value="로그인">
          </div>
        </div>
        <p class="text-center" style="color: #ffffff;">Copyright © MilsooSellers Corp. All Rights Reserved.</p>
        </div>
      </form>


     
      
    
        
</body>
</html>