create procedure delete_transaction(IN transaction_id integer)
    language plpgsql
as
$$
BEGIN

    IF EXISTS (
        SELECT transactionId
        FROM transaction
        WHERE transactionId = transaction_id
    ) THEN
        DELETE FROM inboundweight WHERE transactionid = transaction_id;
        DELETE FROM outboundweight WHERE transactionid = transaction_id;
        DELETE FROM transaction WHERE transactionid = transaction_id;
    ELSE
         RAISE EXCEPTION 'Transaction not found.';
    END IF;
    COMMIT;
END
$$;

alter procedure delete_transaction(integer) owner to postgres;

