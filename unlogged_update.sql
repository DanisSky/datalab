\set nrows :scale
\set rid random(1, :scale)
begin;
update unlogged set id = nextval('iterator_2') where id = :rid;
end;
