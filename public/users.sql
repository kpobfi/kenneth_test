create table users
(
    userid     serial
        primary key,
    fname      varchar,
    lname      varchar,
    employeeid integer,
    password   varchar,
    pincode    integer
);

alter table users
    owner to postgres;

