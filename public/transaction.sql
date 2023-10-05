create table transaction
(
    transactionid  serial
        primary key,
    transtypeid    integer,
    subtranstypeid integer
        references subtranstype,
    trans_date     date,
    driverid       integer
        references driver,
    supplierid     integer
        references supplier,
    itemid         integer
        references item,
    quantity       numeric(10, 2),
    plate_no       varchar
);

alter table transaction
    owner to postgres;

