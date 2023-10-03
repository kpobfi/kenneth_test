create view view_withdrawals
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
WHERE transaction.subtranstypeid = 2;

alter table view_withdrawals
    owner to postgres;

