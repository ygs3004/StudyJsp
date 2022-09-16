CREATE TABLE memberEX(
    id VARCHAR(20) NOT NULL,
    passwd VARCHAR(20),
    name VARCHAR(30),
    PRIMARY KEY (id));

INSERT INTO memberEX VALUES('1', '1234', '홍길순');
INSERT INTO memberEX VALUES('2', '1235', '홍길동');
COMMIT;
SELECT * FROM memberEX;