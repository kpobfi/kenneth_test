create table transaction
(
    transactionid  serial
        primary key,
    transtypeid    integer,
    subtranstypeid integer,
    trans_date     date,
    driverid       integer,
    supplierid     integer,
    itemid         integer,
    quantity       integer,
    plate_no       varchar
);

alter table transaction
    owner to postgres;

