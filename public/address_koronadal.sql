create procedure address_koronadal()
    language plpgsql
as
$$
    BEGIN
    SELECT * FROM supplier
WHERE address='KORONADAL';

    commit ;
end;
$$;

alter procedure address_koronadal() owner to postgres;

