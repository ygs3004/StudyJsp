<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <link rel = "stylesheet"
          href="./resources/css/bootstrap.min.css">
    <meta charset="UTF-8">
    <title>$Title$</title>
</head>
<body>
    <jsp:include page="menu.jsp"/>
    <div class="jumbotron">
        <div class="container">
            <h1 class="display-3">도서 등록</h1>
        </div>
    </div>

    <div class="container">
        <form action="processAddBook.jsp" name="newBook" class="form-horizontal" method="post"
        enctype="multipart/form-data">

        <div class="form-group row">
            <label class="col-sm-2">도서 코드</label>
            <div class="col-sm-3">
                <input type="text" name="bookId" class="form-control">
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-2">도서명</label>
            <div class="col-sm-3">
                <input type="text" name="name" class="form-control">
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-2">가격</label>
            <div class="col-sm-3">
                <input type="text" name="unitPrice" class="form-control">
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-2">저자</label>
            <div class="col-sm-3">
                <input type="text" name="author" class="form-control">
            </div>
        </div>

            <div class="form-group row">
                <label class="col-sm-2">출판사</label>
                <div class="col-sm-3">
                    <input type="text" name="publisher" class="form-control">
                </div>
            </div>

            <div class="form-group row">
                <label class="col-sm-2">출판일</label>
                <div class="col-sm-3">
                    <input type="text" name="releaseDate" class="form-control">
                </div>
            </div>

            <div class="form-group row">
                <label class="col-sm-2">총 페이지수</label>
                <div class="col-sm-3">
                    <input type="text" name="totalPages" class="form-control">
                </div>
            </div>

            <div class="form-group row">
                <label class="col-sm-2">상세 정보</label>
                <div class="col-sm-5">
                  <textarea name="description" cols="50" rows="2"
                            class="form-control"></textarea>
                </div>
            </div>

            <div class="form-group row">
                <label class="col-sm-2">분류</label>
                <div class="col-sm-3">
                    <input type="text" name="category" class="form-control">
                </div>
            </div>

            <div class="form-group row">
                <label class="col-sm-2">재고 수</label>
                <div class="col-sm-3">
                    <input type="text" name="unitsInStock" class="form-control">
                </div>
            </div>

            <div class="form-group row">
                <label class="col-sm-2">상태</label>
                <div class="col-sm-5">
                    <input type="radio" name="condition" value="New"> 신규 제품
                    <input type="radio" name="condition" value="Old"> 중고 제품
                    <input type="radio" name="condition" value="Refurbished"> 재생 제품
                </div>
            </div>

            <div class="form-group row">
                <label class="col-sm-2">이미지</label>
                <div class="col-sm-5">
                    <input type="file" name="bookImage" class="form-control">
                </div>
            </div>

            <div class="form-group row">
                <div class="col-sm-offset-2 col-sm-10">
                    <input type="submit" class="btn btn-primary" value="등록">
                </div>
            </div>

    </div>
    <jsp:include page="footer.jsp"/>
</body>
</html>
