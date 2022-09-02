function CheckAddBook(){

    var bookId = document.getElementById("bookId");
    var name = document.getElementById("name");
    var unitPrice = document.getElementById("unitPrice");
    var unitsInStock = document.getElementById("unitsInStock")
    
    //도서 아이디 ISBN으로 시작되고 숫자를 포함하며 문자 길이가 5~12자인지 검사
    var regExpId =/^ISBN[0-9a-zA-Z]{1,8}/
    var regExpName = /^[1-9a-zA-zㄱ-ㅎㅏ-ㅣ가-힣]{4,12}/;
    var regUnitsInStock = /[0-9]+/



    if(!check(regExpId, bookId, "ISBN과 숫자를 조합하여 5~12자까지 입력하세요. 첫 글자는 반드시 ISBN으로 시작하세요")){
        return false;
    };

    //도서명의 문자 길이가 4~12자인지 검사합니다.
    if(!check(regExpName, name, "도서명은 4~12자까지 가능합니다.")){
        return false;
    }

    //가격이 입력 되지 않았습니다.
    if(unitPrice.value.length === 0){
        alert("가격이 입력되지 않았습니다.")
        return false;
    }

    // 가격이 음수인지
    if(unitPrice.value<0){
        alert("가격은 (-)가 될 수 없습니다.");
        return false;
    }

    // 재고 수가 숫자인지
    if(!check(regUnitsInStock, unitsInStock, "재고는 숫자만 입력 가능합니다.")){
        return false;
    }

    function check(regExp, e, msg){

        if(regExp.test(e.value)){
            return true;
        }

        alert(msg)
        e.select();
        e.focus();
        return false;
    }

    document.newBook.submit();

}