\set nrows 145752
\set delta 1 +  :nrows
\set x random(1, :nrows)
begin;
update logged set id = id + :delta where id = :x;
end;
