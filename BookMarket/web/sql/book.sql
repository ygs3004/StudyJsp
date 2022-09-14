CREATE TABLE book(
        b_id VARCHAR2(10) NOT NULL,
        b_name VARCHAR2(60),
        b_unitPrice NUMBER(10),
        b_author VARCHAR2(50),
        b_publisher VARCHAR2(20),
        b_description VARCHAR2(1000),
        b_category VARCHAR2(20),
        b_unitsInStock NUMBER(10),
        b_totalPages NUMBER(10),
        b_releaseDate VARCHAR2(20),
        b_condition VARCHAR2(20),
        b_filename VARCHAR2(20),
        PRIMARY KEY (b_id)
);

SELECT * FROM book;

DROP TABLE book;
