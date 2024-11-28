--1 
select cust_name
from restBill
where bill_total > 450.00 
AND waiter_no IN (
    select staff_no
    from restStaff
    where headwaiter = 10
);

--2
select first_name, surname
from restStaff
where staff_no = (
    select headwaiter
    from restStaff
    where staff_no = (
        select waiter_no
        from restBill
        where cust_name = 'Nerida Smith' AND bill_date = 160111
    )
);

--3
select cust_name
from restBill
where bill_total IN(
  select min(bill_total)
  from restBill)
;

--4 
select rs.first_name, rs.surname
from restStaff rs
left jojn restBill rb
on rs.staff_no = rb.waiter_no
where rb.bill_no IS NULL;

--5 
select 
    rb.cust_name,
    hw.first_name AS headwaiter_first_name,
    hw.surname AS headwaiter_surname,
    rt.room_name,
    rb.bill_total
from
    restBill rb
join
    restRest_table rt ON rb.table_no = rt.table_no
join
    restStaff w ON rb.waiter_no = w.staff_no
join 
    restStaff hw ON w.headwaiter = hw.staff_no
where 
    rb.bill_total = (
        SELECT MAX(bill_total) FROM restBill
    );

