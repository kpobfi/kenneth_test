create view all_transaction
            (transactionid, company_name, subtranstype_name, firs_tname, last_name, item_name, quantity, uom, plate_no,
             inbound_weight, outbound_weight, trans_date, net_weight)
as
SELECT transaction.transactionid,
       t.company_name,
       s.subtranstype_name,
       supplier.firs_tname,
       supplier.last_name,
       item.item_name,
       transaction.quantity,
       item.uom,
       transaction.plate_no,
       i.inbound_weight,
       o.outbound_weight,
       transaction.trans_date,
       CASE
           WHEN s.subtranstype_name::text = 'DELIVERY'::text THEN i.inbound_weight - o.outbound_weight
           ELSE o.outbound_weight - i.inbound_weight
           END AS net_weight
FROM supplier
         LEFT JOIN transaction ON supplier.supplierid = transaction.supplierid
         JOIN item ON item.itemid = transaction.itemid
         FULL JOIN inboundweight i ON transaction.transactionid = i.transactionid
         FULL JOIN outboundweight o ON transaction.transactionid = o.transactionid
         JOIN transactiontype t ON t.transtypeid = transaction.transtypeid
         JOIN subtranstype s ON transaction.subtranstypeid = s.subtranstypeid;

alter table all_transaction
    owner to postgres;

