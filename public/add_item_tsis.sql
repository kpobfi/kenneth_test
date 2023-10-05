create procedure add_item(IN itemname character varying, IN uom_name character varying)
    language plpgsql
as
$$
BEGIN
    INSERT INTO item (item_name, uom)
    VALUES (
        $1,
        $2
    );
    COMMIT;
END;
$$;

alter procedure add_item(varchar, varchar) owner to postgres;

