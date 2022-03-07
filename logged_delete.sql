\set nrows :scale
\set rid random(:scale, 10000 + :scale)
begin;
delete from logged where id = :rid;
end;
