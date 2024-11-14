-- 1
select SUM(bill_total) AS Income from restBill;

-- 2
select SUM(bill_total) AS "Feb Income" from restBill where bill_date LIKE '1602__';

-- 3
select AVG(bill_total) from restBill;

-- 4
select MIN(no_of_seats) AS "Min" from restRest_table where room_name = "Blue";
select MAX(no_of_seats) AS "Max" from restRest_table where room_name = "Blue";
select AVG(no_of_seats) AS "Avg" from restRest_table where room_name = "Blue";

-- 5
SELECT COUNT(DISTINCT table_no) FROM restBill WHERE waiter_no IN (004, 002);