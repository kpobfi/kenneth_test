create procedure delete_transaction(IN transaction_id integer)
    language plpgsql
as
$$
BEGIN

    IF EXISTS (
        SELECT 1
        FROM transaction
        WHERE transactionId = transaction_id
    ) THEN
        RAISE EXCEPTION 'Cannot delete transaction.';
    ELSE
        DELETE FROM transaction
        WHERE transactionid = transaction_id;
    END IF;

END;
$$;

alter procedure delete_transaction(integer) owner to postgres;

