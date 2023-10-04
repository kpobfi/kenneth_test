create table inboundweight
(
    inboundid      serial
        primary key,
    inbound_weight numeric,
    userid         integer,
    transactionid  integer
);

alter table inboundweight
    owner to postgres;

