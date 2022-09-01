package com.javalec.ex;
// DAO(Data Access Object) : DB를 사용해 데이터를 조회하거나 조작하는
// 기능을 처리하는 오브젝트
public class MemberDao {

    public static final int MEMBER_NONEXISTENT=0;
    public static final int MEMBER_EXISTENT=1;
    public static final int MEMBER_JOIN_FAIL=0;
    public static final int MEMBER_JOIN_SUCESS=1;
    public static final int MEMBER_LOGIN_PW_NO_GOOD=0;
    public static final int MEMBER_LOGIN_SUCCESS=1;
    public static final int MEMBER_LOGIN_IS_NOT=-1;
    private static MemberDao instance = null;

    private MemberDao(){

    }

    public MemberDao getInstance(){
        return instance;
    }

}
