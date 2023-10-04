create table item
(
    itemid    serial
        primary key,
    item_name varchar,
    uom       varchar
);

alter table item
    owner to postgres;

