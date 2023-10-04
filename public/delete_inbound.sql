create function delete_inbound(inbound_id integer) returns void
    language plpgsql
as
$$
BEGIN
    DELETE FROM inboundweight
    WHERE inboundid = inbound_id;
END;
$$;

alter function delete_inbound(integer) owner to postgres;

