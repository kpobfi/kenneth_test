create procedure update_driver(IN driver_id integer, IN first_name character varying, IN last_name character varying)
    language plpgsql
as
$$
BEGIN
    UPDATE driver
    SET firstname = $2,
        lastname = $3
    WHERE driver.driverid = $1;

    COMMIT;
END;
$$;

alter procedure update_driver(integer, varchar, varchar) owner to postgres;

