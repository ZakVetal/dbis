-- LABORATORY WORK 3
-- BY Zakrevskyi_Vitalii
/*1. Написати PL/SQL код, що додає продукт з ціною 10 постачальнику з ключем BRS01, щоб сумарна вартість його продуктів була менша 400. 
Ключі нових продуктів   - prod1…prodn. Решта обов’язкових полів береться з продукту з ключем BRO1.
10 балів*/

/*2. Написати PL/SQL код, що по вказаному ключу замовника виводить у консоль його ім'я та визначає  його статус.
Якщо він купив два продукти - статус  = "yes"
Якщо він купив більше двох продуктів- статус  = "no"
Якщо він немає замовлення - статус  = "unknown*/
DECLARE VENDORSID VENDORS.VEND_ID%TYPE
VENDORSNAME VENDORS.VEND_NAME%TYPE
ORDERITEMTYPE VARCHAR(15)
BEGIN
VENDORS.VEND_ID='BRS01'
SELECT VENDORS.VEND_ID,VENDORS.VEND_NAME INTO VENDORID, VENDORNAME
FROM VENDORS JOIN PRODUCTS
ON VENDORS.VEND_ID=PRODUCTS.VEND_ID
JOIN ORDERITEMS
ON PRODUCTS.PROD_ID=ORDERITEMS.PROD_ID
IF ORDERITEMS.ITEM_PRICE=(SELECT(MIN (ITEM_PRICE) FROM ORDERITEMS)
THAN ORDERITEMSTYPE:=('YES');
ELSIF ORDERITEMS.ITEM_PRICE =(SELECT ITEM_PRICE FROM ORDERITEMS
                              MINUS SELECT(MIN(ITEM_PRICE) FROM ORDERITEMS)
THAN ORDERITEMSTYPE:=('NO');
ELSE ORDERITEMS.ITEM_PRICE=''
THAN ORDERITEMSTYPE:=('UNKNOWN');
END IF;

/*3. Створити представлення та використати його у двох запитах:
3.1. Скільки продуктів було замовлено покупцями з Германії.
3.2. Вивести назву продукту та у скількох замовленнях його купляли.
6 балів.*/
