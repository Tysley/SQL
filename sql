   
INSERT INTO MEMBER VALUES ('100','100','park','011')

INSERT INTO MEMBER VALUES ('200','200','park','011')

INSERT INTO MEMBER VALUES ('300','300','park','011')

SELECT * FROM MEMBER

SELECT * FROM MEMBER WHERE id = '100' --id가 100인 모든 컬럼


SELECT id FROM MEMBER WHERE id = '100' --id가 100인 id 컬럼

SELECT id, name FROM MEMBER WHERE id = '100' --id가 100인 id,name 컬럼

SELECT name, id FROM MEMBER WHERE id = '100' --id가 100인 id,name 컬럼

SELECT id as 아이디, name FROM MEMBER WHERE id = '100' --id가 100인 id,name 컬럼

SELECT tel FROM MEMBER WHERE name = 'park'

UPDATE MEMBER SET name = 'kim' WHERE id = '100'

UPDATE MEMBER SET name = 'yang' WHERE id = '200'

UPDATE MEMBER SET name = 'lee' WHERE id = '300'
   
SELECT * FROM MEMBER   

UPDATE MEMBER SET pw = '8888', tel = '9999' WHERE id = 'ice'
   
DELETE FROM MEMBER WHERE id = '100'

DELETE FROM MEMBER WHERE tel = '011'

SELECT * FROM MEMBER WHERE id = '200' AND tel = '011'

SELECT * FROM MEMBER WHERE id = '200' or tel = '011'

-- id,name,content,price,company,img

CREATE TABLE product (
	id varchar2(200), 
	name varchar2(200), 
	content varchar2(200), 
	price varchar2(200), 
	company varchar2(200), 
	img varchar2(200)
)

SELECT * FROM MEMBER ORDER BY id -- 오름차순

SELECT * FROM MEMBER ORDER BY id DESC -- 내림차순



-- price로 내림차순 정렬하여 전체컬럼 검색 

SELECT * FROM PRODUCT3 ORDER BY PRICE DESC

 --company로 오름차순 정렬하여 제품의 이름, 내용, 가격 검색

SELECT NAME FROM PRODUCT3 ORDER BY COMPANY

SELECT CONTENT  FROM PRODUCT3 ORDER BY COMPANY

SELECT PRICE  FROM PRODUCT3 ORDER BY COMPANY

--id가 100인 제품의 이름과 가격 검색

SELECT NAME, PRICE FROM PRODUCT3 WHERE ID = '100'

--price가 5000인 제품명과 회사명

SELECT NAME, COMPANY  FROM PRODUCT3 WHERE PRICE = '5000'

--id가 100이고 가격이 1000인 제품명과 이미지 검색

SELECT NAME, IMG  FROM PRODUCT3 WHERE ID = '100' AND PRICE = '1000'

--회사명이 c100인 회사명과 제품명

SELECT COMPANY, NAME  FROM PRODUCT3 WHERE COMPANY = 'c100'

--회사명이 c100, c200인 제품명과 가격

SELECT NAME, PRICE  FROM PRODUCT3 WHERE COMPANY = 'c100' OR COMPANY = '200'

--price가 5000원인 제품의 content를 품절로 수정

UPDATE PRODUCT3 SET CONTENT = '품절' WHERE PRICE = '5000' 

--id가 100, 102번 제품의 img를 o.png로, price를 10000으로 수정

UPDATE PRODUCT3 SET IMG = 'o.png', PRICE = '10000' WHERE ID = '100' OR ID = '102'

--id가 101번 제품의 company를 apple, name은 appleshoes로 수정

UPDATE PRODUCT3 SET COMPANY = 'apple', NAME = 'appleshoes' WHERE ID = '101'

--name이 shoes1이거나 id가 107인 제품 삭제

DELETE FROM PRODUCT3 WHERE NAME = 'shoes1' OR ID = '107'

--회사명이 c100인 경우 모든 정보 삭제

DELETE FROM PRODUCT3 WHERE COMPANY  = 'c100'

--테이블의 모든 정보 삭제

DELETE FROM PRODUCT3
