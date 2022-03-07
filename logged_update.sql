\set nrows :scale
\set rid random(1, :scale)
begin;
update logged set id = currval('iterator_1') where id = :rid;
end;
