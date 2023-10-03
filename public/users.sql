create table users
(
    userid     integer not null
        primary key,
    fname      varchar,
    lname      varchar,
    employeeid integer,
    password   varchar,
    pincode    integer
);

alter table users
    owner to postgres;

