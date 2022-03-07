\set nrows :scale
\set rid random(1, :scale)
begin;
update logged set id = nextval('iterator_1') where id = :rid;
end;
