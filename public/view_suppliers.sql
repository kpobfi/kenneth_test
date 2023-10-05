create view view_suppliers(supplierid, firs_tname, last_name, address) as
SELECT supplier.supplierid,
       supplier.firs_tname,
       supplier.last_name,
       supplier.address
FROM supplier;

alter table view_suppliers
    owner to postgres;

