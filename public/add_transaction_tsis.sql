create procedure add_transaction(IN transtypeid integer, IN subtransaction_type_id integer, IN trans_date date, IN driver_id integer, IN supplier_id integer, IN item_id integer, IN quantity integer, IN plate_no character varying)
    language plpgsql
as
$$
BEGIN
    INSERT INTO transaction (transtypeid, subtranstypeID, trans_date, driverID, supplierID, itemId,quantity,plate_no)
    VALUES (
        $1,
        $2,
        $3,
        $4,
        $5,
        $6,
        $7,
        $8
    );
    COMMIT;
END;
$$;

alter procedure add_transaction(integer, integer, date, integer, integer, integer, integer, varchar) owner to postgres;

