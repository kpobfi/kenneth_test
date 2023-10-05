create view view_supplier_koronadal(supplierid, firs_tname, last_name, address) as
SELECT supplier.supplierid,
       supplier.firs_tname,
       supplier.last_name,
       supplier.address
FROM supplier
WHERE supplier.address::text = 'KORONADAL'::text;

alter table view_supplier_koronadal
    owner to postgres;

