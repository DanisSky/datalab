begin;
select *
from clustered
where id in (select rid from (select (random() * 10000)::integer as rid from generate_series(1, 100)) as r);
end;