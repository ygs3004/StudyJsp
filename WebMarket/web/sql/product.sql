CREATE TABLE product(
    p_id VARCHAR2(10) NOT NULL,
    p_name VARCHAR2(20),
    p_unitPrice NUMBER(10),
    p_description VARCHAR2(1000),
    p_category VARCHAR2(20),
    p_manufacturer VARCHAR2(20),
    p_unitsInStock LONG,
    p_condition VARCHAR2(20),
    p_filename VARCHAR2(20),
    PRIMARY KEY (p_id)
);

SELECT * FROM product;