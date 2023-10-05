create view view_withdrawals
            (transactionid, transtypeid, subtranstypeid, trans_date, driverid, supplierid, itemid, quantity,
             plate_no) as
SELECT transaction.transactionid,
       transaction.transtypeid,
       transaction.subtranstypeid,
       transaction.trans_date,
       transaction.driverid,
       transaction.supplierid,
       transaction.itemid,
       transaction.quantity,
       transaction.plate_no
FROM transaction
WHERE transaction.subtranstypeid = 2;

alter table view_withdrawals
    owner to postgres;

