begin;
update heap set name = md5(random()::text) where id = 1;
commit;