function infoConfirm(){
    if(document.reg_frm.id.value.length == 0){
        alert("아이디는 필수기입 항목입니다.")
        reg_frm.id.focus();

        return;
    }

    if(document.reg_frm.id.value.length < 4){
        alert("아이디는 4글자 이상이어야 합니다.")
        reg_frm.id.focus();

        return;
    }

    if(document.reg_frm.pw.value.length < 4){
        alert("비밀번호는 필수 기입 항목입니다.")
        reg_frm.pw.focus();

        return;
    }

    if(document.reg_frm.pw.value != document.reg_frm.pw_check.value){
        alert("비밀번호가 일치하지 않습니다.");
        reg_frm.pw.focust();

        return;
    }

    if(document.reg_frm.name.value.length==0){
        alert("이름은 필수 기입 사항입니다.");
        reg_frm.name.focus();

        return;
    }

    if(document.reg_frm.email.value.length==0){
        alert("이메일은 필수 기입 사항입니다.");
        reg_frm.email.focus();

        return;
    }

    document.reg_frm.submit();
}

function updateInfoConfirm(){
    if(document.reg_frm.pw.value ==""){
        alert("비밀번호를 입력하세요.");
        document.reg_frm.pw.focus();

        return;
    }

    if(document.reg_frm.pw.value != document.reg_frm.pw_check.value){
        alert("비밀번호가 일치하지 않습니다.");
        reg_frm.pw.focust();

        return;
    }

    if(document.reg_frm.email.value.length == 0){
        alert("이메일은 필수기입 사항입니다.");
        reg_frm.email.focus();

        return;
    }

    document.reg_frm.submit();
}
