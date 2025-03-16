/* the simple way */
select p.product_name, s.year, s.price
from Sales s
join Product p
on s.product_id = p.product_id


/* the hard way */
select p.product_name, s.year, s.price
from 
    (select distinct product_id, year, price
    from Sales) as s 
inner join Product as p
where s.product_id = p.product_id;