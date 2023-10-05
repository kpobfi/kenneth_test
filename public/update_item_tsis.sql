create procedure update_item(IN item_id integer, IN item_name character varying, IN uom character varying)
    language plpgsql
as
$$
BEGIN
    UPDATE item
    SET item_name = $2,
        uom = $3
    WHERE item.itemid = $1;

    COMMIT;
END;
$$;

alter procedure update_item(integer, varchar, varchar) owner to postgres;

