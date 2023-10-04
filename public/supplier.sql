create table supplier
(
    supplierid serial
        primary key,
    firs_tname varchar,
    last_name  varchar,
    address    varchar
);

alter table supplier
    owner to postgres;

