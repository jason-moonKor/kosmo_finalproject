<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%@ include file = "adminMain.jsp" %>
   
        <div class="col-md-9">

          <h1>
            상품관리
        </h1>

            <form>
                <div class="form-group">
                  <label for="exampleInputProductCode">상품 코드</label>
                  <input type="email" class="form-control" id="exampleInputEmail1" placeholder="상품코드">
                </div>
                <div class="form-group">
                  <label for="exampleInputProductName">상품명</label>
                  <input type="password" class="form-control" id="exampleInputPassword1" placeholder="상품명">
                </div>
                <div class="form-group">
                  <label for="exampleInputProductPrice">가격</label>
                  <input type="password" class="form-control" id="exampleInputPassword1" placeholder="가격">
                </div>
                <div class="form-group">
                  <label for="exampleInputProductID">상품아이디</label>
                  <input type="password" class="form-control" id="exampleInputPassword1" placeholder="상품아이디">
                </div>
                <div class="form-group">
                  <label for="exampleInputProductCategory">카테고리</label>
                  <input type="password" class="form-control" id="exampleInputPassword1" placeholder="카테고리">
                </div>
                <div class="form-group">
                  <label for="exampleInputFile">파일 업로드</label>
                  <input type="file" id="exampleInputFile">
                  <p class="help-block">상품 이미지를 업로드해주세요.</p>
                </div>
               
                <button type="submit" action="/Milsoosellers/productWrite.jsp" class="btn btn-default">상품 등록</button>
                <button type="reset" class="btn btn-default">등록 취소</button>
              </form>
        </div>

</div>

<div class="row">
   
</div>
    

</body>
</html>