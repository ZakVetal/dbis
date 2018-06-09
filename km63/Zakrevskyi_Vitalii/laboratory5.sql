-- LABORATORY WORK 5
-- BY Zakrevskyi_Vitalii
/*1.Написати функцію,що повертає кількість продуктів постачальника за ключем 
постачальника.*/
CREATE FUNCTION item_num
            (O_id in number,item_num IN VARCHAR 2)
            RETURN item_num  VARCHAR 2
            IS
            BEGIN
            SELECT COUNT(distint(prod.id))INTO item_num
            FROM orders
            WHERE ORDERS_NUM =O_id
            RETURN item_num
            END;           
/*2.Написати процедуру,що за ім'ям постачальника повертає його ключ,якщо 
операція не можлива процедура кидає exception.*/
CREATE PROCEDURE c_name
(c_name in VARCHAR 2)
IS

BEGIN 
SELECT CUST_ID
FROM CUSTOMER
WHERE CUST_NAME=c_name
EXCEPTION
WHEN no_data_found
THEN DBMS_output.line(sorry,try again)
when other
THEN DBMS_output.line(sorry,..)
END c_name;
/*3.Написати процедуру,що оновлює ціну продукту.Визначити усі необхідні 
параметри.Якщо продукту не існує,або продукт продано хоча б в одне замовлення-
процедура кидає exception.*/
CREATE PROCEDURE new_name
(P.NAME in VARCHAR 2,
NEW.NAME in VARCHAR 2)
IS
EXCEPTION NOT_EXIST
EXCEPTION SOLD
BEGIN
SELECT PROD_NAME
FROM PRODUCTS
WHERE PROD_NAME=P.NAME
UPDATE PRODUCTS
SET PRODUCTS.PROD_NAME=NEW_NAME
RAISE EXCEPTION SOLD
WHEN PROD_NAME
