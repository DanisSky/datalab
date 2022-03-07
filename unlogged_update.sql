\set nrows :scale
begin;
update unlogged set id = currval('iterator_2') where id = :nrows - nextval('iterator_2');
end;
