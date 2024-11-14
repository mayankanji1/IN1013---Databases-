-- 1
select bill_date, bill_total from restBill where cust_name = "Bob Crow";

-- 2
select DISTINCT cust_name from restBill WHERE cust_name LIKE '%Smith' ORDER BY cust_name asc;

-- 3
select DISTINCT cust_name from restBill WHERE cust_name LIKE '% C%';

--4 
select first_name, surname from restStaff where headwaiter IS NOT NULL;

-- 5
select * from restBill where bill_date LIKE '1602__';

-- 6
select DISTINCT bill_date from restBill where bill_date LIKE '15____' ORDER BY bill_date asc;