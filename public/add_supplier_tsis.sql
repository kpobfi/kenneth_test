create procedure add_supplier(IN firstname character varying, IN lastname character varying, IN address character varying)
    language plpgsql
as
$$
BEGIN
    INSERT INTO supplier (firs_tname, last_name, address)
    VALUES (
        $1,
        $2,
        $3
    );

    COMMIT;
END;
$$;

alter procedure add_supplier(varchar, varchar, varchar) owner to postgres;

