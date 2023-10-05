create procedure update_outbound(IN outbound_id integer, IN outbound_weight numeric, IN user_id integer, IN transaction_id integer)
    language plpgsql
as
$$
BEGIN
    UPDATE outboundweight
    SET outbound_weight = $2,
        userid = $3,
        transactionid = $4
    WHERE outboundweight.outboundid = $1;

    COMMIT;
END;
$$;

alter procedure update_outbound(integer, numeric, integer, integer) owner to postgres;

