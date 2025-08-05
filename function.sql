select * from sales;

--FUNCTION

--function 1

--if sales > 500 than yes else no

create or replace function check_sales (sales double precision)
returns varchar as $$
begin
if sales > 500 then 
return 'sales increse karo(*)';
else 
return 'sales increase mat karo(_)';
end if;
end
$$ language plpgsql;

select check_sales(499);

select * from sales;

select id, sales, qty, profit from sales;

select id, sales, qty, profit, check_sales (sales) from sales;

select id, sales, qty, profit, check_sales (profit) from sales;

--function 2

select * from sales;

create or replace function check_sales(qty int)
returns varchar as $$
begin
if qty >=5 then 
return 'delivery in 2 days';
else return 'not delevery this week';
end if;
end
$$ language plpgsql;

select check_sales(5);

select * from sales;

select id, sales, qty, profit from sales;

select id, sales, qty, profit, check_sales (qty) from sales;




