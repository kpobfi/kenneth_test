create table driver
(
    driverid  serial
        primary key,
    firstname varchar,
    lastname  varchar
);

alter table driver
    owner to postgres;

