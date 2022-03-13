create index id_idx on clustered (id);
cluster verbose clustered using id_idx;
analyze clustered;