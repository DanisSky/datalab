create table indexes_test_table
(
    a int,
    b int,
    c int
);
insert into indexes_test_table
select (random() * 1000)::integer, (random() * 1000)::integer, (random() * 1000)::integer
from generate_series(1, 1000);

create index idx_a on indexes_test_table (a);
create index idx_b on indexes_test_table (b);
create index idx_c on indexes_test_table (c);

create index idx_a_b on indexes_test_table (a, b);
create index idx_a_c on indexes_test_table (a, c);
create index idx_b_a on indexes_test_table (b, a);
create index idx_c_a on indexes_test_table (c, a);
create index idx_b_c on indexes_test_table (b, c);
create index idx_c_b on indexes_test_table (c, b);

create index idx_a_b_c on indexes_test_table (a, b, c);
create index idx_a_c_b on indexes_test_table (a, c, b);
create index idx_b_a_c on indexes_test_table (b, a, c);
create index idx_b_c_a on indexes_test_table (b, c, a);
create index idx_c_a_b on indexes_test_table (c, a, b);
create index idx_c_b_a on indexes_test_table (c, b, a);