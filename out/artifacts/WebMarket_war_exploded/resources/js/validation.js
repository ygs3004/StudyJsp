function CheckAddProduct(){

    var productId = document.getElementById("productId");
    var name = document.getElementById("name");
    var unitPrice = document.getElementById("unitPrice");
    var unitsInStock = document.getElementById("unitsInStock");

    //상품 아이디 체크
    if(!check(/^P[0-9]{4,11}$/, productId,
        "[상품 코드]\nP와 숫자를 조합하여 5~12자까지 입력하세요\n첫 글자는 반드시 P로 시작하세요"))
        return false;

    //상품명 체크
    if(name.value.length<4|| name.value.length>12){
        alert("[상품명]\n최소 4자에서 최대 12자까지 입력하세요.");
        name.select();
        name.focus();
    }

    //상품 가격 체크
    if(unitPrice.value.length == 0 || isNaN(unitPrice.value)){
        alert("[가격]\n숫자만 입력하세요");
        unitPrice.select();
        unitPrice.focus();
        return false;
    }
}