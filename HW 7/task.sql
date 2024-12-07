--1 
CREATE VIEW samsBills AS
SELECT 
    s.first_name, 
    s.surname, 
    b.bill_date, 
    b.cust_name, 
    b.bill_total
FROM 
    restStaff s
JOIN 
    restBill b
ON 
    s.staff_no = b.waiter_no
WHERE 
    s.first_name = 'Sam' AND s.surname = 'Pitt';

--2 
SELECT *
FROM samsBills
WHERE bill_total > 400;

--3 
CREATE VIEW roomTotals AS
SELECT 
    rt.room_name, 
    SUM(b.bill_total) AS total_sum
FROM 
    restBill b
JOIN 
    restRest_table rt
ON 
    b.table_no = rt.table_no
GROUP BY 
    rt.room_name;

--4 
CREATE VIEW teamTotals AS
SELECT 
    CONCAT(h.first_name, ' ', h.surname) AS headwaiter_name,
    SUM(b.bill_total) AS total_sum
FROM 
    restStaff w
JOIN 
    restStaff h
ON 
    w.headwaiter = h.staff_no
JOIN 
    restBill b
ON 
    w.staff_no = b.waiter_no
GROUP BY 
    h.first_name, h.surname;
