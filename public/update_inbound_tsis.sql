create procedure update_inbound(IN inbound_id integer, IN inbound_weight numeric, IN user_id integer, IN transaction_id integer)
    language plpgsql
as
$$
BEGIN
    UPDATE inboundweight
    SET inbound_weight = $2,
        userid = $3,
        transactionId = $4
    WHERE inboundweight.inboundid = $1;

    COMMIT;
END;
$$;

alter procedure update_inbound(integer, numeric, integer, integer) owner to postgres;

