create procedure update_supplier(IN supplierid integer, IN firstname character varying, IN lastname character varying, IN address character varying)
    language plpgsql
as
$$
BEGIN
    UPDATE supplier
    SET firs_tname = $2,
        last_name = $3,
        address = $4
    WHERE supplier.supplierid = $1;

    COMMIT;
END;
$$;

alter procedure update_supplier(integer, varchar, varchar, varchar) owner to postgres;

