create view view_deliveries
            (transactionid, quantity, transtypid, subtranstypeid, driverid, supplierid, itemid, plate_no, trans_date) as
SELECT transaction.transactionid,
       transaction.quantity,
       transaction.transtypid,
       transaction.subtranstypeid,
       transaction.driverid,
       transaction.supplierid,
       transaction.itemid,
       transaction.plate_no,
       transaction.trans_date
FROM transaction
WHERE transaction.subtranstypeid = 1;

alter table view_deliveries
    owner to postgres;

