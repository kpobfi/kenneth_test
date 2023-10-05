create procedure update_transaction(IN transaction_id integer, IN transaction_type_id integer, IN subtrans_type_id integer, IN transaction_date date, IN driver_id integer, IN supplier_id integer, IN item_id integer, IN quantity integer, IN plate_no character varying)
    language plpgsql
as
$$
BEGIN
    UPDATE transaction
    SET transtypeid = $2,
        subtranstypeid = $3,
        trans_date = $4,
        driverid = $5,
        supplierid = $6,
        itemid = $7,
        quantity = $8,
        plate_no = $9
    WHERE transaction.transactionid = $1;

    COMMIT;
END;
$$;

alter procedure update_transaction(integer, integer, integer, date, integer, integer, integer, integer, varchar) owner to postgres;

