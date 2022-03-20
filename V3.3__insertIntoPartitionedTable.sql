insert into partitioned_table
select i, 'name_' || i
from generate_series(1, 1000000) as i;