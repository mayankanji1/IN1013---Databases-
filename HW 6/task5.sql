--1 
SELECT 
    rs.first_name,
    rs.surname,
    rb.bill_date,
    COUNT(rb.bill_no) AS num_bills
FROM 
    restBill rb
JOIN 
    restStaff rs
ON 
    rb.waiter_no = rs.staff_no
GROUP BY 
    rs.first_name, rs.surname, rb.bill_date
HAVING 
    COUNT(rb.bill_no) >= 2;

--2
SELECT 
    room_name,
    COUNT(*) AS num_tables
FROM 
    restRest_table
WHERE 
    no_of_seats > 6
GROUP BY 
    room_name;

--3 
SELECT 
    rt.room_name,
    SUM(rb.bill_total) AS total_bill_amount
FROM 
    restBill rb
JOIN 
    restRest_table rt
ON 
    rb.table_no = rt.table_no
GROUP BY 
    rt.room_name;

--4 
SELECT 
    hw.first_name AS headwaiter_first_name,
    hw.surname AS headwaiter_surname,
    SUM(rb.bill_total) AS total_bill_amount
FROM 
    restBill rb
JOIN 
    restStaff w ON rb.waiter_no = w.staff_no
JOIN 
    restStaff hw ON w.headwaiter = hw.staff_no
GROUP BY 
    hw.first_name, hw.surname
ORDER BY 
    total_bill_amount DESC;

--5 
SELECT 
    cust_name,
    AVG(bill_total) AS avg_spent
FROM 
    restBill
GROUP BY 
    cust_name
HAVING 
    AVG(bill_total) > 400;

--6 
SELECT 
    rs.first_name,
    rs.surname,
    rb.bill_date,
    COUNT(rb.bill_no) AS num_bills
FROM 
    restBill rb
JOIN 
    restStaff rs
ON 
    rb.waiter_no = rs.staff_no
GROUP BY 
    rs.first_name, rs.surname, rb.bill_date
HAVING 
    COUNT(rb.bill_no) >= 3;
