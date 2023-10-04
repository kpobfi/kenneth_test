create procedure delete_item(IN item_id integer)
    language plpgsql
as
$$
BEGIN

    IF EXISTS (
        SELECT 1
        FROM transaction
        WHERE itemId = item_id
    ) THEN
        RAISE EXCEPTION 'Cannot delete item that is currently in use.';
    ELSE
        DELETE FROM item
        WHERE itemid = item_id;
    END IF;

END;
$$;

alter procedure delete_item(integer) owner to postgres;

