/*实验4*/
CREATE TABLE g(
id INT PRIMARY KEY AUTO_INCREMENT,
NAME VARCHAR(20),
num INT
);
CREATE TABLE o(
oid INT PRIMARY KEY AUTO_INCREMENT,
gid INT,
much INT
);
INSERT INTO g(NAME,num) VALUES('商品1',10),('商品2',10),('商品3',10);
DELIMITER $
CREATE TRIGGER tg1
AFTER INSERT ON o
FOR EACH ROW
BEGIN
UPDATE g SET num=num-3 WHERE id=1;
END$
INSERT INTO o(gid,much) VALUES(1,3)$