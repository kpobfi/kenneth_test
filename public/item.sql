create table item
(
    itemid    integer not null
        primary key,
    item_name varchar,
    uom       varchar
);

alter table item
    owner to postgres;

