CREATE TABLE product(
    p_id VARCHAR2(10) NOT NULL,
    p_name VARCHAR2(20),
    p_unitPrice NUMBER(10),
    p_description VARCHAR2(1000),
    p_category VARCHAR2(20),
    p_manufacturer VARCHAR2(20),
    p_unitsInStock CLOB,
    p_condition VARCHAR2(20),
    p_filename VARCHAR2(20),
    PRIMARY KEY (p_id)
);


SELECT * FROM product;

CREATE TABLE member(
    id VARCHAR(30) not null,
    password VARCHAR(30) not null,
    name VARCHAR(30) not null,
    gender VARCHAR(7),
    birth vARCHAR(20),
    mail VARCHAR(30),
    phone VARCHAR(30),
    address VARCHAR(90),
    regist_day VARCHAR(50),
    PRIMARY KEY (id)
);

SELECT * FROM member;
