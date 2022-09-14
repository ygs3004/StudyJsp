DROP SEQUENCE board_seq;
DROP TABLE board;

CREATE TABLE board(
    num NUMBER(3) NOT NULL PRIMARY KEY,
    writer VARCHAR2(20),
    email VARCHAR2(50),
    subject VARCHAR2(50),
    password VARCHAR2(30),
    reg_date DATe,
    ref NUMBER(3),
    re_step NUMBER(3),
    re_level NUMBER(3),
    readcount NUMBER(3),
    content VARCHAR2(500)
);

CREATE SEQUENCE board_seq;
COMMIT;

SELECT * FROM board;