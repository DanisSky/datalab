create table partitioned_table
(
    id   bigint,
    name varchar
) PARTITION BY HASH (id);
create table hash_1
    partition of partitioned_table
        for values with (modulus 10, remainder 0);
create table hash_2
    partition of partitioned_table
        for values with (modulus 10, remainder 1);
create table hash_3
    partition of partitioned_table
        for values with (modulus 10, remainder 2);
create table hash_4
    partition of partitioned_table
        for values with (modulus 10, remainder 3);
create table hash_5
    partition of partitioned_table
        for values with (modulus 10, remainder 4);
create table hash_6
    partition of partitioned_table
        for values with (modulus 10, remainder 5);
create table hash_7
    partition of partitioned_table
        for values with (modulus 10, remainder 6);
create table hash_8
    partition of partitioned_table
        for values with (modulus 10, remainder 7);
create table hash_9
    partition of partitioned_table
        for values with (modulus 10, remainder 8);
create table hash_10
    partition of partitioned_table
        for values with (modulus 10, remainder 9);