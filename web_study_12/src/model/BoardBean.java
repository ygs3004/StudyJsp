package model;

public class BoardBean {
    private int num;
    private String writer;
    private String email;
    private String subject;
    private String password;
    private String reg_date;
    private int ref; // 한개의 글 (그룹으로 댓글과 같은 ref값으로 그룹화)
    private int re_step; // 댓글1, 대댓글2, 대댓댓글3 ---- 댓글레벨
    private int re_level; // 숫자가 클수록 최신, 화면상 위에 보여짐
    private int readcount;
    private String content;

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public String getWriter() {
        return writer;
    }

    public void setWriter(String writer) {
        this.writer = writer;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getReg_date() {
        return reg_date;
    }

    public void setReg_date(String reg_date) {
        this.reg_date = reg_date;
    }

    public int getRef() {
        return ref;
    }

    public void setRef(int ref) {
        this.ref = ref;
    }

    public int getRe_step() {
        return re_step;
    }

    public void setRe_step(int re_step) {
        this.re_step = re_step;
    }

    public int getRe_level() {
        return re_level;
    }

    public void setRe_level(int re_revel) {
        this.re_level = re_revel;
    }

    public int getReadcount() {
        return readcount;
    }

    public void setReadcount(int readcount) {
        this.readcount = readcount;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
