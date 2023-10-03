create table driver
(
    driverid  integer not null
        primary key,
    firstname varchar,
    lastname  varchar
);

alter table driver
    owner to postgres;

