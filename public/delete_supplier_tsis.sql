create procedure delete_supplier(IN supplier_id integer)
    language plpgsql
as
$$
BEGIN
  IF EXISTS (
      SELECT 1
      FROM transaction
      WHERE supplierID = supplier_id
  ) THEN
    RAISE EXCEPTION 'Cannot delete supplier with existing transactions.';
  ELSE
    DELETE FROM supplier
    WHERE supplierid = supplier_id;
  END IF;
END;
$$;

alter procedure delete_supplier(integer) owner to postgres;

