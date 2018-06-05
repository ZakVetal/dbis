-- LABORATORY WORK 2
-- BY Zakrevskyi_Vitalii
/*---------------------------------------------------------------------------
1.Вивести назву продукту,у скількох замовленнях даний продукт продавався та 
скільки постачальників продають даний продукт.
---------------------------------------------------------------------------*/
--Код відповідь:
SELECT PRODUCTS.PROD_NAME,COUNT(ORDERITEMS.ORDER_NUM),COUNT(PRODUCTS.VEND_1)
FROM PRODUCTS LEFT JOIN ORDERITEMS
ON PRODUCTS.PROD_ID=ORDERITEMS.PROD_ID
ORDER BY PRODUCTS.PROD_NAME;
/*---------------------------------------------------------------------------
2.Вивести ключ постачальника,що має три продукти,кожний з яких продавався 
більше ніж трьом покупцям.
---------------------------------------------------------------------------*/
--Код відповідь:
Select PRODUCTS.VEND_ID, COUNT(ORDERITEMS.ORDER_NUM)
FROM PRODUCTS LEFT JOIN ORDERITEMS
ON PRODUCTS.PROD_ID=ORDERITEMS.PROD_ID
JOIN VENDORS
ON VENDORS.VEND_ID=PRODUCTS.VEND_ID
GROUP BY PRODUCTS.VEND_ID
HAVING COUNT(ORDERITEMS.ORDER_NUM)>2
AND
COUNT(DISTINCT PRODUCTS.PROD_ID)>=3
