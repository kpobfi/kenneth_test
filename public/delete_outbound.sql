create function delete_outbound(outbound_id integer) returns void
    language plpgsql
as
$$
BEGIN
    DELETE FROM outboundweight
    WHERE outboundid = outbound_id;
END;
$$;

alter function delete_outbound(integer) owner to postgres;

