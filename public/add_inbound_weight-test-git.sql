create procedure add_inbound_weight(IN inboundweight numeric, IN user_id integer, IN transid integer)
    language plpgsql
as
$$
BEGIN
  INSERT INTO inboundweight (inbound_weight, userid, transactionid)
  VALUES ($1,
          $2,
          $3);
  COMMIT;
END
$$;

alter procedure add_inbound_weight(numeric, integer, integer) owner to postgres;

