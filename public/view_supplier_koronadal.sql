create view view_supplier_koronadal(supplierid, firs_tname, address, last_name) as
SELECT supplier.supplierid,
       supplier.firs_tname,
       supplier.address,
       supplier.last_name
FROM supplier
WHERE supplier.address::text = 'KORONADAL'::text;

alter table view_supplier_koronadal
    owner to postgres;

