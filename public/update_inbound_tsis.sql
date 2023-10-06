create procedure update_inbound(IN inbound_id integer, IN inbound_weight numeric)
    language plpgsql
as
$$
BEGIN
    UPDATE inboundweight
    SET inbound_weight = $2
    WHERE inboundweight.inboundid = $1;

    COMMIT;
END;
$$;

alter procedure update_inbound(integer, numeric) owner to postgres;

