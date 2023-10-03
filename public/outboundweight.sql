create table outboundweight
(
    outboundid      integer not null
        primary key,
    outbound_weight numeric(10, 2),
    userid          integer
        references users,
    transactionid   serial
        references transaction
);

alter table outboundweight
    owner to postgres;

