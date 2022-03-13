insert into clustered
select i, 'name_' || i
from generate_series(1, 10000) as i;

analyze clustered;

update clustered
set name = 'name_' || (random() * 10000)::integer
where id in (select rid from (select (random() * 10000)::integer as rid from generate_series(1, 5000)) as r);
