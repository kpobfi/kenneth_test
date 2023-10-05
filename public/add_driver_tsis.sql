create procedure add_driver(IN first_name character varying, IN last_name character varying)
    language plpgsql
as
$$
BEGIN
    INSERT INTO driver (firstname, lastname)
    VALUES (
        $1,
        $2
    );

    COMMIT;
END;
$$;

alter procedure add_driver(varchar, varchar) owner to postgres;

