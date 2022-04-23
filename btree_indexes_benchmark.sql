\set a random(1, 1000)
select min(a) over (partition by b,c order by b,c)
from indexes_test_table
where a = :a
order by c, b;