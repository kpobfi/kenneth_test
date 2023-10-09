create procedure user_login(IN e_employee integer, IN passwords character varying)
    language plpgsql
as
$$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM users WHERE employeeId = e_employee AND password = passwords) THEN
    RAISE EXCEPTION 'Invalid username or password.';
  END IF;
END;
$$;

alter procedure user_login(integer, varchar) owner to postgres;

