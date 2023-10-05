create view all_delivery
            (transactionid, company_name, subtranstype_name, firs_tname, last_name, item_name, quantity, uom, plate_no,
             inbound_weight, outbound_weight, trans_date, net_weight)
as
SELECT transaction.transactionid,
       t.company_name,
       subtranstype.subtranstype_name,
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
           WHEN subtranstype.subtranstype_name::text = 'DELIVERY'::text THEN i.inbound_weight - o.outbound_weight
           ELSE o.outbound_weight - i.inbound_weight
           END AS net_weight
FROM subtranstype
         LEFT JOIN transaction ON subtranstype.subtranstypeid = transaction.subtranstypeid
         LEFT JOIN supplier ON supplier.supplierid = transaction.supplierid
         JOIN item ON item.itemid = transaction.itemid
         FULL JOIN inboundweight i ON transaction.transactionid = i.transactionid
         FULL JOIN outboundweight o ON transaction.transactionid = o.transactionid
         JOIN transactiontype t ON t.transtypeid = transaction.transtypeid
WHERE subtranstype.subtranstypeid = 1;

alter table all_delivery
    owner to postgres;

