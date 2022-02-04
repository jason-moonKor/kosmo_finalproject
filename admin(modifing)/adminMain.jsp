<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MilsooSellers Admin 화면</title>
    
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/admin_index.css">
    
    <script src="js/bootstrap.js"></script>
    <script src="https://kit.fontawesome.com/25226f4bf8.js" crossorigin="anonymous"></script>
    
</head>
<body>
    <div class="row">
        <div class="col-md-2 slidebar">
            <ul>
                <li><h3><a href="adminMain.jsp">MilsooSellers Admin</a></h3></li>
                <br><br>
                <c:if test="${sessionScope.adminId != null }">
                	
                <li><a href="AdminMemberList.jsp">회원관리 검색, 조회, 삭제 <span class="caret"></a></span></li>
                <li><a href="AdminProductList.jsp">상품관리 등록,조회,삭제, 검색 <span class="caret"></a></span></li>
                <li><a href="AdminBoardList.jsp">게시판관리 Notice, Question, Review <span class="caret"></a></span></li>
           		</c:if>
            </ul>

        </div>

        <div class="col-md-10 profile">
            <div class="admin_profile">
              <c:if test="${msg == 'success' }">
              <span>${sessionScope.adminId } 님 환영합니다.</span>
              </c:if>
              
              ${result}
              
            </div>
        </div>
        
    

</body>
</html>