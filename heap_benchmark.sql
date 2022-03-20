\set id random(1, 1000000)
begin;
select *
from heap_table
where id = :id;
commit;