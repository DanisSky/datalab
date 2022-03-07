\set nrows :scale
\set delta 100 +  :scale
begin;
update unlogged set id = id + :delta where id = :scale;
end;
