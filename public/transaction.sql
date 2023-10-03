create table transaction
(
    transactionid  serial
        primary key,
    quantity       numeric(10, 2),
    transtypid     integer
        references transactiontype,
    subtranstypeid integer
        references subtranstype,
    driverid       integer
        references driver,
    supplierid     integer
        references supplier,
    itemid         integer
        references item,
    plate_no       varchar,
    trans_date     date
);

alter table transaction
    owner to postgres;

