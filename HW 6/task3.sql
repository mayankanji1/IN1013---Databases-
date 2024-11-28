--1
select first_name
from restStaff
inner join restBill
on restStaff.staff_no = restbill.waiter_no
where cust_name = "Tanya Singh";

--2
select room_date
from restRoom_management
inner join restStaff
on restRoom_management.headwaiter = restStaff.staff_no
where first_name = "Charles" and restRoom_management.room_name = "Green" and room_date like '__02__';

--3
select T2.first_name, T2.surname
from restStaff T1
inner join restStaff T2
on T1.headwaiter = T2.headwaiter
where t1.first_name = "Zoe";

--4
select cust_name, bill_total, restStaff.first_name
from restbill
inner join restStaff
on restbill.waiter_no = restStaff.staff_no
order by bill_total desc;

--5 
select distinct 
    rs.first_name,
    rs.surname
from 
    restBill rb1
join 
    restStaff rs ON rb1.waiter_no = rs.staff_no
where 
    rs.headwaiter IN (
        SELECT DISTINCT w1.headwaiter
        FROM restBill rb
        JOIN restStaff w1 ON rb.waiter_no = w1.staff_no
        WHERE rb.bill_no IN (00014, 00017)
    );

--6 
select distinct 
    rs.first_name,
    rs.surname
from 
    restRoom_management rm
join 
    restStaff rs ON rm.headwaiter = rs.staff_no
where 
    rm.room_name = 'Blue' 
    AND rm.room_date = 160312
union
select distinct 
    ws.first_name,
    ws.surname
from 
    restBill rb
join 
    restStaff ws ON rb.waiter_no = ws.staff_no
join 
    restRest_table rt ON rb.table_no = rt.table_no
join 
    restRoom_management rm ON rt.room_name = rm.room_name AND rb.bill_date = rm.room_date
where 
    rm.room_name = 'Blue' 
    AND rm.room_date = 160312;

