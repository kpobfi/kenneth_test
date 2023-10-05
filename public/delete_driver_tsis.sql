create procedure delete_driver(IN driver_id integer)
    language plpgsql
as
$$
BEGIN
  IF EXISTS (
      SELECT 1
      FROM transaction
      WHERE driverID = driver_id
  ) THEN
    RAISE EXCEPTION 'Cannot delete driver with existing transactions.';
  ELSE
    DELETE FROM driver
    WHERE driverID = driver_id;
  END IF;
END;
$$;

alter procedure delete_driver(integer) owner to postgres;

