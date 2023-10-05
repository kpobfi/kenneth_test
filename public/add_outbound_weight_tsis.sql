create procedure add_outbound_weight(IN outboundweight numeric, IN user_id integer, IN transid integer)
    language plpgsql
as
$$
BEGIN
  INSERT INTO outboundweight (outbound_weight, userid, transactionid)
  VALUES ($1,
          $2,
          $3);

  COMMIT;

END
$$;

alter procedure add_outbound_weight(numeric, integer, integer) owner to postgres;

