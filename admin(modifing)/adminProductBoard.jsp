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
    <link rel="stylesheet" href="css/admin_member.css">
    
    <script src="js/bootstrap.js"></script>
    <script src="https://kit.fontawesome.com/25226f4bf8.js" crossorigin="anonymous"></script>
    
</head>
<body>
    <%@ include file = "adminMain.jsp" %>
   


        <div class="col-md-10 main">
            
          <h1>
              상품 조회
          </h1>
          <input type="text" class="form-control pull-right" id="InputProductInfo" placeholder="">
          
          <select class="form-control pull-right">
            <option>상품코드</option>
            <option>상품명</option>
          </select>
          <br><br>
          <table class="table table-bordered table-hover member">
            <tr>
            <th>Index</th>
            <th>상품코드</th>
            <th>상품명</th>
            <th>상품아이디</th>
            </tr>

            <tr>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                
            </tr>

            <tr>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                
            </tr>

            <tr>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                
            </tr>

            <tr>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                
            </tr>

            <tr>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                
            </tr>

            <tr>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                
            </tr>

            <tr>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                
            </tr>

            <tr>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                
            </tr>

            <tr>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                
            </tr>

            <tr>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                
            </tr>

           
          </table>

          <button class="btn btn-default" type="button" onclick="location.href='../MilsooSellers/productWrite.do';">상품등록</buton>
          
    
        </div>

</div>


    

</body>
</html>