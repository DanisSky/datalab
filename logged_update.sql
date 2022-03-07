\set nrows :scale
\set delta 100 +  :scale
begin;
update logged set id = id + :delta;
end;
