\set nrows 1411273
\set delta 1 +  :nrows
\set x random(1, nrows)
begin;
update unlogged set id = id + :delta where id = :x;
end;
