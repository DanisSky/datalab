\set nrows :scale
\set delta 100 +  :scale
begin;
update logged set id = id + :delta where id = :scale;
end;
