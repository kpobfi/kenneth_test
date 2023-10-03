create table inboundweight
(
    inboundid      integer not null
        primary key,
    inbound_weight numeric(10, 2),
    userid         integer
        references users,
    transactionid  serial
        references transaction
);

alter table inboundweight
    owner to postgres;

