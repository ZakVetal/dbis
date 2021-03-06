-- LABORATORY WORK 1
-- BY Zakrevskyi_Vitalii
/*---------------------------------------------------------------------------
1.Створити схему даних з назвою – прізвище студента, у якій користувач може: 
змінювати структуру таблиць.
4 бали

---------------------------------------------------------------------------*/
--Код відповідь:
Create user zakrevskiy IDENTIFIED by zakrevskiy
Default TABLESPACE "USERS"
TEMPORARY TABLESPACE "TEMP";

Alter USER zakrevskiy QUOTA 100M on USERS;

GRANT "conect" TO zakrevskiy;

GRANT CREATE ANY TABLE TO zakrevskiy;
GRANT ALTER ANY TABLE TO zakrevskiy;








/*---------------------------------------------------------------------------
2. Створити таблиці, у яких визначити поля та типи. Головні та зовнішні ключі 
створювати окремо від таблиць використовуючи команди ALTER TABLE. 
Книжка складається з сторінок, на яких є рядки тексту.
4 бали

---------------------------------------------------------------------------*/
--Код відповідь:
CREATE TABLE book_1 (book_body_1 char(250))
ALTER TABLE constraint(book_1_name_pk char(30)not null)
primary key 
















  
/* --------------------------------------------------------------------------- 
3. Надати додаткові права користувачеві (створеному у пункті № 1) для створення таблиць, 
внесення даних у таблиці та виконання вибірок використовуючи команду ALTER/GRANT. 
Згенерувати базу даних використовуючи код з теки OracleScript та виконати запити: 

---------------------------------------------------------------------------*/
--Код відповідь:
GRANT CREATE ANY TABLE TO zakrevskiy;
GRANT ALTER ANY TABLE TO zakrevskiy;
GRANT INSERT ANY TABLE TO zakrevskiy;







/*---------------------------------------------------------------------------
3.a. 
Як звуть покупця, що купив найдорожчий товар.
Виконати завдання в Алгебрі Кодда. 
4 бали
---------------------------------------------------------------------------*/

--Код відповідь:













/*---------------------------------------------------------------------------
3.b. 
Яка країна, у якій живуть покупці має найкоротшу назву?
Виконати завдання в SQL. 
4 бали

---------------------------------------------------------------------------*/

--Код відповідь:
SELECT CUST_COUNTRY
FROM CUSTOMERS
Where LENGTH (Trim(cust_country)=(Select Min(Length(cust_country)from CUSTOMERS); 














/*---------------------------------------------------------------------------
c. 
Вивести країну та пошту покупця, як єдине поле client_name, для тих покупців, що мають замовлення, але воно порожнє (нема orderitems). 
Виконати завдання в SQL. 
4 бали

---------------------------------------------------------------------------*/
--Код відповідь:

