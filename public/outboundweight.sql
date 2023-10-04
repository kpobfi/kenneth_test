create table outboundweight
(
    outboundid      serial
        primary key,
    outbound_weight numeric,
    userid          integer,
    transactionid   integer
);

alter table outboundweight
    owner to postgres;

