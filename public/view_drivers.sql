create view view_drivers(driverid, firstname, lastname) as
SELECT driver.driverid,
       driver.firstname,
       driver.lastname
FROM driver;

alter table view_drivers
    owner to postgres;

