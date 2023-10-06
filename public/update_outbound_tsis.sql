create procedure update_outbound(IN outbound_id integer, IN outbound_weight numeric)
    language plpgsql
as
$$
BEGIN
    UPDATE outboundweight
    SET outbound_weight = $2
    WHERE outboundweight.outboundid = $1;
    COMMIT;
END;
$$;

alter procedure update_outbound(integer, numeric) owner to postgres;

