create table supplier
(
    supplierid integer not null
        primary key,
    firs_tname varchar,
    address    varchar,
    last_name  varchar
);

alter table supplier
    owner to postgres;

